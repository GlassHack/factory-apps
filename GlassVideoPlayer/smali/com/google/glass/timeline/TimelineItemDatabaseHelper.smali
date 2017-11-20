.class public Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IGNORE_INDEX:Ljava/lang/String; = "+"

.field static final MAX_DISPLAY_ITEMS:I = 0xc8

.field private static final MAX_ITEMS_PER_SOURCE_QUERY:I = 0x32

.field private static final POST_DELETE_INTENT_TIMELINE_ITEM_EXTRA:Ljava/lang/String; = "post_delete_intent_timeline_item_extra"

.field private static final UPDATE_LOCK:Ljava/lang/Object;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final ctx:Landroid/content/Context;

.field private final mediaStoreFileManager:Lcom/google/glass/timeline/MediaStoreFileManager;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/time/Clock;Landroid/content/ContentResolver;Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;Lcom/google/glass/timeline/MediaStoreFileManager;Lcom/google/glass/timeline/BundleCoverHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/companion/RemoteCompanionProxy;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v0, "null clock"

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/time/Clock;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clock:Lcom/google/glass/time/Clock;

    .line 117
    const-string v0, "null contentResolver"

    invoke-static {p2, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 118
    const-string v0, "null serializationHelper"

    invoke-static {p3, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 119
    const-string v0, "null mediaStoreFileManager"

    invoke-static {p4, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/MediaStoreFileManager;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->mediaStoreFileManager:Lcom/google/glass/timeline/MediaStoreFileManager;

    .line 120
    const-string v0, "null bundleCoverHelper"

    invoke-static {p5, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/BundleCoverHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    .line 121
    const-string v0, "null userEventHelper"

    invoke-static {p6, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 122
    const-string v0, "null batteryHelper"

    invoke-static {p7, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/BatteryHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 123
    const-string v0, "null wifiHelper"

    invoke-static {p8, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/WifiHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 124
    const-string v0, "null remoteCompanionProxy"

    invoke-static {p9, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 125
    const-string v0, "null context"

    invoke-static {p10, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    return-object v0
.end method

.method private static getSourceEqualityExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1499
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    const-string v0, "source LIKE \'device:%\'"

    .line 1502
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "source=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maybeTriggerSync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3

    .prologue
    .line 706
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->shouldSyncOpportunisticItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    const-string v1, "com.google.glass.sync.timeline"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    goto :goto_0
.end method

.method private static startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    .locals 0

    .prologue
    .line 1474
    if-eqz p0, :cond_0

    .line 1475
    invoke-interface {p0}, Lcom/google/glass/util/SuppressableNotifier;->startSuppressNotifyChange()V

    .line 1477
    :cond_0
    return-void
.end method

.method private static stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    .locals 0

    .prologue
    .line 1488
    if-eqz p0, :cond_0

    .line 1489
    invoke-interface {p0}, Lcom/google/glass/util/SuppressableNotifier;->stopSuppressNotifyChange()V

    .line 1491
    :cond_0
    return-void
.end method

.method private updateBundle(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1357
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot bundle items with empty bundle ID."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    :goto_0
    return-void

    .line 1364
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Updating bundle: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    sget-object v7, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 1371
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1372
    const-string v0, "+is_deleted==0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    const-string v0, "bundle_id==?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1378
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1382
    const-string v5, "display_time DESC"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1388
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1387
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1390
    if-nez v1, :cond_2

    .line 1392
    :try_start_2
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Found no items in bundle: %s; cannot update."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1404
    if-eqz v1, :cond_1

    .line 1405
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 1396
    :cond_2
    :try_start_4
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundleFromCursor(Landroid/database/Cursor;Ljava/lang/String;ZLcom/google/common/base/v;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1404
    if-eqz v1, :cond_3

    .line 1405
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1408
    :cond_3
    monitor-exit v7

    goto :goto_0

    .line 1404
    :catchall_1
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_4

    .line 1405
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1404
    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method private updateEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 6

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "timelineId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 259
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 257
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    .line 264
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ContentValues;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 263
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 266
    :cond_0
    return-void
.end method

.method static validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1

    .prologue
    .line 1460
    const-string v0, "null item"

    invoke-static {p0, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 1462
    return-void

    .line 1461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAttachmentToTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7

    .prologue
    .line 665
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 668
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    .line 670
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    .line 685
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 686
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Did not update item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with attachment, because it no longer exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    const/4 v0, 0x0

    .line 695
    :cond_1
    return-object v0
.end method

.method public atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V
    .locals 2

    .prologue
    .line 495
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_0
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->execute()V

    .line 497
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 505
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$5;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public bulkInsertTimelineItem(Ljava/util/List;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 278
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    return v2

    .line 283
    :cond_0
    new-instance v3, Lcom/google/android/a/a;

    invoke-direct {v3}, Lcom/google/android/a/a;-><init>()V

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Landroid/content/ContentValues;

    .line 286
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    move v1, v2

    .line 287
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 288
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 289
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 290
    sget-object v6, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Preparing to insert timeline item with ID %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v6, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v6

    aput-object v6, v4, v1

    .line 292
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v6, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.google.glass.sync.timeline"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v6

    .line 304
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SuppressableNotifier;

    .line 305
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 309
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    .line 311
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 310
    invoke-virtual {v4, v7, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 316
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 321
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 322
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    throw v1

    .line 321
    :cond_4
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 322
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0
.end method

.method public deleteAll()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1342
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1343
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteExpiredAndSyncedItemsOlderThan(J)V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 785
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 786
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const-string v4, "sync_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string v4, "modified_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v4, "expiration_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v4, "expiration_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<CAST(? AS INT)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 802
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    .line 804
    sget-object v9, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.google.glass.sync.timeline"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v10

    .line 810
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/glass/util/SuppressableNotifier;

    move-object v7, v0

    .line 811
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 816
    :try_start_1
    new-instance v11, Lcom/google/android/a/a;

    invoke-direct {v11}, Lcom/google/android/a/a;-><init>()V

    .line 819
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v12, "bundle_id"

    aput-object v12, v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v2

    .line 821
    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 822
    const-string v1, "bundle_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 823
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 824
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 825
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 826
    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v1

    .line 843
    :goto_1
    if-eqz v2, :cond_1

    .line 844
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 847
    :cond_1
    :try_start_4
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 848
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 851
    :catchall_1
    move-exception v1

    monitor-exit v9

    throw v1

    .line 831
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 834
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 835
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 843
    :cond_3
    if-eqz v2, :cond_4

    .line 844
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 847
    :cond_4
    :try_start_7
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 848
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    .line 851
    monitor-exit v9

    .line 852
    return-void

    .line 847
    :catchall_2
    move-exception v1

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 848
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    throw v1

    .line 847
    :catchall_3
    move-exception v1

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 848
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 842
    :catchall_4
    move-exception v1

    move-object v2, v8

    goto :goto_1
.end method

.method public deletePostDeleteIntent(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Delete post delete intent, timelineId:%sm "

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 191
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "timeline_id=?"

    new-array v1, v1, [Ljava/lang/String;

    .line 193
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 191
    invoke-virtual {v0, v3, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 190
    goto :goto_0
.end method

.method public deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 352
    return-void
.end method

.method public deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 362
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 365
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Item %s is already deleted."

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :goto_0
    return-void

    .line 370
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deleting item: %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 374
    invoke-virtual {v0, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 375
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 376
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 377
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 378
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 379
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 380
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 381
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 384
    new-instance v2, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 393
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 396
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 397
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 398
    invoke-static {p1, v5}, Lcom/google/glass/timeline/AttachmentHelper;->shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v6

    .line 400
    sget-object v7, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Deleting attached file: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v6, v9, v1

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_3

    .line 403
    sget-object v7, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to delete file: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v6, v9, v1

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_1
    :goto_2
    invoke-static {v5}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 405
    :cond_3
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->mediaStoreFileManager:Lcom/google/glass/timeline/MediaStoreFileManager;

    invoke-virtual {v6, v5}, Lcom/google/glass/timeline/MediaStoreFileManager;->removeFileFromMediaStore(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    goto :goto_2

    .line 419
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryPostDeleteIntent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 422
    const-string v2, "post_delete_intent_timeline_item_extra"

    .line 423
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 422
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 424
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 427
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deletePostDeleteIntent(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 466
    return-void
.end method

.method public deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 475
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public deleteTimelineItemAsync(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 435
    return-void
.end method

.method public deleteTimelineItemAsync(Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 2

    .prologue
    .line 443
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 444
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 459
    return-void
.end method

.method getBundleCover(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1175
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1179
    const-string v0, "is_deleted==0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    const-string v0, "bundle_id==?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1187
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1191
    const-string v5, "display_time DESC"

    .line 1196
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1196
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1199
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 1200
    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 1201
    const-string v2, "bundle_cover_status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1202
    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    .line 1208
    :cond_0
    if-eqz v1, :cond_1

    .line 1209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 1212
    :cond_2
    :goto_0
    return-object v0

    .line 1205
    :cond_3
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1208
    if-eqz v1, :cond_2

    .line 1209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1208
    :cond_4
    if-eqz v1, :cond_5

    .line 1209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    .line 1212
    goto :goto_0

    .line 1208
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_6

    .line 1209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1208
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public getSyncedItemsWithAttachmentsCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1133
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1137
    const-string v0, "sync_status=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    const-string v0, "sync_protocol=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v0, "has_media_attachment=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 1146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "creation_time ASC"

    move-object v4, v2

    .line 1144
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineItemCount()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1322
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1327
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1329
    if-eqz v1, :cond_0

    .line 1330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 1329
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 1330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1329
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public getUnsyncedItems(Ljava/util/List;)Ljava/util/Queue;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 1052
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1054
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v6

    .line 1056
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No sync protocol(s) specified."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 1102
    :goto_0
    return-object v0

    .line 1061
    :cond_1
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Getting unsynced items with sync protocols: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ", "

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1068
    const-string v1, "sync_status=0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    const-string v1, " AND "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v1, "sync_protocol IN ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1072
    if-lez v0, :cond_2

    .line 1073
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1071
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1077
    :cond_3
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1082
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "creation_time ASC"

    .line 1080
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1087
    :goto_2
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1088
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 1089
    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1090
    sget-object v2, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Prioritizing %s due to shareCount=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    const/4 v2, 0x0

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1097
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 1098
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1093
    :cond_5
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1097
    :cond_6
    if-eqz v1, :cond_7

    .line 1098
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    .line 1102
    goto/16 :goto_0

    .line 1097
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method public getUnsyncedItemsWithAttachmentsCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1155
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    const-string v0, "sync_status!=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string v0, "sync_protocol=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    const-string v0, "has_media_attachment=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 1168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "creation_time ASC"

    move-object v4, v2

    .line 1166
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertPostDeleteIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 137
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Insert post delete intent:%s, timelineId:%s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    :try_start_0
    const-string v1, "timeline_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "intent_blob"

    .line 142
    invoke-static {p2}, Lcom/google/glass/timeline/IntentSerializer;->toBytes(Landroid/content/Intent;)[B

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "IOException when serializing intent:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 207
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 208
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 214
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.google.glass.sync.timeline"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SuppressableNotifier;

    .line 218
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 222
    invoke-virtual {v4, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v4

    .line 221
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 223
    sget-object v4, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Inserted timeline item [id=%s, action=%s, itemType=%s]."

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    if-nez p3, :cond_3

    const/4 v1, 0x0

    :goto_0
    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object p2, v6, v1

    .line 223
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    if-eqz p3, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineContract$PendingAction;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 228
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 227
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 235
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 240
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 243
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 244
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->maybeTriggerSync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p2}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 249
    return-object v3

    .line 224
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 240
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
.end method

.method public insertTimelineItemAsync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 337
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method public queryAllItemsBySource(Ljava/lang/String;IJ)Ljava/util/List;
    .locals 3

    .prologue
    .line 992
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 993
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryAllItemsBySourceAsCursor(Ljava/lang/String;IJ)Landroid/database/Cursor;

    move-result-object v1

    .line 996
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 997
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 998
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 999
    if-eqz v2, :cond_0

    .line 1000
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 1007
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1006
    :cond_2
    if-eqz v1, :cond_3

    .line 1007
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1010
    :cond_3
    return-object v0
.end method

.method public queryAllItemsBySourceAsCursor(Ljava/lang/String;IJ)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x32

    .line 1018
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1019
    if-le p2, v0, :cond_0

    .line 1020
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Requested %d items but max allowed is %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1021
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1020
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move p2, v0

    .line 1025
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    const-string v0, "+is_deleted=0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    const-string v0, "source=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v0, "bundle_cover_status!=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    const-string v0, " AND ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v0, "modified_time"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1036
    const-string v0, "creation_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1038
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryBundleCover(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1278
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1280
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1282
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1288
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1292
    :cond_0
    if-eqz v1, :cond_1

    .line 1293
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_1
    return-object v6

    .line 1292
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 1293
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1292
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1302
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1307
    const-string v0, "+is_deleted=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    const-string v0, "bundle_id=\"\'"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getSourceEqualityExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    const-string v0, "is_bundle_cover="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryBundleMembers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1242
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1244
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1249
    const-string v0, "creation_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1256
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_0

    .line 1260
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 1267
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1266
    :cond_2
    if-eqz v1, :cond_3

    .line 1267
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1270
    :cond_3
    return-object v7

    .line 1266
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public queryBundleSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1220
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1222
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1224
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1228
    if-eqz v1, :cond_1

    .line 1229
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1232
    if-eqz v1, :cond_0

    .line 1233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1236
    :cond_0
    :goto_0
    return v0

    .line 1232
    :cond_1
    if-eqz v1, :cond_2

    .line 1233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v6

    .line 1236
    goto :goto_0

    .line 1232
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_3

    .line 1233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1232
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public queryItemsByDeliveryTime(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 1109
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1110
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "delivery_time>=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1113
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "delivery_time ASC"

    .line 1110
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryPinnedItems()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1121
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1122
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "pin_time<>-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryPostDeleteIntent(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 156
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Query post delete intent, timelineId:%s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 159
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "timeline_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    .line 159
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 163
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 164
    if-eqz v1, :cond_2

    .line 166
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "intent_blob"

    .line 168
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 167
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 170
    :try_start_1
    invoke-static {v0}, Lcom/google/glass/timeline/IntentSerializer;->fromBytes([B)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    sget-object v3, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "IOException when serializing intent:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v0, v5

    .line 158
    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    return-object v2
.end method

.method public queryTimelineItem(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 888
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 889
    if-nez p1, :cond_1

    move-object v0, v6

    .line 907
    :cond_0
    :goto_0
    return-object v0

    .line 894
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 896
    if-nez v1, :cond_3

    .line 906
    if-eqz v1, :cond_2

    .line 907
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    .line 900
    :cond_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    .line 906
    if-eqz v1, :cond_4

    .line 907
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 904
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 906
    if-eqz v1, :cond_0

    .line 907
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 906
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_6

    .line 907
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 906
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 860
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 861
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 873
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 877
    :cond_0
    if-eqz v1, :cond_1

    .line 878
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 881
    :cond_1
    return-object v6

    :cond_2
    move v0, v1

    .line 861
    goto :goto_0

    .line 877
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 878
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 877
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public queryTimelineItemByAttributionType(II)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 954
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 957
    const-string v0, "creation_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 960
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "attribution_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 965
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 962
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 967
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    .line 971
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 977
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 978
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 977
    :cond_2
    if-eqz v1, :cond_3

    .line 978
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 981
    :cond_3
    return-object v7

    .line 977
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public queryTimelineItemBySourceItemId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 920
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 921
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 922
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ah;->a(Z)V

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    const-string v0, "+is_deleted=0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const-string v0, "source_item_id=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getSourceEqualityExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v5, "creation_time DESC LIMIT 1"

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 939
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 938
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 940
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 944
    :cond_0
    if-eqz v1, :cond_1

    .line 945
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 948
    :cond_1
    return-object v6

    :cond_2
    move v0, v2

    .line 921
    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 922
    goto :goto_1

    .line 944
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 945
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 944
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public removeTimelineItemsFromLocalDatabase(Ljava/util/List;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 733
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 734
    new-instance v3, Lcom/google/android/a/a;

    invoke-direct {v3}, Lcom/google/android/a/a;-><init>()V

    .line 736
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 737
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 738
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_id"

    .line 740
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "=?)"

    .line 741
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    :cond_0
    const-string v0, " OR "

    invoke-static {v0}, Lcom/google/common/base/x;->a(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/common/base/x;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 747
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 749
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 750
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v5, v1

    move v1, v2

    .line 751
    goto :goto_1

    .line 753
    :cond_1
    sget-object v2, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.google.glass.sync.timeline"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v6

    .line 758
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SuppressableNotifier;

    .line 759
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 760
    const/4 v7, 0x0

    .line 763
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

    invoke-virtual {v1, v8, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 764
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 765
    sget-object v4, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Items deleted did not match expectation [expected=%d, deleted=%d]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 766
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    .line 765
    invoke-interface {v4, v5, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 772
    :cond_2
    if-eqz v7, :cond_3

    .line 773
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 776
    :cond_3
    :try_start_3
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 777
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 780
    monitor-exit v2

    .line 781
    return-void

    .line 776
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 777
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 780
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 771
    :catchall_2
    move-exception v1

    .line 772
    if-eqz v7, :cond_4

    .line 773
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 776
    :cond_4
    :try_start_5
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 777
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    throw v1

    .line 776
    :catchall_3
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 777
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public shouldSyncOpportunisticItems()Z
    .locals 1

    .prologue
    .line 721
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->EABU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 722
    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 723
    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateBundleFromCursor(Landroid/database/Cursor;Ljava/lang/String;ZLcom/google/common/base/v;)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1413
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1414
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1416
    const-wide/16 v5, -0x1

    .line 1417
    const-string v0, "bundle_cover_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move v4, v7

    .line 1421
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xc8

    if-ge v0, v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1422
    invoke-interface {p4, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1423
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1425
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    if-nez p3, :cond_0

    .line 1430
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v3

    or-int/2addr v4, v3

    .line 1431
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_0

    .line 1435
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1437
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Found no items in bundle: %s; cannot update."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1456
    :cond_2
    return-void

    .line 1442
    :cond_3
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    .line 1443
    invoke-virtual {v3, v1}, Lcom/google/glass/timeline/BundleCoverHelper;->pickBundleCover(Ljava/util/List;)I

    move-result v3

    .line 1442
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPin(Ljava/util/List;Ljava/util/List;IZJ)I

    .line 1446
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1450
    invoke-interface {p4, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1451
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1452
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    move v3, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    goto :goto_1
.end method

.method public updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZLcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZLcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 552
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v1

    .line 553
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v2

    .line 555
    sget-object v3, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "updateTimelineItem %s with syncStatus = %s, with number of attachments = %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 556
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    .line 555
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 559
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update without holding the UPDATE_LOCK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 566
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 567
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 568
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot un-delete item: %s; update has been canceled."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .line 647
    :cond_1
    :goto_0
    return-object p1

    .line 573
    :cond_2
    new-instance v3, Lcom/google/android/a/a;

    invoke-direct {v3}, Lcom/google/android/a/a;-><init>()V

    .line 576
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_3
    if-eq v2, v7, :cond_4

    .line 584
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 589
    :cond_4
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.google.glass.sync.timeline"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 592
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SuppressableNotifier;

    .line 593
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 596
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 597
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v5

    .line 598
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    if-eqz p2, :cond_5

    .line 601
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/timeline/TimelineContract$PendingAction;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 602
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 601
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 605
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 608
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 609
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 614
    invoke-direct {p0, v1, p3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 638
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 639
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    throw v1

    .line 618
    :cond_7
    if-eqz p2, :cond_8

    :try_start_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->getType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_8

    if-eqz p4, :cond_8

    .line 620
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 621
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v5, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;

    invoke-direct {v5, p0, p4, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    :cond_8
    :goto_2
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 639
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 642
    if-nez v2, :cond_1

    .line 643
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->maybeTriggerSync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto/16 :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    :try_start_3
    sget-object v3, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "InterruptedException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
