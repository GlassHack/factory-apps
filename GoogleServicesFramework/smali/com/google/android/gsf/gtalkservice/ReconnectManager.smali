.class public Lcom/google/android/gsf/gtalkservice/ReconnectManager;
.super Ljava/lang/Object;
.source "ReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEndpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/gtalkservice/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mInMobileHipriorityMode:Z

.field private mInitialReconnectDelay:J

.field mLastInetReportNetworkType:I

.field mLastInetReportStatus:I

.field mLastInetReportSuccessful:Z

.field mLastInetReportTs:J

.field private mLastMobileNetworkOutageTs:J

.field private mLastNetworkAvailable:Z

.field private mLastNetworkBroadcastTs:J

.field private mLock:Ljava/lang/Object;

.field private mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field private mMaxReconnectDelay:J

.field mNetworkState:Landroid/net/NetworkInfo$State;

.field private mNetworkSuspended:Z

.field mNetworkType:I

.field mNotifyNetworkState:Landroid/net/NetworkInfo$State;

.field mNotifyNetworkType:I

.field private mRandomGenerator:Ljava/util/Random;

.field private mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

.field private mReconnectAlarmSet:Z

.field private mReconnectBackoffRateMultiplier:D

.field private mReconnectDelay:J

.field private mWifiDisconnectedTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 55
    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 59
    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkState:Landroid/net/NetworkInfo$State;

    .line 72
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    .line 85
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    .line 95
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    .line 96
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 99
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->clearNetworkOutageTimestamp()V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->initConnectionState()V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "networkType":I
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 110
    :cond_0
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(ZI)V

    .line 113
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 115
    new-instance v2, Lcom/google/android/gsf/gtalkservice/Alarm;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    const-string v4, "GTALK_CONN_ALARM"

    new-instance v5, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/Alarm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 121
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v3, "com.google.android.intent.action.GTALK_RECONNECT"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/Alarm;->setAction(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->handleAlarmCallback()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkThrottleReconnect(JJ)Z
    .locals 7
    .param p1, "wifiDisconnectTimestamp"    # J
    .param p3, "airplaneModeTurnedOffTimestamp"    # J

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 404
    .local v0, "now":J
    sub-long v3, v0, p1

    const-wide/16 v5, 0x4e20

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    sub-long v3, v0, p3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 414
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "checkThrottleReconnect = true"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 415
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private clearNetworkOutageTimestamp()V
    .locals 2

    .prologue
    .line 383
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    .line 384
    return-void
.end method

.method private getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    return-object v0
.end method

.method private handleAlarmCallback()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V

    .line 203
    return-void
.end method

.method private isWanMobileNetwork(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 622
    if-eq p1, v0, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 729
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReconnectMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method private runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V
    .locals 9
    .param p1, "task"    # Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;
    .param p2, "metaData"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v5

    .line 155
    .local v5, "mainEndpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v5, :cond_1

    .line 156
    const-string v7, "GTalkService"

    const-string v8, "runTaskForEndpoints: mainEndpoint not found, bail"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-interface {p1, v5, p2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;->run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V

    .line 162
    const/4 v6, 0x0

    .line 163
    .local v6, "singleConnection":Lcom/google/android/gsf/gtalkservice/Endpoint;
    const/4 v3, 0x0

    .line 165
    .local v3, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 170
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-object v6, v0

    .line 174
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v6, :cond_3

    .line 177
    invoke-interface {p1, v6, p2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;->run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V

    goto :goto_0

    .line 172
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v3    # "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    .local v4, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    move-object v3, v4

    .end local v4    # "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    .restart local v3    # "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    goto :goto_1

    .line 174
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 179
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 180
    .local v1, "connection":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-interface {p1, v1, p2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;->run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V

    goto :goto_2
.end method

.method private setConnectionError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V

    .line 240
    return-void
.end method

.method private setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V
    .locals 2
    .param p1, "networkState"    # Landroid/net/NetworkInfo$State;
    .param p2, "networkType"    # I

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternalNetworkState: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 629
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 630
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 631
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    .line 632
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldResetReconnectTimer()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 258
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_1

    .line 259
    const-string v4, "GTalkService"

    const-string v5, "[ReconnectMgr] shouldResetReconnectTimer: no connection!"

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return v3

    .line 263
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastConnectionAttemptSuccessful()Z

    move-result v1

    .line 264
    .local v1, "lastAttemptSuccessful":Z
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->wasLastConnectionRemainConnectedForLongEnough()Z

    move-result v2

    .line 267
    .local v2, "lastConnectionWasOfMininumDuration":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 268
    .local v3, "retVal":Z
    :cond_2
    if-nez v3, :cond_0

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldResetReconnectTimer: lastConnectionWasOfMininumDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastAttemptSuccessful="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 1
    .param p1, "endpoint"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit p0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelReconnectAlarm()V
    .locals 2

    .prologue
    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "cancelReconnectAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 366
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    .line 367
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 369
    :cond_1
    monitor-exit p0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearReconnectAlarm()V
    .locals 2

    .prologue
    .line 373
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "clearReconnectAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 377
    :cond_0
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->clearAlarm()V

    .line 379
    monitor-exit p0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v10, 0x3e8

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 690
    .local v5, "now":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReconnectManager (now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 693
    .local v0, "alarm":Lcom/google/android/gsf/gtalkservice/Alarm;
    if-eqz v0, :cond_2

    .line 694
    const-string v7, "-------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Alarm;->dump(Ljava/io/PrintWriter;)V

    .line 696
    const-string v7, "-------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v3

    .line 698
    .local v3, "nextReconnectTime":J
    sub-long v1, v3, v5

    .line 699
    .local v1, "diff":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 700
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next reconnect alarm will trigger in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-long v8, v1, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    .end local v1    # "diff":J
    .end local v3    # "nextReconnectTime":J
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last network state notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkBroadcastTs:J

    sub-long v8, v5, v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active network type (polled): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active network state (polled): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    if-eqz v7, :cond_0

    .line 716
    const-string v7, "network is suspended"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isNetworkAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InMobileHipriMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last Inet report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportSuccessful:Z

    if-eqz v7, :cond_3

    const-string v7, "successful"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportTs:J

    sub-long v8, v5, v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    return-void

    .line 703
    .restart local v1    # "diff":J
    .restart local v3    # "nextReconnectTime":J
    :cond_1
    const-string v7, "No reconnect alarm set"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 706
    .end local v1    # "diff":J
    .end local v3    # "nextReconnectTime":J
    :cond_2
    const-string v7, "null alarm!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :cond_3
    const-string v7, "failed"

    goto :goto_1
.end method

.method public getInitialDelay()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    return-wide v0
.end method

.method public getLastNetworkAvailable()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    return v0
.end method

.method public getNetworkState()Landroid/net/NetworkInfo$State;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    return v0
.end method

.method public getReconnectTime()J
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->getNextAlarmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public initConnectionState()V
    .locals 0

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->pollNetworkAvailable()Z

    .line 653
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 635
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 636
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public networkStateChanged(Landroid/net/NetworkInfo;JJ)V
    .locals 24
    .param p1, "notifyNetworkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "airplaneModeTurnedOnTimeStamp"    # J
    .param p4, "airplaneModeTurnedOffTimeStamp"    # J

    .prologue
    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    .line 442
    .local v17, "notifyNetworkType":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v16

    .line 443
    .local v16, "notifyNetworkState":Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 444
    .local v5, "activeNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v6, -0x1

    .line 445
    .local v6, "activeNetworkType":I
    const/4 v9, 0x0

    .line 447
    .local v9, "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkBroadcastTs:J

    .line 448
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkState:Landroid/net/NetworkInfo$State;

    .line 449
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkType:I

    .line 451
    if-eqz v5, :cond_1

    .line 452
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    .line 453
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 458
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v12

    .line 459
    .local v12, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v12, :cond_2

    .line 460
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 613
    :cond_0
    :goto_1
    return-void

    .line 455
    .end local v12    # "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    goto :goto_0

    .line 464
    .restart local v12    # "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_2
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v9

    .line 466
    const/16 v20, 0x5

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 467
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 469
    if-eqz v6, :cond_3

    const/16 v20, 0x6

    move/from16 v0, v20

    if-ne v6, v0, :cond_4

    .line 471
    :cond_3
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->ensureRouteOverMobileHipriNetworkInterface()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    .line 473
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 474
    const-string v20, "networkStateChanged for MOBILE_HIPRI: set MOBILE_HIPRI=true"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 497
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 500
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 501
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 502
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged: active_net_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", current_net_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", in MOBILE_HIPRI, ignore"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 476
    :cond_5
    const-string v20, "networkStateChanged for MOBILE_HIPRI: MOBILE_HIPRI=false, ensureRouteOverMobileHipriNetworkInterface() failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 480
    :cond_6
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 482
    const-string v20, "networkStateChanged: MOBILE_HIPRI disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 483
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    goto :goto_2

    .line 485
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 486
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mWifiDisconnectedTimeStamp:J

    goto/16 :goto_2

    .line 490
    :cond_8
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 492
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mWifiDisconnectedTimeStamp:J

    goto/16 :goto_2

    .line 506
    :cond_9
    const-string v20, "networkStateChanged: reset MOBILE_HIPRI to false"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 507
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    .line 511
    :cond_a
    const-string v20, "GTalkService"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 512
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged (has active network): active_network_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", curr_network_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", curr_network_state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mcs_conn_state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 519
    :cond_b
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 520
    .local v7, "activeState":Landroid/net/NetworkInfo$State;
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    .line 521
    .local v14, "isConnecting":Z
    :goto_3
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v13

    .line 522
    .local v13, "isConnected":Z
    :goto_4
    const/16 v18, 0x0

    .line 526
    .local v18, "shouldThrottleReconnect":Z
    if-nez v14, :cond_c

    if-eqz v13, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v6, v0, :cond_f

    .line 528
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "### networkStateChanged: active and curr network type/state are the same("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "), ignore"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 532
    if-eqz v13, :cond_0

    .line 533
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    goto/16 :goto_1

    .line 520
    .end local v13    # "isConnected":Z
    .end local v14    # "isConnecting":Z
    .end local v18    # "shouldThrottleReconnect":Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_3

    .line 521
    .restart local v14    # "isConnecting":Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_4

    .line 538
    .restart local v13    # "isConnected":Z
    .restart local v18    # "shouldThrottleReconnect":Z
    :cond_f
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 541
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isWanMobileNetwork(I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 542
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mWifiDisconnectedTimeStamp:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->checkThrottleReconnect(JJ)Z

    move-result v18

    .line 546
    :cond_10
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 548
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V

    .line 551
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 552
    .local v15, "networkWasSuspended":Z
    if-nez v13, :cond_12

    if-eqz v18, :cond_12

    if-eqz v15, :cond_14

    .line 559
    :cond_12
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V

    .line 562
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 583
    :cond_13
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->clearNetworkOutageTimestamp()V

    goto/16 :goto_1

    .line 563
    :cond_14
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 566
    const/16 v19, 0x0

    .line 568
    .local v19, "useLongDelay":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isWanMobileNetwork(I)Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_15

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v22, v0

    sub-long v10, v20, v22

    .line 570
    .local v10, "diff":J
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/Account;->getShortNetworkDowntime()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v10, v20

    if-lez v20, :cond_15

    .line 571
    const/16 v19, 0x1

    .line 572
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged: mLastMobileNetworkOutageTs="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", diff="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", use long delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 579
    .end local v10    # "diff":J
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 580
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V

    goto/16 :goto_5

    .line 585
    .end local v7    # "activeState":Landroid/net/NetworkInfo$State;
    .end local v13    # "isConnected":Z
    .end local v14    # "isConnecting":Z
    .end local v15    # "networkWasSuspended":Z
    .end local v18    # "shouldThrottleReconnect":Z
    .end local v19    # "useLongDelay":Z
    :cond_16
    const-string v20, "GTalkService"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 586
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged (no active network): , notify_network_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", notify_network_state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 591
    :cond_17
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 594
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_18

    .line 597
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    const-wide/16 v20, 0x0

    cmp-long v20, p2, v20

    if-lez v20, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v20, v20, p2

    const-wide/16 v22, 0x4e20

    cmp-long v20, v20, v22

    if-gez v20, :cond_1a

    const/4 v8, 0x1

    .line 600
    .local v8, "airplaneMode":Z
    :goto_6
    if-nez v8, :cond_18

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    .line 605
    .end local v8    # "airplaneMode":Z
    :cond_18
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V

    .line 608
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 609
    const-string v20, "GTalkService"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_19

    const-string v20, "network down, force close conn"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 610
    :cond_19
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->forceCloseConnection()V

    goto/16 :goto_1

    .line 597
    :cond_1a
    const/4 v8, 0x0

    goto :goto_6
.end method

.method public pollNetworkAvailable()Z
    .locals 3

    .prologue
    .line 640
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 641
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 642
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    .line 643
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 648
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    return v1

    .line 645
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    .line 646
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    goto :goto_0
.end method

.method public removeConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 1
    .param p1, "connection"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-ne p1, v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setMainEndpoint(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)V

    .line 141
    :goto_0
    monitor-exit p0

    .line 142
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportInetCondition(Z)V
    .locals 1
    .param p1, "online"    # Z

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(ZI)V

    .line 669
    return-void
.end method

.method public reportInetCondition(ZI)V
    .locals 6
    .param p1, "online"    # Z
    .param p2, "networkType"    # I

    .prologue
    .line 672
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 674
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### report Inet status: online="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", networkType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 675
    if-eqz p1, :cond_0

    const/16 v1, 0x64

    .line 677
    .local v1, "status":I
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.INET_CONDITION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "is_connected"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 679
    const-string v2, "network_type"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 682
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportStatus:I

    .line 683
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportTs:J

    .line 684
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportNetworkType:I

    .line 685
    monitor-exit v3

    .line 686
    return-void

    .line 675
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "status":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resetReconnectionTimer(Z)V
    .locals 9
    .param p1, "useLongDelay"    # Z

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x3

    .line 281
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 283
    .local v1, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 289
    const-string v2, "GTalkService"

    invoke-static {v2, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReconnDelay set to initial value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 298
    .local v0, "account":Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz p1, :cond_4

    .line 299
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMinReconnectDelayLong()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectVariantLong()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    .line 301
    const-string v2, "GTalkService"

    invoke-static {v2, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use long initial value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 312
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMaxReconnectDelay()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J

    .line 313
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectBackoffRateMultiplier()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectBackoffRateMultiplier:D

    .line 314
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    goto :goto_0

    .line 305
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMinReconnectDelayShort()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectVariantShort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    .line 307
    const-string v2, "GTalkService"

    invoke-static {v2, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use short initial value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public retryConnection(Z)V
    .locals 2
    .param p1, "retryNow"    # Z

    .prologue
    .line 206
    new-instance v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V

    .line 231
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMainEndpoint(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)V
    .locals 0
    .param p1, "endpoint"    # Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 150
    return-void
.end method

.method public setReconnectAlarm()V
    .locals 11

    .prologue
    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    if-eqz v6, :cond_0

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 321
    .local v4, "now":J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v0

    .line 322
    .local v0, "nextAlarmTime":J
    cmp-long v6, v0, v4

    if-gez v6, :cond_5

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm failed to fire: alarmTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 332
    .end local v0    # "nextAlarmTime":J
    .end local v4    # "now":J
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    .line 334
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->shouldResetReconnectTimer()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 336
    const-string v6, "setReconAlarm: reset timer"

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 338
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 341
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReconAlarm: retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 343
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 345
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Alarm;->initAlarm()V

    .line 347
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTimer(J)V

    .line 348
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Alarm;->start()V

    .line 352
    :cond_3
    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectBackoffRateMultiplier:D

    mul-double/2addr v6, v8

    double-to-long v2, v6

    .line 353
    .local v2, "nextDelay":J
    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_7

    .end local v2    # "nextDelay":J
    :goto_0
    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    .line 354
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReconAlarm: set delay to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 357
    :cond_4
    monitor-exit p0

    .line 358
    :goto_1
    return-void

    .line 325
    .restart local v0    # "nextAlarmTime":J
    .restart local v4    # "now":J
    :cond_5
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    const-string v6, "setReconAlarm: alarm already set"

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 328
    :cond_6
    monitor-exit p0

    goto :goto_1

    .line 357
    .end local v0    # "nextAlarmTime":J
    .end local v4    # "now":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 353
    .restart local v2    # "nextDelay":J
    :cond_7
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
