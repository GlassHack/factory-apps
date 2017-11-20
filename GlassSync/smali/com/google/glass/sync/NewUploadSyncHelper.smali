.class public Lcom/google/glass/sync/NewUploadSyncHelper;
.super Ljava/lang/Object;
.source "NewUploadSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;
    }
.end annotation


# static fields
.field public static final UPLOAD_DEADLINE_MINS:J = 0x5L

.field public static final UPLOAD_TASK_KEEPALIVE_MINS:J = 0x1L


# instance fields
.field private final aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

.field private final attachmentManager:Lcom/google/glass/sync/AttachmentManager;

.field private final attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

.field private final context:Landroid/content/Context;

.field private executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

.field private final haltingSync:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/AttachmentManager;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "syncReporter"    # Lcom/google/glass/sync/SyncStatusReporter;
    .param p4, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p5, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p6, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p7, "timelineHelper"    # Lcom/google/glass/timeline/TimelineHelper;
    .param p8, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p9, "attachmentManager"    # Lcom/google/glass/sync/AttachmentManager;

    .prologue
    .line 169
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v12}, Lcom/google/glass/sync/NewUploadSyncHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/glass/timeline/AttachmentUploader;)V

    .line 172
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/glass/timeline/AttachmentUploader;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "syncReporter"    # Lcom/google/glass/sync/SyncStatusReporter;
    .param p4, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p5, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p6, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p7, "timelineHelper"    # Lcom/google/glass/timeline/TimelineHelper;
    .param p8, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p9, "attachmentManager"    # Lcom/google/glass/sync/AttachmentManager;
    .param p10, "executor"    # Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;
    .param p11, "aggregator"    # Lcom/google/glass/sync/DeviceStateAggregator;
    .param p12, "attachmentUploader"    # Lcom/google/glass/timeline/AttachmentUploader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v1, "glass_sync"

    .line 54
    invoke-static {p0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 136
    iput-object p1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->context:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 139
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 140
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 141
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    .line 143
    if-nez p10, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/google/glass/sync/NewUploadSyncHelper;->makeNewExecutor()V

    .line 149
    :goto_0
    if-nez p11, :cond_1

    .line 150
    new-instance v1, Lcom/google/glass/sync/DeviceStateAggregator;

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p8

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sync/DeviceStateAggregator;-><init>(Landroid/content/Context;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    .line 156
    :goto_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->haltingSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    return-void

    .line 146
    :cond_0
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    goto :goto_0

    .line 153
    :cond_1
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/NewUploadSyncHelper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/NewUploadSyncHelper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/NewUploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/NewUploadSyncHelper;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "x2"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/NewUploadSyncHelper;->wasModifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    return v0
.end method

.method private makeNewExecutor()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 472
    new-instance v0, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;-><init>(Lcom/google/glass/sync/NewUploadSyncHelper;Lcom/google/glass/sync/NewUploadSyncHelper;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    .line 474
    return-void
.end method

.method private removeElementsBasedOnOverridePolicy(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v5, 0x0

    .line 273
    iget-object v4, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-virtual {v4}, Lcom/google/glass/sync/DeviceStateAggregator;->safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v2

    .line 276
    .local v2, "overridePolicy":Lcom/google/glass/sync/OverridePolicy;
    sget-object v4, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    if-ne v2, v4, :cond_3

    .line 277
    const/4 v3, 0x0

    .line 278
    .local v3, "skippedCount":I
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v6, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v0, v6, v4

    .line 282
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 283
    add-int/lit8 v3, v3, 0x1

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 281
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_2
    if-lez v3, :cond_3

    .line 291
    iget-object v4, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Skipping videos because photos only sync was manually requested [count=%d]."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 291
    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .end local v3    # "skippedCount":I
    :cond_3
    return-object p1
.end method

.method private updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2
    .param p1, "syncedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    new-instance v1, Lcom/google/glass/sync/NewUploadSyncHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sync/NewUploadSyncHelper$1;-><init>(Lcom/google/glass/sync/NewUploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 433
    return-void
.end method

.method private wasModifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 7
    .param p1, "syncedItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "actualItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 441
    iget-object v6, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v3

    .line 442
    .local v3, "syncAttachmentCount":I
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v0

    .line 444
    .local v0, "actualAttachmentCount":I
    if-eq v3, v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v4

    .line 452
    :cond_1
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 453
    .local v2, "filteredSyncedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 454
    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 455
    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 456
    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 457
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;-><init>()V

    invoke-virtual {v2, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setFailedDeliveryInfo(Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 459
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 460
    .local v1, "filteredActualItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v6, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 461
    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 462
    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 463
    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v6, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 464
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setFailedDeliveryInfo(Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 467
    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public cancelOpportunisticUploads()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    invoke-virtual {v0}, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->cancelOpportunisticTasks()V

    .line 261
    return-void
.end method

.method onTaskCompleted(Lcom/google/glass/sync/UploadTask;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "task"    # Lcom/google/glass/sync/UploadTask;
    .param p2, "exception"    # Ljava/lang/Throwable;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 306
    if-eqz p2, :cond_1

    .line 307
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "UploadTask threw an exception! Skipping upload for this item. BUG! [taskId=%s, timelineId=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v8

    .line 307
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getResult()Lcom/google/glass/sync/UploadResult;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/UploadResult;

    .line 314
    .local v0, "result":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-virtual {v0}, Lcom/google/glass/sync/UploadResult;->hasPrdErrorCodes()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "ProtoRequestDispatcher had problems [taskId=%s, timelineId=%s, prdErrorCodes=(%s)]."

    new-array v3, v3, [Ljava/lang/Object;

    .line 316
    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 317
    invoke-virtual {v0}, Lcom/google/glass/sync/UploadResult;->getPrdErrorCodesAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 315
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_2
    iget-object v1, v0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Task requested that we update the timeline item [taskId=%s, timelineId=%s]."

    new-array v3, v8, [Ljava/lang/Object;

    .line 324
    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 323
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object v1, v0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0, v1}, Lcom/google/glass/sync/NewUploadSyncHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 328
    :cond_3
    iget-boolean v1, v0, Lcom/google/glass/sync/UploadResult;->shouldHaltSync:Z

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Task requested a sync halt [taskId=%s, timelineId=%s]."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    .line 331
    invoke-virtual {p1}, Lcom/google/glass/sync/UploadTask;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 330
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->haltingSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0
.end method

.method public sync(Lcom/google/glass/sync/SyncStats;)V
    .locals 14
    .param p1, "syncStats"    # Lcom/google/glass/sync/SyncStats;

    .prologue
    const/4 v13, 0x0

    .line 183
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Upload sync starting."

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, "oldThreadName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "NewUploadSyncHelper"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->haltingSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-virtual {v1}, Lcom/google/glass/sync/DeviceStateAggregator;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v6

    .line 192
    .local v6, "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 193
    invoke-virtual {v1, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getUnsyncedItems(Ljava/util/List;)Ljava/util/Queue;

    move-result-object v8

    .line 194
    .local v8, "itemsToUpload":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-direct {p0, v8}, Lcom/google/glass/sync/NewUploadSyncHelper;->removeElementsBasedOnOverridePolicy(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v8

    .line 196
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No timeline items to upload."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-virtual {v1}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfTotalSyncComplete()V

    .line 245
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v1}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/sync/NewUploadSyncHelper;->makeNewExecutor()V

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Upload sync ended."

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    .end local v6    # "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "itemsToUpload":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :goto_1
    return-void

    .line 246
    .restart local v6    # "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "itemsToUpload":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :catch_0
    move-exception v7

    .line 247
    .local v7, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Close of attachmentmanager connection interrupted while shutting down."

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Uploading timeline items [count=%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v1}, Lcom/google/glass/sync/AttachmentManager;->connect()Z

    .line 204
    :goto_2
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 206
    .local v3, "itemToUpload":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v5, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 208
    .local v5, "uploader":Lcom/google/glass/timeline/AttachmentUploader;
    if-nez v5, :cond_1

    .line 209
    new-instance v5, Lcom/google/glass/timeline/AttachmentUploader;

    .end local v5    # "uploader":Lcom/google/glass/timeline/AttachmentUploader;
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->context:Landroid/content/Context;

    .line 210
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v5, v1, v2, v4}, Lcom/google/glass/timeline/AttachmentUploader;-><init>(Landroid/content/Context;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 213
    .restart local v5    # "uploader":Lcom/google/glass/timeline/AttachmentUploader;
    :cond_1
    new-instance v0, Lcom/google/glass/sync/TimelineUploadTask;

    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v2, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    iget-object v4, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sync/TimelineUploadTask;-><init>(Lcom/google/glass/logging/FormattingLogger;Lcom/google/glass/sync/DeviceStateAggregator;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/content/Context;Lcom/google/glass/timeline/AttachmentUploader;)V

    .line 216
    .local v0, "task":Lcom/google/glass/sync/UploadTask;
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    invoke-virtual {v1, v0}, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 234
    .end local v0    # "task":Lcom/google/glass/sync/UploadTask;
    .end local v3    # "itemToUpload":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v5    # "uploader":Lcom/google/glass/timeline/AttachmentUploader;
    .end local v6    # "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "itemsToUpload":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :catch_1
    move-exception v7

    .line 236
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received an InterruptedException. Shutting down executor and terminating sync."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->haltingSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    invoke-virtual {v1}, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->shutdownNow()Ljava/util/List;

    .line 240
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "executor#shutdownNow() call returned."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-virtual {v1}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfTotalSyncComplete()V

    .line 245
    :try_start_4
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v1}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 252
    :goto_3
    invoke-direct {p0}, Lcom/google/glass/sync/NewUploadSyncHelper;->makeNewExecutor()V

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Upload sync ended."

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 221
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "itemsToUpload":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    invoke-virtual {v1}, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->shutdown()V

    .line 223
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    const-wide/16 v11, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 224
    invoke-virtual {v1, v11, v12, v2}, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 225
    .local v10, "terminatedBeforeDeadline":Z
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "executor#awaitTermination() call returned."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    if-nez v10, :cond_3

    .line 229
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Executor did not terminate before our deadline. Forcing shutdown."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->haltingSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->executor:Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;

    invoke-virtual {v1}, Lcom/google/glass/sync/NewUploadSyncHelper$UploadTaskExecutor;->shutdownNow()Ljava/util/List;

    .line 232
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "executor#shutdownNow() call returned."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-virtual {v1}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfTotalSyncComplete()V

    .line 245
    :try_start_6
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v1}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 252
    :goto_4
    invoke-direct {p0}, Lcom/google/glass/sync/NewUploadSyncHelper;->makeNewExecutor()V

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Upload sync ended."

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 246
    :catch_2
    move-exception v7

    .line 247
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Close of attachmentmanager connection interrupted while shutting down."

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 246
    .end local v6    # "allowedSyncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "itemsToUpload":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .end local v10    # "terminatedBeforeDeadline":Z
    :catch_3
    move-exception v7

    .line 247
    iget-object v1, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Close of attachmentmanager connection interrupted while shutting down."

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 242
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->aggregator:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-virtual {v2}, Lcom/google/glass/sync/DeviceStateAggregator;->notifyOfTotalSyncComplete()V

    .line 245
    :try_start_7
    iget-object v2, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->attachmentManager:Lcom/google/glass/sync/AttachmentManager;

    invoke-virtual {v2}, Lcom/google/glass/sync/AttachmentManager;->close()Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 252
    :goto_5
    invoke-direct {p0}, Lcom/google/glass/sync/NewUploadSyncHelper;->makeNewExecutor()V

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Upload sync ended."

    new-array v11, v13, [Ljava/lang/Object;

    invoke-interface {v2, v4, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 246
    :catch_4
    move-exception v7

    .line 247
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/glass/sync/NewUploadSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Close of attachmentmanager connection interrupted while shutting down."

    new-array v11, v13, [Ljava/lang/Object;

    invoke-interface {v2, v4, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
