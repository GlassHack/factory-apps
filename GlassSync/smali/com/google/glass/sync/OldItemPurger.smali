.class public Lcom/google/glass/sync/OldItemPurger;
.super Lcom/google/glass/util/RateLimitedRunnable;
.source "OldItemPurger.java"


# static fields
.field static final MAX_SYNCED_ITEM_AGE:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PREF_LAST_OLD_ITEM_PURGE_TIME:Ljava/lang/String; = "purge_time"

.field private static final PURGE_OLD_ITEMS_INTERVAL:J

.field private static final TIMELINE_PURGE_PREFS:Ljava/lang/String; = "timeline_purge_prefs"


# instance fields
.field private final attachmentManager:Lcom/google/glass/sync/AttachmentManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/OldItemPurger;->PURGE_OLD_ITEMS_INTERVAL:J

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/OldItemPurger;->MAX_SYNCED_ITEM_AGE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "attachmentManager"    # Lcom/google/glass/sync/AttachmentManager;
    .param p4, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 41
    const-string v0, "timeline_purge_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/RateLimitedRunnable;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 32
    const-string v0, "glass_sync"

    .line 33
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 42
    iput-object p2, p0, Lcom/google/glass/sync/OldItemPurger;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 43
    iput-object p3, p0, Lcom/google/glass/sync/OldItemPurger;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    .line 44
    iput-object p4, p0, Lcom/google/glass/sync/OldItemPurger;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 45
    return-void
.end method

.method private cleanupAttachmentIdMappings(J)V
    .locals 6
    .param p1, "deleteOlderThan"    # J

    .prologue
    const/4 v5, 0x0

    .line 64
    const/4 v0, 0x0

    .line 67
    .local v0, "connected":Z
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v2}, Lcom/google/glass/sync/AttachmentManager;->connect()Z

    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v2, p1, p2}, Lcom/google/glass/sync/AttachmentManager;->deleteMappingsOlderThan(J)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v2}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted during close of AttachmentManager."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 73
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted during attempt to connect to attachment manager -- returning early."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :try_start_3
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v2}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 80
    :catch_2
    move-exception v1

    .line 81
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted during close of AttachmentManager."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v1

    .line 76
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Couldn\'t delete old mappings from AttachmentManager!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :try_start_5
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v2}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 80
    :catch_4
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted during close of AttachmentManager."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    .line 79
    :try_start_6
    iget-object v3, p0, Lcom/google/glass/sync/OldItemPurger;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v3}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 82
    :goto_1
    throw v2

    .line 80
    :catch_5
    move-exception v1

    .line 81
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Interrupted during close of AttachmentManager."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public execute(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 49
    new-instance v3, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v3}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v2

    .line 52
    .local v2, "stopwatch":Lcom/google/glass/time/Stopwatch;
    sget-wide v3, Lcom/google/glass/sync/OldItemPurger;->MAX_SYNCED_ITEM_AGE:J

    sub-long v0, p1, v3

    .line 53
    .local v0, "deleteOlderThan":J
    iget-object v3, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Deleting expired and synced items older than %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v3, p0, Lcom/google/glass/sync/OldItemPurger;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v3, v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteExpiredAndSyncedItemsOlderThan(J)V

    .line 56
    iget-object v3, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Deleting expired attachment ID mappings older than %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/google/glass/sync/OldItemPurger;->cleanupAttachmentIdMappings(J)V

    .line 59
    iget-object v3, p0, Lcom/google/glass/sync/OldItemPurger;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->OLD_ITEM_PURGER_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "l"

    .line 60
    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    .line 59
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected getInterval()J
    .locals 2

    .prologue
    .line 93
    sget-wide v0, Lcom/google/glass/sync/OldItemPurger;->PURGE_OLD_ITEMS_INTERVAL:J

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/sync/OldItemPurger;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTimestampPref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "purge_time"

    return-object v0
.end method
