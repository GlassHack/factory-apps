.class public Lcom/android/providers/downloads/DownloadThread;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadThread$State;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/android/providers/downloads/DownloadInfo;

.field private final mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

.field private volatile mPolicyDirty:Z

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPowerReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mPowerStateDirty:Z

.field private final mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field private final mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemFacade"    # Lcom/android/providers/downloads/SystemFacade;
    .param p3, "info"    # Lcom/android/providers/downloads/DownloadInfo;
    .param p4, "storageManager"    # Lcom/android/providers/downloads/StorageManager;
    .param p5, "notifier"    # Lcom/android/providers/downloads/DownloadNotifier;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadThread$1;-><init>(Lcom/android/providers/downloads/DownloadThread;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 933
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$2;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadThread$2;-><init>(Lcom/android/providers/downloads/DownloadThread;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 112
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 113
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 114
    iput-object p5, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadThread;)Lcom/android/providers/downloads/DownloadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadThread;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/providers/downloads/DownloadThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadThread;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/providers/downloads/DownloadThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadThread;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadThread;->mPowerStateDirty:Z

    return p1
.end method

.method private addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 859
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 863
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "User-Agent"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 864
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_1
    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v2, :cond_3

    .line 872
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 873
    const-string v2, "If-Match"

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_2
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_3
    return-void
.end method

.method private cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .locals 4
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;

    .prologue
    .line 663
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 463
    iput-boolean v3, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    .line 465
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    move-result-object v0

    .line 466
    .local v0, "networkUsable":Lcom/android/providers/downloads/DownloadInfo$NetworkState;
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    if-eq v0, v2, :cond_2

    .line 467
    const/16 v1, 0xc3

    .line 468
    .local v1, "status":I
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    if-ne v0, v2, :cond_1

    .line 469
    const/16 v1, 0xc4

    .line 470
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    .line 475
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 471
    :cond_1
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->RECOMMENDED_UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    if-ne v0, v2, :cond_0

    .line 472
    const/16 v1, 0xc4

    .line 473
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_0

    .line 477
    .end local v1    # "status":I
    :cond_2
    return-void
.end method

.method private checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ea

    .line 552
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 554
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 557
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v0, :cond_2

    .line 558
    :cond_1
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ea

    const-string v3, "download canceled"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 560
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    if-eqz v0, :cond_3

    .line 564
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 567
    :cond_3
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPowerStateDirty:Z

    if-eqz v0, :cond_4

    .line 568
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkPower()V

    .line 570
    :cond_4
    return-void
.end method

.method private checkPower()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPowerStateDirty:Z

    .line 486
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->checkPower()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throwing StopRequestException for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0xc5

    const-string v2, "download cannot proceed in current power state"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    return-void
.end method

.method private cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V
    .locals 3
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "finalStatus"    # I

    .prologue
    .line 538
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 540
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupDestination() deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 543
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 545
    :cond_1
    return-void
.end method

