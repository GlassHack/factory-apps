.class public Lcom/google/glass/timeline/TimelineNotificationService;
.super Landroid/app/IntentService;
.source "TimelineNotificationService.java"


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
    .locals 12
    .param p1, "nextNotifyTime"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 50
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/glass/timeline/TimelineNotificationService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "NOTIFY_TIME"

    .line 51
    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x8000000

    invoke-static {p0, v10, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 57
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/google/glass/timeline/TimelineNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 60
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    sget-object v3, Lcom/google/glass/timeline/TimelineNotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Schedule notification checking in %ss"

    new-array v5, v11, [Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, p1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    .line 62
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0, v11, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

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
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x1

    .line 70
    const-string v8, "NOTIFY_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 71
    .local v5, "minDeliveryTime":J
    sget-object v8, Lcom/google/glass/timeline/TimelineNotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Running with minDeliveryTime: %s"

    new-array v10, v13, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 75
    .local v4, "itemToNotify":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v7, 0x0

    .line 77
    .local v7, "nextItemToCheck":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineNotificationService;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v8, v5, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryItemsByDeliveryTime(J)Landroid/database/Cursor;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    .line 80
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineNotificationService;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v8, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 81
    .local v0, "current":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v2

    .line 83
    .local v2, "deliverTime":J
    invoke-static {v2, v3}, Lcom/google/glass/timeline/TimelineNotificationHelper;->isFuture(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 84
    move-object v4, v0

    goto :goto_0

    .line 86
    :cond_1
    move-object v7, v0

    goto :goto_0

    .line 92
    .end local v0    # "current":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "deliverTime":J
    :cond_2
    if-eqz v1, :cond_3

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_3
    if-eqz v4, :cond_4

    .line 98
    new-instance v8, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v8}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    invoke-virtual {v8, p0, v4, v13}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 100
    :cond_4
    if-eqz v7, :cond_5

    .line 101
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/google/glass/timeline/TimelineNotificationService;->scheduleNext(J)V

    .line 103
    :cond_5
    return-void

    .line 92
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_6

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v8
.end method
