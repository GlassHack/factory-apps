.class public Lcom/google/glass/timeline/TimelineNotificationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final EXTRA_NOTIFY_TIME:Ljava/lang/String; = "NOTIFY_TIME"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/timeline/TimelineNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationService;->TAG:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private scheduleNext(J)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/timeline/TimelineNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "NOTIFY_TIME"

    .line 51
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 55
    const/high16 v1, 0x8000000

    invoke-static {p0, v9, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 57
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    sget-object v2, Lcom/google/glass/timeline/TimelineNotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Schedule notification checking in %ss"

    new-array v4, v10, [Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, p1, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    .line 62
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0, v10, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 42
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationService;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 43
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationService;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 44
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 70
    const-string v0, "NOTIFY_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 71
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Running with minDeliveryTime: %s"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationService;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryItemsByDeliveryTime(J)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 78
    if-eqz v3, :cond_1

    move-object v0, v1

    move-object v2, v1

    .line 79
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 80
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationService;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v1, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_7

    .line 82
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    .line 83
    invoke-static {v4, v5}, Lcom/google/glass/timeline/TimelineNotificationHelper;->isFuture(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    move-object v2, v1

    .line 89
    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v1, v2

    .line 86
    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v2, v1

    .line 92
    :cond_2
    if-eqz v3, :cond_3

    .line 93
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_3
    if-eqz v2, :cond_4

    .line 98
    new-instance v1, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    invoke-virtual {v1, p0, v2, v8}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 100
    :cond_4
    if-eqz v0, :cond_5

    .line 101
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineNotificationService;->scheduleNext(J)V

    .line 103
    :cond_5
    return-void

    .line 92
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_6

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 92
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method
