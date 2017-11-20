.class public Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;,
        Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;,
        Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;
    }
.end annotation


# static fields
.field private static final IGNORE_INDEX:Ljava/lang/String; = "+"

.field static final MAX_DISPLAY_ITEMS:I = 0xc8

.field private static final MAX_ITEMS_PER_ATTRIBUTION_QUERY:I = 0x32

.field private static final MAX_ITEMS_PER_SOURCE_QUERY:I = 0x32

.field private static final POST_DELETE_INTENT_TIMELINE_ITEM_EXTRA:Ljava/lang/String; = "post_delete_intent_timeline_item_extra"

.field private static final UPDATE_LOCK:Ljava/lang/Object;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final ctx:Landroid/content/Context;

.field private final mediaStoreFileManager:Lcom/google/glass/timeline/MediaStoreFileManager;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


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

.method constructor <init>(Lcom/google/glass/time/Clock;Landroid/content/ContentResolver;Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;Lcom/google/glass/timeline/MediaStoreFileManager;Lcom/google/glass/timeline/BundleCoverHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/companion/RemoteCompanionProxy;Landroid/content/Context;)V
    .locals 1
    .param p1, "clock"    # Lcom/google/glass/time/Clock;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "serializationHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    .param p4, "mediaStoreFileManager"    # Lcom/google/glass/timeline/MediaStoreFileManager;
    .param p5, "bundleCoverHelper"    # Lcom/google/glass/timeline/BundleCoverHelper;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p7, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p8, "remoteCompanionProxy"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p9, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, "null clock"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/time/Clock;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clock:Lcom/google/glass/time/Clock;

    .line 119
    const-string v0, "null contentResolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 120
    const-string v0, "null serializationHelper"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 121
    const-string v0, "null mediaStoreFileManager"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/MediaStoreFileManager;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->mediaStoreFileManager:Lcom/google/glass/timeline/MediaStoreFileManager;

    .line 122
    const-string v0, "null bundleCoverHelper"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/BundleCoverHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    .line 123
    const-string v0, "null userEventHelper"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 124
    const-string v0, "null batteryHelper"

    invoke-static {p7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/BatteryHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 125
    const-string v0, "null remoteCompanionProxy"

    invoke-static {p8, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 126
    const-string v0, "null context"

    invoke-static {p9, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    .line 127
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p9}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 128
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    return-object v0
.end method

.method private clampMaxItems(II)I
    .locals 5
    .param p1, "inputMax"    # I
    .param p2, "limitMax"    # I

    .prologue
    .line 1685
    if-le p1, p2, :cond_0

    .line 1686
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Clamping max items below what was requested [inputMax=%s, limitMax=%d]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1686
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1690
    .end local p2    # "limitMax":I
    :goto_0
    return p2

    .restart local p2    # "limitMax":I
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method private static getSourceEqualityExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1728
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    const-string v0, "source LIKE \'device:%\'"

    .line 1731
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "source=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maybeTriggerSync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 708
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 712
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->shouldSyncOpportunisticItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    const-string v1, "com.google.glass.sync.timeline"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    goto :goto_0
.end method

.method private queryBundleMembersByAttributionSelectString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "attributionType"    # I

    .prologue
    .line 1397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+is_deleted=0"

    .line 1399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    .line 1400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bundle_id=\"\'"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    .line 1408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribution_type=\""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_bundle_cover=0"

    .line 1411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    return-object v0
.end method

.method private selectionForDistinctBundleIdsByAttributionType(IIJ)Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;
    .locals 9
    .param p1, "attributionType"    # I
    .param p2, "maxNumberOfItems"    # I
    .param p3, "minModifiedMillis"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1459
    const/16 v4, 0x32

    invoke-direct {p0, p2, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clampMaxItems(II)I

    move-result p2

    .line 1468
    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "DISTINCT bundle_id"

    aput-object v4, v1, v6

    .line 1470
    .local v1, "projection":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+is_deleted=0"

    .line 1471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    .line 1472
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "attribution_type=?"

    .line 1473
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    .line 1474
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "modified_time>?"

    .line 1475
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1476
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1477
    .local v2, "select":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 1478
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 1481
    .local v0, "args":[Ljava/lang/String;
    const-string v4, "creation_time DESC LIMIT "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1483
    .local v3, "sortOrder":Ljava/lang/String;
    new-instance v4, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;

    invoke-direct {v4, v1, v2, v0, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    .locals 0
    .param p0, "notifier"    # Lcom/google/glass/util/SuppressableNotifier;

    .prologue
    .line 1703
    if-eqz p0, :cond_0

    .line 1704
    invoke-interface {p0}, Lcom/google/glass/util/SuppressableNotifier;->startSuppressNotifyChange()V

    .line 1706
    :cond_0
    return-void
.end method

.method private static stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    .locals 0
    .param p0, "notifier"    # Lcom/google/glass/util/SuppressableNotifier;

    .prologue
    .line 1717
    if-eqz p0, :cond_0

    .line 1718
    invoke-interface {p0}, Lcom/google/glass/util/SuppressableNotifier;->stopSuppressNotifyChange()V

    .line 1720
    :cond_0
    return-void
.end method

.method private updateBundle(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "clearPin"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1570
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot bundle items with empty bundle ID."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1622
    :goto_0
    return-void

    .line 1577
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Updating bundle: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1581
    sget-object v8, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 1584
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1585
    .local v7, "select":Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted==0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    const-string v0, "bundle_id==?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1591
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1595
    .local v4, "selectArgs":[Ljava/lang/String;
    const-string v5, "display_time DESC"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1600
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1601
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1600
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1603
    if-nez v6, :cond_2

    .line 1605
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Found no items in bundle: %s; cannot update."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1617
    if-eqz v6, :cond_1

    .line 1618
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v8

    goto :goto_0

    .line 1621
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "select":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1609
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "select":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    invoke-virtual {p0, v6, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundleFromCursor(Landroid/database/Cursor;Ljava/lang/String;ZLcom/google/common/base/Function;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1617
    if-eqz v6, :cond_3

    .line 1618
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1621
    :cond_3
    monitor-exit v8

    goto :goto_0

    .line 1617
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_4

    .line 1618
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private updateEntityContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V
    .locals 7
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "timelineId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 259
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .local v0, "entityContentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 265
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 268
    :cond_0
    return-void
.end method

.method static validateItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1677
    const-string v0, "null item"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1679
    return-void

    .line 1678
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAttachmentToTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;Lcom/google/googlex/glass/common/proto/nano/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .param p3, "action"    # Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .param p4, "markAsSynced"    # Z
    .param p5, "setModifiedTime"    # Z

    .prologue
    .line 667
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 670
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "itemId":Ljava/lang/String;
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;ZLcom/google/googlex/glass/common/proto/nano/UserAction;)V

    .line 687
    .local v0, "update":Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 688
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v7

    .line 692
    .local v7, "updatedItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Did not update item "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with attachment, because it no longer exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    const/4 v7, 0x0

    .line 697
    .end local v7    # "updatedItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_1
    return-object v7
.end method

.method public atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V
    .locals 2
    .param p1, "update"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;

    .prologue
    .line 497
    sget-object v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->execute()V

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V
    .locals 2
    .param p1, "update"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;

    .prologue
    .line 506
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 507
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$5;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method public bulkInsertTimelineItem(Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    const/4 v6, 0x0

    .line 278
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 280
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 321
    :goto_0
    return v6

    .line 285
    :cond_0
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-direct {v1}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 287
    .local v1, "bundleIdsForUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [Landroid/content/ContentValues;

    .line 288
    .local v8, "values":[Landroid/content/ContentValues;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 289
    .local v3, "entityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 290
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 291
    .local v5, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->validateItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 292
    sget-object v9, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Preparing to insert timeline item with ID %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v9, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v9

    aput-object v9, v8, v4

    .line 294
    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v9, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 297
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 303
    .end local v5    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_2
    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v10, "com.google.glass.sync.timeline"

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 306
    .local v2, "client":Landroid/content/ContentProviderClient;
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v7

    check-cast v7, Lcom/google/glass/util/SuppressableNotifier;

    .line 307
    .local v7, "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 310
    :try_start_0
    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    .line 311
    .local v6, "result":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_3

    .line 312
    iget-object v10, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/google/glass/timeline/TimelineContract$Entity;->CONTENT_URI:Landroid/net/Uri;

    .line 313
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/content/ContentValues;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ContentValues;

    .line 312
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 318
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "bundleId":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {p0, v0, v10}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 323
    .end local v0    # "bundleId":Ljava/lang/String;
    .end local v6    # "result":I
    :catchall_0
    move-exception v9

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 324
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v9

    .line 323
    .restart local v6    # "result":I
    :cond_4
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 324
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0
.end method

.method protected createCursorLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1393
    new-instance v0, Landroid/content/CursorLoader;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteAll()I
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1555
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1556
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteExpiredAndSyncedItemsOlderThan(J)V
    .locals 19
    .param p1, "timestamp"    # J

    .prologue
    .line 789
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v12

    .line 793
    .local v12, "currentTime":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const-string v2, "sync_status"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    const-string v2, " AND "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const-string v2, "modified_time"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v2, ") OR ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v2, "expiration_time"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v2, " AND "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v2, "expiration_time"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<CAST(? AS INT)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, "select":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 808
    .local v6, "args":[Ljava/lang/String;
    sget-object v17, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v17

    .line 811
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.google.glass.sync.timeline"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v11

    .line 814
    .local v11, "client":Landroid/content/ContentProviderClient;
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v16

    check-cast v16, Lcom/google/glass/util/SuppressableNotifier;

    .line 815
    .local v16, "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 816
    const/4 v14, 0x0

    .line 820
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v10, Lcom/google/android/util/ArraySet;

    invoke-direct {v10}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 823
    .local v10, "bundleIdsForUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v18, "bundle_id"

    aput-object v18, v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 825
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 826
    const-string v2, "bundle_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 827
    .local v9, "bundleIdColumn":I
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 828
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 829
    .local v8, "bundleId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 830
    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 846
    .end local v8    # "bundleId":Ljava/lang/String;
    .end local v9    # "bundleIdColumn":I
    .end local v10    # "bundleIdsForUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    .line 847
    if-eqz v14, :cond_1

    .line 848
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 851
    :cond_1
    :try_start_3
    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 852
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    throw v2

    .line 855
    .end local v11    # "client":Landroid/content/ContentProviderClient;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    :catchall_1
    move-exception v2

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 835
    .restart local v9    # "bundleIdColumn":I
    .restart local v10    # "bundleIdsForUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "client":Landroid/content/ContentProviderClient;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 838
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 839
    .restart local v8    # "bundleId":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 847
    .end local v8    # "bundleId":Ljava/lang/String;
    .end local v9    # "bundleIdColumn":I
    :cond_3
    if-eqz v14, :cond_4

    .line 848
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 851
    :cond_4
    :try_start_6
    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 852
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    .line 855
    monitor-exit v17

    .line 856
    return-void

    .line 851
    :catchall_2
    move-exception v2

    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 852
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    throw v2

    .line 851
    .end local v10    # "bundleIdsForUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_3
    move-exception v2

    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 852
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public deletePostDeleteIntent(Ljava/lang/String;)I
    .locals 6
    .param p1, "timelineId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Delete post delete intent, timelineId:%sm "

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "timeline_id=?"

    new-array v1, v1, [Ljava/lang/String;

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 193
    invoke-virtual {v0, v3, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 192
    goto :goto_0
.end method

.method public deleteTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 354
    return-void
.end method

.method public deleteTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 13
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "listener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 367
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsDeleted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 368
    sget-object v6, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Item %s is already deleted."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    :goto_0
    return-void

    .line 372
    :cond_0
    sget-object v6, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Deleting item: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    .line 376
    .local v5, "tombstone":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 377
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 378
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 379
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSourceType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 380
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCreationTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 381
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getDisplayTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 382
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 383
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 386
    new-instance v6, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;

    invoke-direct {v6, p0, v5, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    invoke-virtual {p0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 395
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 398
    .local v1, "attachmentsToDecrement":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    iget-object v6, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 399
    iget-object v7, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_4

    aget-object v0, v7, v6

    .line 400
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-static {p1, v0}, Lcom/google/glass/timeline/AttachmentHelper;->shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 401
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "clientCachePath":Ljava/lang/String;
    sget-object v9, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Deleting attached file: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 405
    sget-object v9, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Failed to delete file: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    .end local v3    # "clientCachePath":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentHelper;->isLocallyManagedAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 415
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 407
    .restart local v3    # "clientCachePath":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->mediaStoreFileManager:Lcom/google/glass/timeline/MediaStoreFileManager;

    invoke-virtual {v9, v0}, Lcom/google/glass/timeline/MediaStoreFileManager;->removeFileFromMediaStore(Lcom/google/googlex/glass/common/proto/nano/Attachment;)V

    goto :goto_2

    .line 421
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v3    # "clientCachePath":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryPostDeleteIntent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 423
    .local v2, "broadcastIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 424
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "post_delete_intent_timeline_item_extra"

    .line 425
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v8

    .line 424
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 426
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    invoke-virtual {v7, v8, v4}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    .line 429
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deletePostDeleteIntent(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 468
    return-void
.end method

.method public deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "listener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;

    .prologue
    .line 476
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 477
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method

.method public deleteTimelineItemAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 437
    return-void
.end method

.method public deleteTimelineItemAsync(Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;

    .prologue
    .line 445
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 446
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method getBundleCover(Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .param p1, "bundleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1224
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    .local v8, "select":Ljava/lang/StringBuilder;
    const-string v0, "is_deleted==0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v0, "bundle_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1236
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1240
    .local v4, "selectArgs":[Ljava/lang/String;
    const-string v5, "display_time DESC"

    .line 1243
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1245
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1246
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1245
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1247
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1248
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 1249
    invoke-virtual {v0, v7}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v6

    .line 1250
    .local v6, "cover":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    const-string v0, "bundle_cover_status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1251
    .local v9, "status":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    if-nez v9, :cond_3

    .line 1257
    :cond_0
    if-eqz v7, :cond_1

    .line 1258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 1261
    .end local v6    # "cover":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v9    # "status":Ljava/lang/Integer;
    :cond_2
    :goto_0
    return-object v0

    .line 1254
    .restart local v6    # "cover":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .restart local v9    # "status":Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1257
    if-eqz v7, :cond_2

    .line 1258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1257
    .end local v6    # "cover":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v9    # "status":Ljava/lang/Integer;
    :cond_4
    if-eqz v7, :cond_5

    .line 1258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    .line 1261
    goto :goto_0

    .line 1257
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getSyncedItemsWithAttachmentsCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1182
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .local v6, "selection":Ljava/lang/StringBuilder;
    const-string v0, "sync_status=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    const-string v0, "sync_protocol=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    const-string v0, "has_media_attachment=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 1195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "creation_time ASC"

    move-object v4, v2

    .line 1193
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineItemCount()I
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1535
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1537
    const/4 v6, 0x0

    .line 1539
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1540
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1542
    if-eqz v6, :cond_0

    .line 1543
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1540
    :cond_0
    return v0

    .line 1542
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1543
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public getUnsyncedItems(Ljava/util/List;)Ljava/util/Queue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "syncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1099
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1101
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v9

    .line 1103
    .local v9, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1104
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No sync protocol(s) specified."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    :cond_1
    :goto_0
    return-object v9

    .line 1108
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Getting unsynced items with sync protocols: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ", "

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    const/4 v6, 0x0

    .line 1114
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    .local v10, "selection":Ljava/lang/StringBuilder;
    const-string v0, "sync_status=0"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    const-string v0, "sync_protocol IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1119
    if-lez v7, :cond_3

    .line 1120
    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1118
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1124
    :cond_4
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1129
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "creation_time ASC"

    .line 1127
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1134
    :cond_5
    :goto_2
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1135
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v8

    .line 1136
    .local v8, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v8, :cond_5

    .line 1137
    iget-object v0, v8, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1138
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Prioritizing %s due to shareCount=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v8, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1146
    .end local v7    # "i":I
    .end local v8    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v10    # "selection":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1141
    .restart local v7    # "i":I
    .restart local v8    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .restart local v10    # "selection":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1146
    .end local v8    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_8
    if-eqz v6, :cond_1

    .line 1147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getUnsyncedItemsWithAttachmentsCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1204
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1208
    .local v6, "selection":Ljava/lang/StringBuilder;
    const-string v0, "sync_status!=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const-string v0, "sync_protocol=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const-string v0, "has_media_attachment=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 1217
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "creation_time ASC"

    move-object v4, v2

    .line 1215
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertPostDeleteIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 7
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    sget-object v2, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Insert post delete intent:%s, timelineId:%s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v1, "values":Landroid/content/ContentValues;
    :try_start_0
    const-string v2, "timeline_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "intent_blob"

    .line 144
    invoke-static {p2}, Lcom/google/glass/timeline/IntentSerializer;->toBytes(Landroid/content/Intent;)[B

    move-result-object v3

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "IOException when serializing intent:%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insertTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/nano/UserAction;)Landroid/net/Uri;
    .locals 9
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "itemType"    # Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .param p3, "action"    # Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .prologue
    const/4 v8, 0x1

    .line 209
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 210
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->validateItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 216
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.google.glass.sync.timeline"

    .line 217
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 219
    .local v0, "contentProviderClient":Landroid/content/ContentProviderClient;
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/SuppressableNotifier;

    .line 220
    .local v2, "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 223
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 224
    invoke-virtual {v5, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v5

    .line 223
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    .local v1, "itemUri":Landroid/net/Uri;
    sget-object v4, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Inserted timeline item [id=%s, action=%s, itemType=%s]."

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 226
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    if-nez p3, :cond_3

    const/4 v3, 0x0

    :goto_0
    aput-object v3, v6, v7

    const/4 v3, 0x2

    aput-object p2, v6, v3

    .line 225
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    if-eqz p3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineContract$PendingAction;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 230
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/nano/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 229
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateEntityContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 237
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_1
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 242
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 245
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCloudSyncStatus()I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 246
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->maybeTriggerSync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p2}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 251
    return-object v1

    .line 226
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 241
    .end local v1    # "itemUri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 242
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
.end method

.method public insertTimelineItemAsync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/nano/UserAction;)V
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "itemType"    # Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .param p3, "action"    # Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .prologue
    .line 338
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 339
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/nano/UserAction;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public queryAllItemsBySource(Ljava/lang/String;IJ)Ljava/util/List;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "maxNumberOfItems"    # I
    .param p3, "minModifiedMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 997
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 998
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryAllItemsBySourceAsCursor(Ljava/lang/String;IJ)Landroid/database/Cursor;

    move-result-object v0

    .line 1001
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1002
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1003
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v1

    .line 1004
    .local v1, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v1, :cond_0

    .line 1005
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1011
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 1012
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3

    .line 1011
    :cond_2
    if-eqz v0, :cond_3

    .line 1012
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1015
    :cond_3
    return-object v2
.end method

.method public queryAllItemsBySourceAsCursor(Ljava/lang/String;IJ)Landroid/database/Cursor;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "maxNumberOfItems"    # I
    .param p3, "minModifiedMillis"    # J

    .prologue
    .line 1023
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1024
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1025
    const/16 v0, 0x32

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clampMaxItems(II)I

    move-result p2

    .line 1027
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .local v6, "select":Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v0, "source=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v0, "bundle_cover_status!=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string v0, " AND ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v0, "modified_time"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1038
    .local v4, "args":[Ljava/lang/String;
    const-string v0, "creation_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1040
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryBundleCover(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 9
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1491
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1493
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1495
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1497
    .local v8, "select":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1498
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1500
    .local v7, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1501
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1505
    :cond_0
    if-eqz v6, :cond_1

    .line 1506
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1509
    :cond_1
    return-object v7

    .line 1505
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1506
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public queryBundleCoversBySourceAsCursor(Ljava/lang/String;IJ)Landroid/content/CursorLoader;
    .locals 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "maxNumberOfItems"    # I
    .param p3, "minModifiedMillis"    # J

    .prologue
    .line 1049
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1050
    const/16 v0, 0x32

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clampMaxItems(II)I

    move-result p2

    .line 1052
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .local v7, "select":Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    const-string v0, "source=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v0, "bundle_cover_status=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    const-string v0, " AND ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v0, "modified_time"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1064
    .local v5, "args":[Ljava/lang/String;
    const-string v0, "modified_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1066
    .local v6, "sortOrder":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "isCover"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1515
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    .local v0, "select":Ljava/lang/StringBuilder;
    const-string v1, "+is_deleted=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    const-string v1, "bundle_id=\"\'"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getSourceEqualityExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    const-string v2, "is_bundle_cover="

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1526
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryBundleMembers(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "maxNumberOfItems"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1291
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1296
    .local v9, "select":Ljava/lang/StringBuilder;
    const-string v0, "+"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v0, "bundle_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\"\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    const-string v0, "is_bundle_cover"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string v0, "creation_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1305
    .local v5, "sortOrder":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1306
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1308
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1310
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1311
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v7

    .line 1313
    .local v7, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v7, :cond_0

    .line 1314
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1320
    .end local v7    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1320
    :cond_2
    if-eqz v6, :cond_3

    .line 1321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1324
    :cond_3
    return-object v8
.end method

.method public queryBundleMembers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "maxNumberOfItems"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1332
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 1337
    .local v9, "select":Ljava/lang/String;
    const-string v0, "creation_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1339
    .local v5, "sortOrder":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1340
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1342
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1344
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1345
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1346
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v7

    .line 1347
    .local v7, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v7, :cond_0

    .line 1348
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1354
    .end local v7    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1354
    :cond_2
    if-eqz v6, :cond_3

    .line 1355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1358
    :cond_3
    return-object v8
.end method

.method public queryBundleMembersAsCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 8
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1368
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1373
    .local v7, "select":Ljava/lang/String;
    const-string v6, "creation_time DESC"

    .line 1375
    .local v6, "sortOrder":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public queryBundleMembersByAttributionTypeAsCursor(Ljava/lang/String;I)Landroid/content/CursorLoader;
    .locals 8
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "attributionType"    # I

    .prologue
    const/4 v3, 0x0

    .line 1384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1385
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleMembersByAttributionSelectString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1386
    .local v7, "select":Ljava/lang/String;
    const-string v6, "creation_time DESC"

    .line 1387
    .local v6, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->createCursorLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public queryBundleSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1269
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1273
    invoke-virtual {p0, p1, p2, v8}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleItemsSelectString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1274
    .local v7, "select":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1276
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1277
    if-eqz v6, :cond_1

    .line 1278
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1281
    if-eqz v6, :cond_0

    .line 1282
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1285
    :cond_0
    :goto_0
    return v0

    .line 1281
    :cond_1
    if-eqz v6, :cond_2

    .line 1282
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 1285
    goto :goto_0

    .line 1281
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1282
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public queryDirectoryCoverBySource(Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1075
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .local v7, "select":Ljava/lang/StringBuilder;
    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const-string v0, "source"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, "is_directory_cover"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v6, "modified_time DESC LIMIT 1"

    .line 1085
    .local v6, "sortOrder":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 1086
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    return-object v0
.end method

.method public queryDistinctBundleIdsByAttributionType(IIJ)Ljava/util/List;
    .locals 11
    .param p1, "attributionType"    # I
    .param p2, "maxNumberOfItems"    # I
    .param p3, "minModifiedMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->selectionForDistinctBundleIdsByAttributionType(IIJ)Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;

    move-result-object v9

    .line 1423
    .local v9, "selectInfo":Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;
    const/4 v8, 0x0

    .line 1424
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1426
    .local v7, "bundleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$100(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 1427
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$200(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$300(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$400(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1426
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1428
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1429
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1430
    const-string v0, "bundle_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1431
    .local v6, "bundleId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1432
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1438
    .end local v6    # "bundleId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 1439
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1438
    :cond_2
    if-eqz v8, :cond_3

    .line 1439
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1442
    :cond_3
    return-object v7
.end method

.method public queryDistinctBundleIdsByAttributionTypeAsCursor(IIJ)Landroid/content/CursorLoader;
    .locals 9
    .param p1, "attributionType"    # I
    .param p2, "maxNumberOfItems"    # I
    .param p3, "minModifiedMillis"    # J

    .prologue
    .line 1451
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->selectionForDistinctBundleIdsByAttributionType(IIJ)Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;

    move-result-object v7

    .line 1453
    .local v7, "selectInfo":Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$100(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)[Ljava/lang/String;

    move-result-object v3

    .line 1454
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$200(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$300(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->access$400(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 1453
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->createCursorLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public queryItemsByDeliveryTime(J)Landroid/database/Cursor;
    .locals 7
    .param p1, "deliveryTime"    # J

    .prologue
    .line 1158
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1159
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "delivery_time>=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1162
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "delivery_time ASC"

    .line 1159
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryPinnedItems()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1170
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1171
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
    .locals 11
    .param p1, "timelineId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Query post delete intent, timelineId:%s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 161
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "timeline_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 163
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 165
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 166
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz v7, :cond_2

    .line 168
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "intent_blob"

    .line 170
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 169
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 172
    .local v6, "bytes":[B
    :try_start_1
    invoke-static {v6}, Lcom/google/glass/timeline/IntentSerializer;->fromBytes([B)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v8

    .line 174
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "IOException when serializing intent:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 178
    .end local v6    # "bytes":[B
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_0
    move v0, v5

    .line 160
    goto :goto_0

    .line 178
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_2
    return-object v9
.end method

.method public queryTimelineItem(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 8
    .param p1, "itemUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 892
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 893
    if-nez p1, :cond_1

    move-object v0, v7

    .line 908
    :cond_0
    :goto_0
    return-object v0

    .line 896
    :cond_1
    const/4 v6, 0x0

    .line 898
    .local v6, "timelineCursor":Landroid/database/Cursor;
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

    move-result-object v6

    .line 900
    if-nez v6, :cond_3

    .line 910
    if-eqz v6, :cond_2

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 901
    goto :goto_0

    .line 904
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 910
    if-eqz v6, :cond_4

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    .line 905
    goto :goto_0

    .line 908
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 910
    if-eqz v6, :cond_0

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 910
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 911
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 8
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 864
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 865
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 867
    const/4 v6, 0x0

    .line 868
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 870
    .local v7, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
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

    move-result-object v6

    .line 877
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 881
    :cond_0
    if-eqz v6, :cond_1

    .line 882
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 885
    :cond_1
    return-object v7

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_2
    move v0, v1

    .line 865
    goto :goto_0

    .line 881
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 882
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public queryTimelineItemByAttributionType(II)Ljava/util/List;
    .locals 11
    .param p1, "attributionType"    # I
    .param p2, "maxNumberOfItems"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 958
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 961
    const-string v0, "creation_time DESC LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, "sortOrder":Ljava/lang/String;
    const/4 v6, 0x0

    .line 964
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 966
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "attribution_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 969
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 966
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 971
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 972
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v7

    .line 974
    .local v7, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v7, :cond_0

    .line 975
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 981
    .end local v7    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 982
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 981
    :cond_2
    if-eqz v6, :cond_3

    .line 982
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 985
    :cond_3
    return-object v8
.end method

.method public queryTimelineItemBySourceItemId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "sourceItemId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 924
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 926
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 929
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    .local v8, "select":Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v0, "source_item_id=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getSourceEqualityExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const-string v5, "creation_time DESC LIMIT 1"

    .line 939
    .local v5, "sortOrder":Ljava/lang/String;
    const/4 v6, 0x0

    .line 940
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 942
    .local v7, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 943
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 942
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 944
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v0, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 948
    :cond_0
    if-eqz v6, :cond_1

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_1
    return-object v7

    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v8    # "select":Ljava/lang/StringBuilder;
    :cond_2
    move v0, v2

    .line 925
    goto :goto_0

    :cond_3
    move v1, v2

    .line 926
    goto :goto_1

    .line 948
    .restart local v5    # "sortOrder":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .restart local v8    # "select":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public removeTimelineItemsFromLocalDatabase(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "timelineItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 738
    new-instance v11, Lcom/google/android/util/ArraySet;

    invoke-direct {v11}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 740
    .local v11, "timelineIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 741
    .local v7, "predicates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 742
    .local v12, "timelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_id"

    .line 744
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=?)"

    .line 745
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 746
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 743
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 749
    .end local v12    # "timelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_0
    const-string v13, " OR "

    invoke-static {v13}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 751
    .local v8, "select":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v13

    new-array v1, v13, [Ljava/lang/String;

    .line 752
    .local v1, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 753
    .local v5, "index":I
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 754
    .local v10, "timelineId":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput-object v10, v1, v5

    move v5, v6

    .line 755
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 757
    .end local v10    # "timelineId":Ljava/lang/String;
    :cond_1
    sget-object v14, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v14

    .line 759
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v15, "com.google.glass.sync.timeline"

    invoke-virtual {v13, v15}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 762
    .local v2, "client":Landroid/content/ContentProviderClient;
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v9

    check-cast v9, Lcom/google/glass/util/SuppressableNotifier;

    .line 763
    .local v9, "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 764
    const/4 v3, 0x0

    .line 767
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_WITH_EXPIRED_URI:Landroid/net/Uri;

    invoke-virtual {v13, v15, v8, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 768
    .local v4, "deletedCount":I
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v13

    if-eq v13, v4, :cond_2

    .line 769
    sget-object v13, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "Items deleted did not match expectation [expected=%d, deleted=%d]"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 770
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    .line 769
    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 776
    :cond_2
    if-eqz v3, :cond_3

    .line 777
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 780
    :cond_3
    :try_start_3
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 781
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 784
    monitor-exit v14

    .line 785
    return-void

    .line 780
    :catchall_0
    move-exception v13

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 781
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v13

    .line 784
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "deletedCount":I
    .end local v9    # "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 775
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    :catchall_2
    move-exception v13

    .line 776
    if-eqz v3, :cond_4

    .line 777
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 780
    :cond_4
    :try_start_5
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 781
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v13

    .line 780
    :catchall_3
    move-exception v13

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 781
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public shouldSyncOpportunisticItems()Z
    .locals 2

    .prologue
    .line 723
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    invoke-interface {v1}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 724
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->EABU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 725
    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 727
    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 724
    :goto_0
    return v1

    .line 727
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateBundleFromCursor(Landroid/database/Cursor;Ljava/lang/String;ZLcom/google/common/base/Function;)V
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "bundleId"    # Ljava/lang/String;
    .param p3, "clearPin"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/common/base/Function",
            "<",
            "Landroid/database/Cursor;",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1626
    .local p4, "itemFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Landroid/database/Cursor;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1627
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1628
    .local v5, "currentBundleCoverStatuses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1629
    .local v7, "isBundlePinned":Z
    const-wide/16 v8, -0x1

    .line 1630
    .local v8, "bundlePinTime":J
    const-string v3, "bundle_cover_status"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1634
    .local v2, "bundleCoverStatusColumn":I
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0xc8

    if-ge v3, v6, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1635
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 1638
    .local v12, "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v12, :cond_0

    .line 1639
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1641
    .local v13, "currentBundleCoverStatus":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    if-nez p3, :cond_0

    .line 1646
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsPinned()Z

    move-result v3

    or-int/2addr v7, v3

    .line 1647
    invoke-static {v12}, Lcom/google/glass/timeline/TimelineItemUtils;->getPinTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_0

    .line 1652
    .end local v12    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v13    # "currentBundleCoverStatus":I
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1654
    sget-object v3, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Found no items in bundle: %s; cannot update."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-interface {v3, v6, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1673
    :cond_2
    return-void

    .line 1659
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    .line 1660
    invoke-virtual {v6, v4}, Lcom/google/glass/timeline/BundleCoverHelper;->pickBundleCover(Ljava/util/List;)I

    move-result v6

    .line 1659
    invoke-virtual/range {v3 .. v9}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPin(Ljava/util/List;Ljava/util/List;IZJ)I

    .line 1663
    const/4 v4, 0x0

    .line 1666
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1667
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 1668
    .restart local v12    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1669
    .restart local v13    # "currentBundleCoverStatus":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->bundleCoverHelper:Lcom/google/glass/timeline/BundleCoverHelper;

    const/4 v14, 0x0

    move v15, v7

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v17}, Lcom/google/glass/timeline/BundleCoverHelper;->updateBundleCoverStatusAndPinIfNecessary(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;IIZJ)Z

    goto :goto_1
.end method

.method public updateTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/UserAction;Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "action"    # Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .param p3, "clearPin"    # Z

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/UserAction;ZLcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public updateTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/UserAction;ZLcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 18
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "action"    # Lcom/google/googlex/glass/common/proto/nano/UserAction;
    .param p3, "clearPin"    # Z
    .param p4, "deletedListener"    # Lcom/google/glass/timeline/TimelineItemDeletedListener;

    .prologue
    .line 554
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v13}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v2

    .line 555
    .local v2, "attachmentCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCloudSyncStatus()I

    move-result v11

    .line 557
    .local v11, "syncStatus":I
    sget-object v13, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "updateTimelineItem %s with syncStatus = %s, with number of attachments = %s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 557
    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 561
    sget-object v13, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->UPDATE_LOCK:Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 562
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Cannot update without holding the UPDATE_LOCK"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 565
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->validateItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v8

    .line 569
    .local v8, "existing":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsDeleted()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsDeleted()Z

    move-result v13

    if-nez v13, :cond_2

    .line 570
    sget-object v13, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Cannot un-delete item: %s; update has been canceled."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    const/16 p1, 0x0

    .line 649
    .end local p1    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_1
    :goto_0
    return-object p1

    .line 575
    .restart local p1    # "item":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_2
    new-instance v4, Lcom/google/android/util/ArraySet;

    invoke-direct {v4}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 578
    .local v4, "bundleIdsForUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v8}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 579
    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_3
    const/4 v13, 0x1

    if-eq v11, v13, :cond_4

    .line 586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v13}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 591
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v14, "com.google.glass.sync.timeline"

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v5

    .line 594
    .local v5, "client":Landroid/content/ContentProviderClient;
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v10

    check-cast v10, Lcom/google/glass/util/SuppressableNotifier;

    .line 595
    .local v10, "suppressableContentProvider":Lcom/google/glass/util/SuppressableNotifier;
    invoke-static {v10}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->startSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 598
    :try_start_0
    sget-object v13, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 599
    .local v12, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v6

    .line 600
    .local v6, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v12, v6, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    if-eqz p2, :cond_5

    .line 603
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/glass/timeline/TimelineContract$PendingAction;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 604
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/nano/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v15

    .line 603
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 607
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateEntityContentValues(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 610
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasBundleId(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 611
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 616
    .local v3, "bundleId":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 640
    .end local v3    # "bundleId":Ljava/lang/String;
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v12    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v13

    invoke-static {v10}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 641
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    throw v13

    .line 620
    .restart local v6    # "contentValues":Landroid/content/ContentValues;
    .restart local v12    # "uri":Landroid/net/Uri;
    :cond_7
    if-eqz p2, :cond_8

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->getType()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_8

    if-eqz p4, :cond_8

    .line 622
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v13, 0x1

    invoke-direct {v9, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 623
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v13

    new-instance v14, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1, v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v13, v14}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    :try_start_2
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    .end local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_8
    :goto_2
    invoke-static {v10}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->stopSuppressingNotifications(Lcom/google/glass/util/SuppressableNotifier;)V

    .line 641
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    .line 644
    if-nez v11, :cond_1

    .line 645
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->maybeTriggerSync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    goto/16 :goto_0

    .line 635
    .restart local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v7

    .line 636
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v13, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "InterruptedException"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v7, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