.method private executeDownload(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 9
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadThread$State;->resetBeforeExecute()V

    .line 316
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 319
    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 320
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping initiating request for download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; already completed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 362
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .local v4, "responseCode":I
    :sswitch_0
    :try_start_0
    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "location":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-direct {v5, v6, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 364
    const/16 v5, 0x12d

    if-ne v4, v5, :cond_1

    .line 366
    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_1
    if-eqz v1, :cond_2

    .end local v3    # "location":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 325
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "responseCode":I
    :cond_2
    iget v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectionCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectionCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_6

    .line 328
    const/4 v1, 0x0

    .line 330
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 331
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkPower()V

    .line 332
    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 333
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 334
    const/16 v5, 0x4e20

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 335
    const/16 v5, 0x4e20

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 337
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 339
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 340
    .restart local v4    # "responseCode":I
    sparse-switch v4, :sswitch_data_0

    .line 384
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/downloads/StopRequestException;->throwUnhandledHttpError(ILjava/lang/String;)Lcom/android/providers/downloads/StopRequestException;

    .line 392
    if-eqz v1, :cond_2

    goto :goto_1

    .line 342
    :sswitch_1
    iget-boolean v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v5, :cond_4

    .line 343
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1e9

    const-string v7, "Expected partial, but received OK"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1ef

    invoke-direct {v5, v6, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v5

    .line 346
    .restart local v4    # "responseCode":I
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 347
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    if-eqz v1, :cond_0

    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 351
    :sswitch_2
    :try_start_4
    iget-boolean v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-nez v5, :cond_5

    .line 352
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1e9

    const-string v7, "Expected OK, but received partial"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 355
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 392
    if-eqz v1, :cond_0

    goto :goto_2

    .line 371
    :sswitch_3
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1e9

    const-string v7, "Requested range not satisfiable"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 375
    :sswitch_4
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->parseRetryAfterHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 376
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1f7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 380
    :sswitch_5
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1f4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 396
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "responseCode":I
    :cond_6
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1f1

    const-string v7, "Too many redirects"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xce -> :sswitch_2
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x133 -> :sswitch_0
        0x1a0 -> :sswitch_3
        0x1f4 -> :sswitch_5
        0x1f7 -> :sswitch_4
    .end sparse-switch
.end method

.method private finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;

    .prologue
    const/4 v2, -0x1

    .line 527
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v1, 0x1a4

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 531
    :cond_0
    return-void
.end method

.method public static getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J
    .locals 2
    .param p0, "conn"    # Ljava/net/URLConnection;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 946
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 948
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 947
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 8
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 642
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 644
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 645
    const-string v2, "total_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 649
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 651
    .local v0, "lengthMismatched":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 652
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    const-string v4, "mismatched content length; unable to resume"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 649
    .end local v0    # "lengthMismatched":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 656
    .restart local v0    # "lengthMismatched":Z
    :cond_2
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ef

    const-string v4, "closed socket before end of file"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 660
    :cond_3
    return-void
.end method

.method public static isStatusRetryable(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 957
    sparse-switch p0, :sswitch_data_0

    .line 963
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 961
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 957
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ef -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "finalStatus"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "numFailed"    # I

    .prologue
    .line 884
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughDatabase(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 885
    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested()V

    .line 888
    :cond_0
    return-void
.end method

.method private notifyThroughDatabase(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V
    .locals 5
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "finalStatus"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "numFailed"    # I

    .prologue
    const/4 v4, 0x0

    .line 892
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 893
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 897
    const-string v1, "numfailed"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v1, "method"

    iget v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    const-string v1, "uri"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 906
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 909
    return-void
.end method

.method private parseRetryAfterHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const v3, 0x15180

    const/16 v2, 0x1e

    .line 773
    const-string v0, "Retry-After"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 774
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-gez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 785
    :goto_0
    return-void

    .line 777
    :cond_0
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-ge v0, v2, :cond_2

    .line 778
    iput v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 782
    :cond_1
    :goto_1
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    sget-object v1, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 783
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 779
    :cond_2
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-le v0, v3, :cond_1

    .line 780
    iput v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_1
.end method

.method private processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 706
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    iget-object v9, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-static/range {v0 .. v9}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 717
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 719
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 720
    return-void
.end method

.method private readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;[BLjava/io/InputStream;)I
    .locals 6
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "data"    # [B
    .param p3, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 676
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 680
    :goto_0
    return v2

    .line 677
    :catch_0
    move-exception v0

    .line 679
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "unexpected end of stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    const/4 v2, -0x1

    goto :goto_0

    .line 683
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 685
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 686
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; unable to resume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 690
    :cond_1
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ef

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 7
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    .line 744
    const-string v2, "Content-Disposition"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    .line 745
    const-string v2, "Content-Location"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    .line 747
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 748
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 751
    :cond_0
    const-string v2, "ETag"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 753
    const-string v2, "Transfer-Encoding"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "transferEncoding":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 755
    const-string v2, "Content-Length"

    invoke-static {p2, v2, v5, v6}, Lcom/android/providers/downloads/DownloadThread;->getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 761
    :goto_0
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    iput-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 762
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    iput-wide v3, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 764
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    const-string v2, "chunked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 766
    .local v0, "noSizeInfo":Z
    :goto_1
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 767
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    const-string v4, "can\'t know size of download, giving up"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 757
    .end local v0    # "noSizeInfo":Z
    :cond_2
    const-string v2, "DownloadManager"

    const-string v3, "Ignoring Content-Length since Transfer-Encoding is also defined"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iput-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    goto :goto_0

    .line 764
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 770
    .restart local v0    # "noSizeInfo":Z
    :cond_4
    return-void
.end method

.method private reportProgress(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 12
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;

    .prologue
    .line 576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 578
    .local v0, "now":J
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleStart:J

    sub-long v2, v0, v7

    .line 579
    .local v2, "sampleDelta":J
    const-wide/16 v7, 0x1f4

    cmp-long v7, v2, v7

    if-lez v7, :cond_1

    .line 580
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v9, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleBytes:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    div-long v4, v7, v2

    .line 583
    .local v4, "sampleSpeed":J
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 584
    iput-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    .line 590
    :goto_0
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleStart:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 591
    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    iget-object v8, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v8, v8, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget-wide v10, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/providers/downloads/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 594
    :cond_0
    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleStart:J

    .line 595
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iput-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleBytes:J

    .line 598
    .end local v4    # "sampleSpeed":J
    :cond_1
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v9, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1000

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x5dc

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 600
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "current_bytes"

    iget-wide v8, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 602
    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v8}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iput-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 604
    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 606
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 586
    .restart local v4    # "sampleSpeed":J
    :cond_3
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    const-wide/16 v9, 0x3

    mul-long/2addr v7, v9

    add-long/2addr v7, v4

    const-wide/16 v9, 0x4

    div-long/2addr v7, v9

    iput-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    goto :goto_0
.end method

.method private runInternal()V
    .locals 20

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->queryDownloadStatus(Landroid/content/ContentResolver;J)I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 191
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Download "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " already finished; skipping"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v13, Lcom/android/providers/downloads/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-direct {v13, v15}, Lcom/android/providers/downloads/DownloadThread$State;-><init>(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 196
    .local v13, "state":Lcom/android/providers/downloads/DownloadThread$State;
    const/4 v14, 0x0

    .line 197
    .local v14, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/16 v7, 0x1eb

    .line 198
    .local v7, "finalStatus":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v11, v15, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    .line 199
    .local v11, "numFailed":I
    const/4 v4, 0x0

    .line 201
    .local v4, "errorMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v10

    .line 202
    .local v10, "netPolicy":Landroid/net/NetworkPolicyManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    const-string v16, "power"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 205
    .local v12, "pm":Landroid/os/PowerManager;
    const/4 v15, 0x1

    :try_start_0
    const-string v16, "DownloadManager"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .line 206
    new-instance v15, Landroid/os/WorkSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v14, v15}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 207
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v10, v15}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 211
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v15, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v6, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Download "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " starting"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 221
    .local v8, "info":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_1

    .line 222
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    iput v15, v13, Lcom/android/providers/downloads/DownloadThread$State;->mNetworkType:I

    .line 227
    :cond_1
    const/16 v15, -0xff

    invoke-static {v15}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v15, v15, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-static {v15}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V
    :try_end_0
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    new-instance v15, Ljava/net/URL;

    iget-object v0, v13, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v15, v13, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/downloads/DownloadThread;->executeDownload(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 239
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/downloads/DownloadThread;->finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    :try_end_2
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    const/16 v7, 0xc8

    .line 286
    const/16 v15, 0xc8

    if-ne v7, v15, :cond_2

    .line 287
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 290
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 291
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v4, v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 296
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Download "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " finished with status "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v7}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v10, v15}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    if-eqz v14, :cond_3

    .line 303
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 304
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :goto_1
    const/4 v14, 0x0

    .line 307
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v15}, Lcom/android/providers/downloads/StorageManager;->incrementNumDownloadsSoFar()V

    goto/16 :goto_0

    .line 233
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_3
    new-instance v15, Lcom/android/providers/downloads/StopRequestException;

    const/16 v16, 0x190

    move/from16 v0, v16

    invoke-direct {v15, v0, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v15
    :try_end_3
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v3

    .line 243
    .local v3, "error":Lcom/android/providers/downloads/StopRequestException;
    :try_start_4
    invoke-virtual {v3}, Lcom/android/providers/downloads/StopRequestException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 244
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Aborting request for download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "msg":Ljava/lang/String;
    const-string v15, "DownloadManager"

    invoke-static {v15, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v15, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v15, :cond_4

    .line 247
    const-string v15, "DownloadManager"

    invoke-static {v15, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :cond_4
    invoke-virtual {v3}, Lcom/android/providers/downloads/StopRequestException;->getFinalStatus()I

    move-result v7

    .line 253
    const/16 v15, 0xc2

    if-ne v7, v15, :cond_7

    .line 254
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Execution should always throw final error codes"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    .end local v3    # "error":Lcom/android/providers/downloads/StopRequestException;
    .end local v9    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v7, v0, :cond_5

    .line 287
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 290
    :cond_5
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 291
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v4, v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 296
    const-string v16, "DownloadManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Download "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " finished with status "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    if-eqz v14, :cond_6

    .line 303
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 304
    const/4 v14, 0x0

    .line 286
    :cond_6
    throw v15

    .line 258
    .restart local v3    # "error":Lcom/android/providers/downloads/StopRequestException;
    .restart local v9    # "msg":Ljava/lang/String;
    :cond_7
    :try_start_5
    invoke-static {v7}, Lcom/android/providers/downloads/DownloadThread;->isStatusRetryable(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 259
    iget-boolean v15, v13, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    if-eqz v15, :cond_a

    .line 260
    const/4 v11, 0x1

    .line 265
    :goto_2
    const/4 v15, 0x5

    if-ge v11, v15, :cond_8

    .line 266
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 267
    .restart local v8    # "info":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    iget v0, v13, Lcom/android/providers/downloads/DownloadThread$State;->mNetworkType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v15

    if-eqz v15, :cond_b

    .line 270
    const/16 v7, 0xc2

    .line 286
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_8
    :goto_3
    const/16 v15, 0xc8

    if-ne v7, v15, :cond_9

    .line 287
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 290
    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 291
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v4, v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 296
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Download "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " finished with status "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v7}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v10, v15}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    if-eqz v14, :cond_3

    .line 303
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 262
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 273
    .restart local v8    # "info":Landroid/net/NetworkInfo;
    :cond_b
    const/16 v7, 0xc3

    goto :goto_3

    .line 279
    .end local v3    # "error":Lcom/android/providers/downloads/StopRequestException;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    .end local v9    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 280
    .local v5, "ex":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 281
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception for id "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 282
    .restart local v9    # "msg":Ljava/lang/String;
    const-string v15, "DownloadManager"

    invoke-static {v15, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 283
    const/16 v7, 0x1eb

    .line 286
    const/16 v15, 0xc8

    if-ne v7, v15, :cond_c

    .line 287
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 290
    :cond_c
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 291
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v4, v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 296
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Download "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " finished with status "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v7}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v10, v15}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    if-eqz v14, :cond_3

    .line 303
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1
.end method

.method private setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 7
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 793
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_0

    .line 794
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "have run thread before for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and state.mFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v4}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 800
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1ec

    const-string v5, "found invalid internal destination filename"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 804
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 805
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 806
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_2

    .line 807
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and state.mFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 811
    .local v1, "fileLength":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    .line 813
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_3

    .line 814
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDestinationFile() found fileLength=0, deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 818
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 819
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_4

    .line 820
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BUT starting from scratch again: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "fileLength":J
    :cond_4
    :goto_0
    return-void

    .line 823
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "fileLength":J
    :cond_5
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_7

    .line 825
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_6

    .line 826
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDestinationFile() unable to resume download, deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 830
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1e9

    const-string v5, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 834
    :cond_7
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_8

    .line 835
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and starting with file of length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_8
    long-to-int v3, v1

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 839
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    .line 840
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 842
    :cond_9
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 843
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 844
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_4

    .line 845
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state.mCurrentBytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and setting mContinuingDownload to true: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 501
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 503
    .local v1, "data":[B
    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/android/providers/downloads/DownloadThread;->readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;[BLjava/io/InputStream;)I

    move-result v0

    .line 504
    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 505
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 506
    return-void

    .line 509
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 510
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/providers/downloads/DownloadThread;->writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BILjava/io/OutputStream;)V

    .line 511
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 512
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->reportProgress(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 514
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 515
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 11
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v5, 0x0

    .line 405
    .local v5, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 406
    .local v6, "out":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 409
    .local v8, "outFd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 415
    :try_start_1
    iget-object v9, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 416
    new-instance v2, Landroid/drm/DrmManagerClient;

    iget-object v9, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v9, Ljava/io/File;

    iget-object v10, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "rw"

    invoke-direct {v4, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    .local v4, "file":Ljava/io/RandomAccessFile;
    new-instance v7, Landroid/drm/DrmOutputStream;

    iget-object v9, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-direct {v7, v2, v4, v9}, Landroid/drm/DrmOutputStream;-><init>(Landroid/drm/DrmManagerClient;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 420
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v1, v2

    .line 431
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :goto_0
    :try_start_4
    invoke-direct {p0, p1, v5, v6}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 434
    :try_start_5
    instance-of v9, v6, Landroid/drm/DrmOutputStream;

    if-eqz v9, :cond_0

    .line 435
    move-object v0, v6

    check-cast v0, Landroid/drm/DrmOutputStream;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/drm/DrmOutputStream;->finish()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    :cond_0
    if-eqz v1, :cond_1

    .line 443
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->release()V

    .line 446
    :cond_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 449
    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 450
    :cond_2
    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 453
    :cond_3
    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 456
    return-void

    .line 410
    :catch_0
    move-exception v3

    .line 411
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    new-instance v9, Lcom/android/providers/downloads/StopRequestException;

    const/16 v10, 0x1ef

    invoke-direct {v9, v10, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 442
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v1, :cond_4

    .line 443
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->release()V

    .line 446
    :cond_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 449
    if-eqz v6, :cond_5

    :try_start_9
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 450
    :cond_5
    if-eqz v8, :cond_6

    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 453
    :cond_6
    :goto_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 442
    throw v9

    .line 422
    :cond_7
    :try_start_b
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v9, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 423
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :try_start_c
    move-object v0, v7

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 425
    :catch_1
    move-exception v3

    .line 426
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_d
    new-instance v9, Lcom/android/providers/downloads/StopRequestException;

    const/16 v10, 0x1ec

    invoke-direct {v9, v10, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v9

    .line 437
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 438
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v9, Lcom/android/providers/downloads/StopRequestException;

    const/16 v10, 0x1ec

    invoke-direct {v9, v10, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 453
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    :catchall_2
    move-exception v9

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .line 451
    :catch_3
    move-exception v9

    goto :goto_1

    :catch_4
    move-exception v9

    goto :goto_1

    :catch_5
    move-exception v10

    goto :goto_3

    :catch_6
    move-exception v10

    goto :goto_3

    .line 442
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catchall_3
    move-exception v9

    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    goto :goto_2

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_4
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    goto :goto_2

    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_5
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 425
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    goto :goto_4

    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    goto :goto_4

    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_9
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method private updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 5
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;

    .prologue
    const/4 v4, 0x0

    .line 727
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 730
    const-string v1, "etag"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 733
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_1
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 122
    .local v0, "userAgent":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/android/providers/downloads/Constants;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 125
    :cond_0
    return-object v0
.end method

.method private writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BILjava/io/OutputStream;)V
    .locals 7
    .param p1, "state"    # Lcom/android/providers/downloads/DownloadThread$State;
    .param p2, "data"    # [B
    .param p3, "bytesRead"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v5, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/providers/downloads/StorageManager;->verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V

    .line 618
    const/4 v1, 0x0

    .line 621
    .local v1, "forceVerified":Z
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p4, p2, v2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 625
    .local v0, "ex":Ljava/io/IOException;
    if-nez v1, :cond_0

    .line 627
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v5, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    .line 628
    const/4 v1, 0x1

    goto :goto_0

    .line 630
    :cond_0
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ec

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 178
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->runInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/providers/downloads/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/downloads/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    throw v0
.end method
