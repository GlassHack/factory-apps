.class public Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
.super Lcom/google/android/gsf/gtalkservice/Endpoint;
.source "AndroidEndpoint.java"


# instance fields
.field private d2cmWhitelist:[Ljava/lang/String;

.field private enableD2cm:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

.field private mEnableDataActiveNotification:Z

.field private mEnableIdleNotification:Z

.field private mEnablePowerStateNotification:Z

.field private mEnableSignalsProtocol:Z

.field private mForeground:I

.field protected mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

.field protected mLastDataMessageReceivedTs:J

.field protected mLastDataMessageSentTs:J

.field private mSendFgStatus:Z

.field private mStopLock:Ljava/util/concurrent/Semaphore;

.field private mStopped:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p2, "account"    # Lcom/google/android/gsf/gtalkservice/Account;
    .param p3, "workerLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p3}, Lcom/google/android/gsf/gtalkservice/Endpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    .line 89
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableIdleNotification:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnablePowerStateNotification:Z

    .line 95
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableDataActiveNotification:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSendFgStatus:Z

    .line 102
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableSignalsProtocol:Z

    .line 106
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mForeground:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopped:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopLock:Ljava/util/concurrent/Semaphore;

    .line 115
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->init(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private appendSerial(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "resString"    # Ljava/lang/StringBuffer;
    .param p2, "serialNumber"    # I

    .prologue
    .line 766
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 767
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 769
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 770
    return-void
.end method

.method private asyncCloseConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 479
    new-instance v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;

    const-string v1, "close-XMPP-connection"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;-><init>(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;->start()V

    .line 485
    return-void
.end method

.method private clearHeartbeatAlarm()V
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->clearAlarm()V

    .line 572
    :cond_0
    monitor-exit p0

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getJidResourceFromSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getJidResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initHeartbeatAlarm()V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getActiveHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getIdleHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getSyncHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getDefaultHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getHeartbeatAckTimeout()I

    move-result v0

    if-lez v0, :cond_0

    .line 548
    new-instance v0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    .line 553
    :cond_0
    return-void
.end method

.method private login(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "username":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, "authToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUseAndroidId()Z

    move-result v3

    .line 396
    .local v3, "useAndroidId":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getLoginSettings()Ljava/util/Map;

    move-result-object v19

    .line 398
    .local v19, "loginSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 403
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "gtalk_compress2"

    const/4 v8, 0x0

    invoke-static {v2, v6, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 407
    .local v16, "compress":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 408
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 411
    :cond_0
    const-wide/16 v9, -0x1

    .line 412
    .local v9, "rmqLastReceived":J
    const/4 v12, 0x0

    .line 413
    .local v12, "initialS2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v21

    .line 415
    .local v21, "rmq2Manager":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processAndRetrieveInitialS2dIds()Ljava/util/List;

    move-result-object v12

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->initHeartbeatAlarm()V

    .line 420
    const/16 v18, 0x0

    .line 421
    .local v18, "upload":Lorg/jivesoftware/smack/packet/HeartbeatStat;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->shouldUploadHeartbeatStat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-result-object v18

    .line 423
    const-string v2, "GTalkService/c"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Heartbeat stat uploaded: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v14

    .line 428
    .local v14, "accountId":J
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->updateUserStatus(Ljava/util/Map;I)Z

    .line 430
    const-string v2, "GTalkService/c"

    const-string v6, "AndroidEndpoint.login"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v20

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v20}, Lorg/jivesoftware/smack/XMPPConnection;->login(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;ZJIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->initStat(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V

    .line 449
    const-string v2, "GTalkService/c"

    const-string v6, "AndroidEndpoint.login successful"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeXmppConnection(Ljava/lang/String;ILjava/lang/String;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gez p2, :cond_1

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMPTY HOSTNAME or INVALID PORT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cannot make connection!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->loge(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastConnectionAttemptSuccessful:Z

    .line 362
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Ljava/net/UnknownHostException;

    const-string v4, "empty hostname/invalid port"

    invoke-direct {v2, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_ssl_handshake_timeout_ms"

    const v4, 0xea60

    invoke-static {v1, v2, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 369
    .local v3, "sslHandshakeTimeout":I
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeXmppConnection: sslhandshake timeout="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v1, Landroid/net/SSLSessionCache;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 376
    .local v6, "socketFactory":Ljavax/net/SocketFactory;
    new-instance v0, Lorg/jivesoftware/smack/SSLXMPPConnection;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/SSLXMPPConnection;-><init>(Ljava/lang/String;IIZLjava/lang/String;Ljavax/net/SocketFactory;)V

    .line 380
    .local v0, "connection":Lorg/jivesoftware/smack/SSLXMPPConnection;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setDefaultAccountId(J)V

    .line 381
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->bumpConnectionsAttemptedCount()V

    .line 382
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 383
    invoke-virtual {v0}, Lorg/jivesoftware/smack/SSLXMPPConnection;->connect()V

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v4, 0x64

    div-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setLocalConnectionId(I)V

    .line 388
    return-object v0
.end method

.method private saveJidResourceToSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "jidResource"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setJidResource(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private setD2cmGservices()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_d2cm"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->enableD2cm:I

    .line 149
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "d2cm_whitelist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "d2cmList":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->d2cmWhitelist:[Ljava/lang/String;

    .line 152
    return-void
.end method

.method private shouldUploadHeartbeatStat()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startHeartbeatAlarm(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 556
    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 560
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->startAlarm()V

    .line 561
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setHeartbeatAlarm(Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;)V

    .line 563
    :cond_0
    monitor-exit p0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateUserStatus(Ljava/util/Map;I)Z
    .locals 12
    .param p2, "stoppingHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "loginSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 721
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v5, "newStopped":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    .local v7, "stoppedString":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 725
    .local v0, "bgString":Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    .line 727
    .local v1, "fg":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 728
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mActivityManager:Landroid/app/ActivityManager;

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 729
    iget v9, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget v9, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-direct {p0, v7, v9}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->appendSerial(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 731
    :cond_1
    iget v9, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    if-eq v9, v1, :cond_0

    .line 732
    iget v9, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-direct {p0, v0, v9}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->appendSerial(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 735
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v9, -0x1

    if-eq p2, v9, :cond_3

    .line 736
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v6

    .line 737
    .local v6, "serialNumber":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-direct {p0, v7, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->appendSerial(Ljava/lang/StringBuffer;I)V

    .line 741
    .end local v6    # "serialNumber":I
    :cond_3
    const/4 v4, 0x0

    .line 742
    .local v4, "needsUpdate":Z
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopped:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopped:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 743
    :cond_4
    const/4 v4, 0x1

    .line 745
    :cond_5
    iget v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mForeground:I

    if-eq v9, v1, :cond_6

    iget-boolean v9, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSendFgStatus:Z

    if-eqz v9, :cond_6

    .line 746
    const/4 v4, 0x1

    .line 749
    :cond_6
    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopped:Ljava/util/List;

    .line 750
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mForeground:I

    .line 751
    const-string v9, "u:f"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 753
    const-string v9, "u:b"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 756
    const-string v9, "u:s"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :cond_8
    const-string v9, "GTalkService"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 760
    const-string v9, "GTalkService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_9
    return v4
.end method


# virtual methods
.method public broadcastConnected()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "connectedIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method public broadcastDisconnected(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "disconnectIntent":Landroid/content/Intent;
    const-string v1, "err"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method protected closeXmppConnection(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "async"    # Z

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 468
    :cond_0
    if-eqz p2, :cond_1

    .line 472
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->asyncCloseConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    goto :goto_0

    .line 474
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    goto :goto_0
.end method

.method protected connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->maybeSendSignals()V

    .line 490
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->startHeartbeatAlarm(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 491
    return-void
.end method

.method protected createAsyncWakelockTag()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTALK_ASYNC_CONN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAsyncWakelockTag:Ljava/lang/String;

    .line 183
    return-void
.end method

.method protected doConnectDelegate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 323
    const-string v1, "GTalkService/c"

    const-string v2, "doConnectDelegate: making main connection"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->makeXmppConnection(Ljava/lang/String;ILjava/lang/String;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 328
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteLock()V

    .line 329
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    .line 334
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->login(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 331
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    throw v1
.end method

.method protected doConnectFailedDelegate()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 350
    return-void
.end method

.method protected doConnectSucceededDelegate()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendPacketsForAccount(J)V

    .line 343
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 344
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 595
    const-string v5, "Type: Android Endpoint"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Account;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->dump(Ljava/io/PrintWriter;)V

    .line 600
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    .line 601
    .local v0, "dmMgr":Lcom/google/android/gsf/gtalkservice/DataMessageManager;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 603
    .local v4, "wakelock":Landroid/os/PowerManager$WakeLock;
    if-eqz v4, :cond_0

    .line 604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GOOGLE_DATA_MESSAGING wakelock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    .end local v4    # "wakelock":Landroid/os/PowerManager$WakeLock;
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v5, :cond_1

    .line 609
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v5, p1}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->dump(Ljava/io/PrintWriter;)V

    .line 613
    :cond_1
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string v5, "c2dm"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string v5, "------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_2

    .line 617
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 618
    .local v1, "lastDataMessageReceived":Landroid/text/format/Time;
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    invoke-virtual {v1, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    sub-long/2addr v5, v7

    div-long v2, v5, v11

    .line 621
    .local v2, "timeElapsed":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last c2dm msg received at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%H:%M:%S"

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ago)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    .end local v1    # "lastDataMessageReceived":Landroid/text/format/Time;
    .end local v2    # "timeElapsed":J
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registration endpoint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const-string v5, "d2cm"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const-string v5, "------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_3

    .line 633
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 634
    .restart local v1    # "lastDataMessageReceived":Landroid/text/format/Time;
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    invoke-virtual {v1, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    sub-long/2addr v5, v7

    div-long v2, v5, v11

    .line 637
    .restart local v2    # "timeElapsed":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last d2cm msg sent at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%H:%M:%S"

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ago)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    .end local v1    # "lastDataMessageReceived":Landroid/text/format/Time;
    .end local v2    # "timeElapsed":J
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->dumpConnectionHistory(Ljava/io/PrintWriter;)V

    .line 644
    return-void

    .line 624
    :cond_2
    const-string v5, "Never received a c2dm msg!"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    :cond_3
    const-string v5, "Never sent a d2cm msg!"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public ensureRouteOverMobileHipriNetworkInterface()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 249
    :goto_0
    return v3

    .line 233
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 234
    .local v1, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 235
    .local v0, "addrBytes":[B
    const/4 v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v2, v5, v3

    .line 240
    .local v2, "ipAddr":I
    const-string v3, "GTalkService/c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- requestRouteToHost for TYPE_MOBILE_HIPRI, host_addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    const-string v3, "GTalkService/c"

    const-string v5, "requestRouteToHost: failed!"

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v3, v4

    .line 249
    goto :goto_0
.end method

.method public getDataMessageManager()Lcom/google/android/gsf/gtalkservice/DataMessageManager;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getResourcePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "android"

    return-object v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowAwayOnIdle()Z

    move-result v0

    return v0
.end method

.method public handleMCSDataMessage(Lorg/jivesoftware/smack/packet/DataMessage;)V
    .locals 5
    .param p1, "dataMsg"    # Lorg/jivesoftware/smack/packet/DataMessage;

    .prologue
    .line 653
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 654
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/DataMessage$AppData;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 655
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 656
    .local v0, "appData":Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "value":Ljava/lang/String;
    const-string v4, "IdleNotification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 659
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableIdleNotification:Z

    goto :goto_0

    .line 660
    :cond_1
    const-string v4, "PowerNotification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 661
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnablePowerStateNotification:Z

    goto :goto_0

    .line 662
    :cond_2
    const-string v4, "DataActiveNotification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 663
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableDataActiveNotification:Z

    goto :goto_0

    .line 664
    :cond_3
    const-string v4, "UFS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSendFgStatus:Z

    .line 667
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendUserStatus()V

    goto :goto_0

    .line 671
    .end local v0    # "appData":Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->maybeSendSignals()V

    .line 672
    return-void
.end method

.method public init(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 3
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->init(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAlarmManager:Landroid/app/AlarmManager;

    .line 124
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 127
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setPacketSender(Lcom/google/android/gsf/gtalkservice/PacketSender;)V

    .line 129
    new-instance v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mServiceHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;-><init>(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    .line 131
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_signals"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableSignalsProtocol:Z

    .line 133
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setD2cmGservices()V

    .line 135
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mUserManager:Landroid/os/UserManager;

    .line 136
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mActivityManager:Landroid/app/ActivityManager;

    .line 137
    return-void
.end method

.method protected initJidResource()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getJidResourceFromSettings()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "jidResource":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->computeJIDResource()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setJidResource(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public isD2cmEnabled()Z
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->enableD2cm:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isD2cmWhitelisted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 167
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->enableD2cm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataActiveNotificationEnabled()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableDataActiveNotification:Z

    return v0
.end method

.method public isIdleNotificationEnabled()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableIdleNotification:Z

    return v0
.end method

.method public isPackageNameWhitelisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->d2cmWhitelist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->d2cmWhitelist:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 177
    :goto_1
    return v1

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPowerNotificationEnabled()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnablePowerStateNotification:Z

    return v0
.end method

.method protected logConnectionClosed(III)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "networkType"    # I
    .param p3, "connDuration"    # I

    .prologue
    .line 585
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logConnectionClosed(III)V

    .line 586
    return-void
.end method

.method protected logConnectionEvent(IIII)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I
    .param p4, "networkState"    # I

    .prologue
    .line 590
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/LogTag;->logConnectionEvent(IIII)V

    .line 591
    return-void
.end method

.method public login()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    .line 255
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logout()V

    .line 260
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->clearHeartbeatAlarm()V

    .line 261
    return-void
.end method

.method public maybeSendSignals()V
    .locals 5

    .prologue
    .line 679
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableSignalsProtocol:Z

    if-nez v2, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 682
    .local v1, "stanza":Lorg/jivesoftware/smack/packet/DataMessage;
    const/4 v0, 0x0

    .line 684
    .local v0, "send":Z
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnablePowerStateNotification:Z

    if-eqz v2, :cond_2

    .line 685
    const/4 v0, 0x1

    .line 686
    new-instance v2, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    const-string v3, "PowerNotification"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isDevicePluggedIn()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    .line 689
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableIdleNotification:Z

    if-eqz v2, :cond_3

    .line 690
    const/4 v0, 0x1

    .line 691
    new-instance v2, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    const-string v3, "IdleNotification"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    .line 693
    new-instance v2, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    const-string v3, "ShowAwayOnIdle"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getShowAwayOnIdle()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    .line 696
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableDataActiveNotification:Z

    if-eqz v2, :cond_4

    .line 697
    const/4 v0, 0x1

    .line 698
    new-instance v2, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    const-string v3, "DataActiveNotification"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isNetworkDataActive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    .line 701
    :cond_4
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 703
    const-string v2, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 704
    const-string v2, "GTalkService/c"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 705
    const-string v2, "GTalkService/c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending signals: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    goto/16 :goto_0
.end method

.method public onConnectionClosed(I)V
    .locals 3
    .param p1, "connectionId"    # I

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 289
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 290
    .local v0, "sharedConnection":Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteLock()V

    .line 294
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->clearHeartbeatAlarm()V

    .line 301
    return-void

    .line 296
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    throw v1
.end method

.method public onGServicesChangeDelegate()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_signals"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mEnableSignalsProtocol:Z

    .line 143
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setD2cmGservices()V

    .line 144
    return-void
.end method

.method protected reachedRetryThresholdForAuthExpiration()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public sendHeartbeatToServer()Z
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-nez v0, :cond_1

    .line 500
    const-string v0, "GTalkService/c"

    const-string v1, "sendHeartbeatToServer: heartbeat alarm not set for this GTalkConnection"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    .line 506
    :goto_0
    return v0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->sendHeartbeatToServer()V

    .line 506
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 511
    const-string v0, "GTalkService/c"

    const-string v1, "trying to send an IQ stanza without an endpoint. should not happen."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 517
    const-string v0, "GTalkService/c"

    const-string v1, "trying to send a message stanza without an endpoint. should not happen."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public sendNack(Ljava/lang/String;)V
    .locals 4
    .param p1, "rmq2Id"    # Ljava/lang/String;

    .prologue
    .line 863
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    .line 864
    .local v0, "rmq2Manager":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processNackForStoppedUser(Ljava/lang/String;)V

    .line 867
    new-instance v1, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 868
    .local v1, "stanza":Lorg/jivesoftware/smack/packet/DataMessage;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 869
    const-string v2, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 870
    new-instance v2, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    const-string v3, "nack"

    invoke-direct {v2, v3, p1}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    .line 871
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    .line 872
    return-void
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 523
    const-string v0, "GTalkService/c"

    const-string v1, "trying to send a presence stanza without an endpoint. should not happen."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public sendUserStatus()V
    .locals 6

    .prologue
    .line 844
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 845
    .local v3, "status":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->updateUserStatus(Ljava/util/Map;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 846
    new-instance v2, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 847
    .local v2, "stanza":Lorg/jivesoftware/smack/packet/DataMessage;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 848
    const-string v4, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 849
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 850
    .local v1, "key":Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v1, v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    goto :goto_0

    .line 852
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    .line 854
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "stanza":Lorg/jivesoftware/smack/packet/DataMessage;
    :cond_1
    return-void
.end method

.method public sendUserStatus(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "asyncResult"    # Landroid/content/BroadcastReceiver$PendingResult;

    .prologue
    const/4 v10, 0x0

    .line 781
    const-string v7, "android.intent.extra.user_handle"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 782
    .local v6, "user":I
    const/4 v5, -0x1

    .line 783
    .local v5, "stoppingHandle":I
    const-string v7, "android.intent.action.USER_STOPPING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 784
    move v5, v6

    .line 785
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v7, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopLock:Ljava/util/concurrent/Semaphore;

    .line 787
    :cond_0
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 788
    const-string v7, "GTalkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send user status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_1
    const/4 v2, 0x1

    .line 792
    .local v2, "needFinish":Z
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 793
    .local v4, "status":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->updateUserStatus(Ljava/util/Map;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 794
    new-instance v3, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 795
    .local v3, "stanza":Lorg/jivesoftware/smack/packet/DataMessage;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 796
    const-string v7, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 797
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 798
    .local v1, "key":Ljava/lang/String;
    new-instance v8, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v1, v7}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    goto :goto_0

    .line 800
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3, v10}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    .line 802
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "android.intent.action.USER_STOPPING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 803
    const/4 v2, 0x0

    .line 806
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;

    invoke-direct {v8, p0, p2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;-><init>(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 825
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "stanza":Lorg/jivesoftware/smack/packet/DataMessage;
    :cond_3
    if-eqz v2, :cond_4

    .line 826
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 828
    :cond_4
    return-void
.end method

.method protected setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    .line 276
    .local v0, "rmq2Manager":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 277
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setRmq2Manager(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V

    .line 279
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 281
    .end local v0    # "rmq2Manager":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :cond_0
    return-void
.end method

.method protected setJidResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "jidResource"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJidResource(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->saveJidResourceToSettings(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public setLastDataMessageReceived()V
    .locals 2

    .prologue
    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    .line 577
    return-void
.end method

.method public setLastDataMessageSent()V
    .locals 2

    .prologue
    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    .line 581
    return-void
.end method

.method public stopAck()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mStopLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 835
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const-string v0, "GTalkService"

    const-string v1, "Stop ack received"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_0
    return-void
.end method
