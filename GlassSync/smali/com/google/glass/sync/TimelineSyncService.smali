.class public Lcom/google/glass/sync/TimelineSyncService;
.super Landroid/app/Service;
.source "TimelineSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;,
        Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;,
        Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;
    }
.end annotation


# static fields
.field private static final ANDROID_SYNC_INTENT:Ljava/lang/String; = "android.content.SyncAdapter"

.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final LOCK:Ljava/lang/Object;

.field private static syncAdapter:Lcom/google/glass/sync/TimelineSyncAdapter;


# instance fields
.field private final binder:Lcom/google/glass/sync/ITimelineSyncService$Stub;

.field private final connectivityChangeReceiver:Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;

.field private final isDeleteSyncedItemsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster",
            "<",
            "Lcom/google/glass/sync/ITimelineSyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private overridePolicy:Lcom/google/glass/sync/OverridePolicy;

.field private final powerLostReceiver:Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;

.field syncAdapterProvider:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sync"

    const-string v2, "com.google.glass.sync.TimelineSyncService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sync/TimelineSyncService;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/sync/TimelineSyncService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    const-string v0, "glass_sync"

    .line 67
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 69
    new-instance v0, Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;-><init>(Lcom/google/glass/sync/TimelineSyncService;Lcom/google/glass/sync/TimelineSyncService$1;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->powerLostReceiver:Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;

    .line 71
    new-instance v0, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;-><init>(Lcom/google/glass/sync/TimelineSyncService;Lcom/google/glass/sync/TimelineSyncService$1;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->connectivityChangeReceiver:Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;

    .line 74
    new-instance v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-direct {v0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    .line 77
    new-instance v0, Lcom/google/glass/sync/TimelineSyncService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/sync/TimelineSyncService$1;-><init>(Lcom/google/glass/sync/TimelineSyncService;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->binder:Lcom/google/glass/sync/ITimelineSyncService$Stub;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->isDeleteSyncedItemsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    sget-object v0, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->overridePolicy:Lcom/google/glass/sync/OverridePolicy;

    .line 132
    new-instance v0, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    invoke-direct {v0, p0}, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;-><init>(Lcom/google/glass/sync/TimelineSyncService;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->syncAdapterProvider:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    .line 459
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/sync/TimelineSyncService;Landroid/content/Context;)Lcom/google/glass/sync/TimelineSyncHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineSyncService;->newTimelineSyncHandler(Landroid/content/Context;)Lcom/google/glass/sync/TimelineSyncHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/sync/TimelineSyncService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/sync/TimelineSyncService;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/glass/sync/TimelineSyncAdapter;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/sync/TimelineSyncAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/sync/TimelineSyncService;)Lcom/google/glass/util/WifiHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    return-object v0
.end method

.method private getCountOfMediaItemsThatWouldBeCleared()I
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 334
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineSyncService;->getListOfMediaFilesToDelete()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method private getListOfMediaFilesToDelete()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 349
    new-instance v5, Lcom/google/android/util/ArraySet;

    invoke-direct {v5}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 351
    .local v5, "mediaFilesToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "dcimDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v3, v7, v6

    .line 354
    .local v3, "mediaFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "mediaFileAbsolutePath":Ljava/lang/String;
    const-string v9, ".jpg"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, ".mp4"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 359
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .end local v3    # "mediaFile":Ljava/io/File;
    .end local v4    # "mediaFileAbsolutePath":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getUnsyncedItemsWithAttachmentsCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 366
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 367
    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v6, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 368
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemUtils;->getMediaFileNames(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 371
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 374
    return-object v5
.end method

.method private newTimelineSyncHandler(Landroid/content/Context;)Lcom/google/glass/sync/TimelineSyncHandler;
    .locals 3
    .param p1, "application"    # Landroid/content/Context;

    .prologue
    .line 397
    new-instance v0, Lcom/google/glass/sync/TimelineSyncWindowHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/sync/TimelineSyncWindowHelper;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, "timelineSyncWindowHelper":Lcom/google/glass/sync/TimelineSyncWindowHelper;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    .line 399
    .local v1, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    new-instance v2, Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/glass/sync/TimelineSyncHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/TimelineSyncWindowHelper;)V

    return-object v2
.end method


# virtual methods
.method public addListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/sync/ITimelineSyncListener;

    .prologue
    .line 233
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->register(Landroid/os/IInterface;)Z

    .line 235
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncService;->updatePendingSyncSummaryAndNotify()V

    .line 236
    return-void
.end method

.method deleteFileAtPath(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Media did not exist during deletion request [path=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deleting media [path=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not delete media [path=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deleteSyncedItemsWithMedia()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 290
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 292
    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncService;->isDeleteSyncedItemsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 293
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 294
    .local v5, "timelineItemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    new-instance v4, Lcom/google/android/util/ArraySet;

    invoke-direct {v4}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 296
    .local v4, "syncedMediaFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getSyncedItemsWithAttachmentsCursor()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 298
    .local v0, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-virtual {v6, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 301
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemUtils;->getMediaFileNames(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v6, v6

    if-nez v6, :cond_0

    .line 304
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/google/glass/sync/TimelineSyncService;->isDeleteSyncedItemsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncService;->notifyDeletePhotosAndVideosComplete()V

    throw v6

    .line 308
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 310
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 312
    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v6, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->removeTimelineItemsFromLocalDatabase(Ljava/util/List;)V

    .line 315
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 317
    .local v1, "deletedTimelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 316
    invoke-static {v7, v8, v1}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_1

    .line 320
    .end local v1    # "deletedTimelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineSyncService;->getListOfMediaFilesToDelete()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 321
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    .local v3, "syncedMediaFileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/glass/sync/TimelineSyncService;->deleteFileAtPath(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 325
    .end local v3    # "syncedMediaFileName":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/google/glass/sync/TimelineSyncService;->isDeleteSyncedItemsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncService;->notifyDeletePhotosAndVideosComplete()V

    .line 329
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "syncedMediaFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "timelineItemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :cond_5
    return-void
.end method

.method public getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->overridePolicy:Lcom/google/glass/sync/OverridePolicy;

    return-object v0
.end method

.method public getPendingSyncSummary()Lcom/google/glass/sync/PendingSyncSummary;
    .locals 18

    .prologue
    .line 194
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "unsyncedPhotos":I
    const-wide/16 v3, 0x0

    .line 202
    .local v3, "unsyncedPhotoBytes":J
    const/4 v5, 0x0

    .line 203
    .local v5, "unsyncedVideos":I
    const-wide/16 v6, 0x0

    .line 204
    .local v6, "unsyncedVideoBytes":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    const/4 v8, 0x0

    .line 205
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    .line 204
    invoke-virtual {v1, v8}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getUnsyncedItems(Ljava/util/List;)Ljava/util/Queue;

    move-result-object v13

    .line 206
    .local v13, "unsyncedItems":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-interface {v13}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 207
    .local v12, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v1, v12, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v14, v12, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v15, v14

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v15, :cond_0

    aget-object v9, v14, v1

    .line 209
    .local v9, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "mediaPath":Ljava/lang/String;
    sget-object v16, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 213
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v10, "mediaFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 215
    invoke-static {v9}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 217
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v6, v6, v16

    .line 208
    .end local v10    # "mediaFile":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .restart local v10    # "mediaFile":Ljava/io/File;
    :cond_2
    invoke-static {v9}, Lcom/google/glass/timeline/AttachmentUtils;->isPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 220
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v3, v3, v16

    goto :goto_1

    .line 228
    .end local v9    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v10    # "mediaFile":Ljava/io/File;
    .end local v11    # "mediaPath":Ljava/lang/String;
    .end local v12    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    new-instance v1, Lcom/google/glass/sync/PendingSyncSummary;

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/sync/TimelineSyncService;->getCountOfMediaItemsThatWouldBeCleared()I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/sync/PendingSyncSummary;-><init>(IJIJI)V

    return-object v1
.end method

.method public notifyDeletePhotosAndVideosComplete()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    new-instance v1, Lcom/google/glass/sync/TimelineSyncService$5;

    invoke-direct {v1, p0}, Lcom/google/glass/sync/TimelineSyncService$5;-><init>(Lcom/google/glass/sync/TimelineSyncService;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 282
    return-void
.end method

.method public notifySyncComplete()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    new-instance v1, Lcom/google/glass/sync/TimelineSyncService$4;

    invoke-direct {v1, p0}, Lcom/google/glass/sync/TimelineSyncService$4;-><init>(Lcom/google/glass/sync/TimelineSyncService;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 272
    return-void
.end method

.method public notifySyncItemComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    new-instance v1, Lcom/google/glass/sync/TimelineSyncService$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sync/TimelineSyncService$3;-><init>(Lcom/google/glass/sync/TimelineSyncService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 262
    return-void
.end method

.method public notifySyncItemStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    new-instance v1, Lcom/google/glass/sync/TimelineSyncService$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sync/TimelineSyncService$2;-><init>(Lcom/google/glass/sync/TimelineSyncService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 251
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    const-string v0, "android.content.SyncAdapter"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/google/glass/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/sync/TimelineSyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->binder:Lcom/google/glass/sync/ITimelineSyncService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 151
    invoke-static {}, Lcom/google/glass/util/WifiHelperProvider;->getInstance()Lcom/google/glass/util/WifiHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/util/WifiHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/WifiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 153
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 155
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 157
    sget-object v1, Lcom/google/glass/sync/TimelineSyncService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/google/glass/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/sync/TimelineSyncAdapter;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->syncAdapterProvider:Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncService$TimelineSyncAdapterProvider;->get()Lcom/google/glass/sync/TimelineSyncAdapter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/sync/TimelineSyncAdapter;

    .line 161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->powerLostReceiver:Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->connectivityChangeReceiver:Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 165
    return-void

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->powerLostReceiver:Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 170
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->connectivityChangeReceiver:Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/sync/TimelineSyncService$ConnectivityChangeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public removeListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/sync/ITimelineSyncListener;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->unregister(Landroid/os/IInterface;)Z

    .line 240
    return-void
.end method

.method public setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V
    .locals 4
    .param p1, "overridePolicy"    # Lcom/google/glass/sync/OverridePolicy;

    .prologue
    .line 184
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "New override policy [overridePolicy=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService;->overridePolicy:Lcom/google/glass/sync/OverridePolicy;

    .line 187
    return-void
.end method

.method public updatePendingSyncSummaryAndNotify()V
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 407
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/sync/TimelineSyncService$6;

    invoke-direct {v1, p0}, Lcom/google/glass/sync/TimelineSyncService$6;-><init>(Lcom/google/glass/sync/TimelineSyncService;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method
