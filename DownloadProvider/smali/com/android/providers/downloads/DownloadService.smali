.class public Lcom/android/providers/downloads/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mDownloads:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDownloads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mLastStartId:I

.field private mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

.field private mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

.field private mScanner:Lcom/android/providers/downloads/DownloadScanner;

.field private mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field private mUpdateCallback:Landroid/os/Handler$Callback;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 95
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    .line 98
    invoke-static {}, Lcom/android/providers/downloads/DownloadService;->buildDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 220
    new-instance v0, Lcom/android/providers/downloads/DownloadService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$1;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->enqueueUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->enqueueFinalUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadScanner;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/DownloadService;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static buildDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 7

    .prologue
    .line 101
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 106
    .local v1, "maxConcurrent":I
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 109
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 110
    return-object v0
.end method

.method private deleteDownloadLocked(J)V
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 406
    .local v0, "info":Lcom/android/providers/downloads/DownloadInfo;
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 407
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 409
    :cond_0
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 410
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 411
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDownloadLocked() deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method private deleteFileIfExists(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 421
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFileIfExists() deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 425
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' couldn\'t be deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private enqueueFinalUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 211
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/providers/downloads/DownloadService;->mLastStartId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 215
    return-void
.end method

.method private enqueueUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/providers/downloads/DownloadService;->mLastStartId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method

.method private insertDownloadLocked(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 5
    .param p1, "reader"    # Lcom/android/providers/downloads/DownloadInfo$Reader;
    .param p2, "now"    # J

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    .line 381
    .local v0, "info":Lcom/android/providers/downloads/DownloadInfo;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing inserted download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    return-object v0
.end method

.method private updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 4
    .param p1, "reader"    # Lcom/android/providers/downloads/DownloadInfo$Reader;
    .param p2, "info"    # Lcom/android/providers/downloads/DownloadInfo;
    .param p3, "now"    # J

    .prologue
    .line 394
    invoke-virtual {p1, p2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 395
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing updated download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    return-void
.end method

.method private updateLocked()Z
    .locals 28

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v6}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v23

    .line 296
    .local v23, "now":J
    const/16 v20, 0x0

    .line 297
    .local v20, "isActive":Z
    const-wide v21, 0x7fffffffffffffffL

    .line 299
    .local v21, "nextActionMillis":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v26

    .line 301
    .local v26, "staleIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 302
    .local v5, "resolver":Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 305
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v25, Lcom/android/providers/downloads/DownloadInfo$Reader;

    move-object/from16 v0, v25

    invoke-direct {v0, v5, v13}, Lcom/android/providers/downloads/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 306
    .local v25, "reader":Lcom/android/providers/downloads/DownloadInfo$Reader;
    const-string v6, "_id"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 307
    .local v17, "idColumn":I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 308
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 309
    .local v15, "id":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/providers/downloads/DownloadInfo;

    .line 312
    .local v18, "info":Lcom/android/providers/downloads/DownloadInfo;
    if-eqz v18, :cond_1

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    .line 318
    :goto_1
    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v6, :cond_2

    .line 320
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    :cond_0
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 344
    :goto_2
    move-object/from16 v0, v18

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->nextActionMillis(J)J

    move-result-wide v6

    move-wide/from16 v0, v21

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v21

    .line 345
    goto :goto_0

    .line 315
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->insertDownloadLocked(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v18

    goto :goto_1

    .line 329
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/providers/downloads/DownloadInfo;->startDownloadIfReady(Ljava/util/concurrent/ExecutorService;)Z

    move-result v11

    .line 332
    .local v11, "activeDownload":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/providers/downloads/DownloadInfo;->startScanIfReady(Lcom/android/providers/downloads/DownloadScanner;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 339
    .local v12, "activeScan":Z
    or-int v20, v20, v11

    .line 340
    or-int v20, v20, v12

    goto :goto_2

    .line 347
    .end local v11    # "activeDownload":Z
    .end local v12    # "activeScan":Z
    .end local v15    # "id":J
    .end local v17    # "idColumn":I
    .end local v18    # "info":Lcom/android/providers/downloads/DownloadInfo;
    .end local v25    # "reader":Lcom/android/providers/downloads/DownloadInfo$Reader;
    :catchall_0
    move-exception v6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v6

    .restart local v17    # "idColumn":I
    .restart local v25    # "reader":Lcom/android/providers/downloads/DownloadInfo$Reader;
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 351
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 352
    .local v15, "id":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/providers/downloads/DownloadService;->deleteDownloadLocked(J)V

    goto :goto_3

    .line 356
    .end local v15    # "id":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/providers/downloads/DownloadNotifier;->updateWith(Ljava/util/Collection;)V

    .line 360
    const-wide/16 v6, 0x0

    cmp-long v6, v21, v6

    if-lez v6, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v21, v6

    if-gez v6, :cond_6

    .line 361
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v6, :cond_5

    .line 362
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scheduling start in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_5
    new-instance v19, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_WAKEUP"

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v19, "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    add-long v8, v23, v21

    const/4 v10, 0x0

    const/high16 v27, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-static {v0, v10, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 371
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_6
    return v20
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 432
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 433
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    monitor-enter v6

    .line 434
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 435
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 436
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 437
    .local v1, "id":Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 438
    .local v3, "info":Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/DownloadInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 440
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "info":Lcom/android/providers/downloads/DownloadInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 151
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "DownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 159
    :cond_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 160
    new-instance v0, Lcom/android/providers/downloads/StorageManager;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/StorageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 162
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadManager-UpdateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    .line 163
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 164
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/providers/downloads/DownloadScanner;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    .line 168
    new-instance v0, Lcom/android/providers/downloads/DownloadNotifier;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    .line 169
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadNotifier;->cancelAll()V

    .line 171
    new-instance v0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    .line 172
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadScanner;->shutdown()V

    .line 191
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 192
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 196
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 179
    .local v0, "returnValue":I
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "DownloadManager"

    const-string v2, "Service onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iput p3, p0, Lcom/android/providers/downloads/DownloadService;->mLastStartId:I

    .line 183
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->enqueueUpdate()V

    .line 184
    return v0
.end method
