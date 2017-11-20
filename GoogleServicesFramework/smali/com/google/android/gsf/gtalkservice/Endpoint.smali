.class public abstract Lcom/google/android/gsf/gtalkservice/Endpoint;
.super Ljava/lang/Object;
.source "Endpoint.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/PacketSender;
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/Endpoint$1;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;
    }
.end annotation


# static fields
.field protected static sNonTalkAccountId:J


# instance fields
.field protected mAccount:Lcom/google/android/gsf/gtalkservice/Account;

.field protected mAccountId:J

.field private mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

.field protected mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mAsyncMessageHandler:Landroid/os/Handler;

.field protected mAsyncWakelockTag:Ljava/lang/String;

.field private mAuthExpiredCount:I

.field private mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

.field private mClearWakeLockTimerFiredCount:I

.field protected mConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mConnectionClosedLock:Ljava/lang/Object;

.field private mConnectionDurations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

.field private mConnectionHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionStartTime:J

.field protected mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

.field private mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

.field public mContext:Landroid/content/Context;

.field private mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

.field protected final mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field protected mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

.field protected mIqPacketManager:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

.field private mJid:Ljava/lang/String;

.field protected mJidResource:Ljava/lang/String;

.field private mLastConnectAttemptTs:J

.field protected mLastConnectionAttemptSuccessful:Z

.field private mLastLoginAttemptTimeStamp:J

.field private mNumConnectionsAttempted:I

.field private mNumConnectionsMade:I

.field protected mOpened:Z

.field private mOriginalUserBareAddress:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field protected mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

.field private mServerAddress:Ljava/lang/String;

.field protected mServiceHandler:Landroid/os/Handler;

.field protected mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

.field protected mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserBareAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->sNonTalkAccountId:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)V
    .locals 3
    .param p1, "service"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p2, "workerLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    .line 100
    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 101
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionState;

    invoke-direct {v0, v1}, Lcom/google/android/gtalkservice/ConnectionState;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    .line 102
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError;

    invoke-direct {v0, v1}, Lcom/google/android/gtalkservice/ConnectionError;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    .line 109
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    .line 110
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    .line 111
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionClosedLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    .line 139
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    .line 162
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 163
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    .line 166
    return-void
.end method

.method static synthetic access$108(Lcom/google/android/gsf/gtalkservice/Endpoint;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimerFiredCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimerFiredCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/Endpoint;)Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/Endpoint;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    return-wide v0
.end method

.method private addConnectionClosedEvent(I)V
    .locals 14
    .param p1, "error"    # I

    .prologue
    const-wide/16 v7, 0x0

    .line 1706
    const-string v9, "GTalkService/c"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addConnectionClosedEvent: mError="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1708
    :try_start_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;-><init>(I)V

    .line 1710
    .local v0, "cce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v10, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 1711
    iget-wide v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    cmp-long v10, v10, v7

    if-nez v10, :cond_2

    move-wide v1, v7

    .line 1714
    .local v1, "connectionDuration":J
    :goto_0
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    iput-wide v1, v10, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    .line 1716
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    iget-wide v10, v10, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    cmp-long v10, v10, v7

    if-gtz v10, :cond_0

    .line 1717
    const-string v10, "GTalkService/c"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "??? addConnectionClosedEvent: connection uptime is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    iget-wide v12, v12, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mConnectionStartTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    :cond_0
    new-instance v10, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V

    iput-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    .line 1724
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1727
    .local v3, "count":I
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getMaxConnectionHistoryRecords()I

    move-result v10

    if-le v3, v10, :cond_1

    .line 1728
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1735
    :cond_1
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v6

    .line 1736
    .local v6, "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1737
    .local v4, "lastNetworkState":Landroid/net/NetworkInfo$State;
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v5

    .line 1739
    .local v5, "lastNetworkType":I
    cmp-long v7, v1, v7

    if-lez v7, :cond_3

    .line 1740
    const-wide/16 v7, 0x3e8

    div-long v7, v1, v7

    long-to-int v7, v7

    invoke-virtual {p0, p1, v5, v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logConnectionClosed(III)V

    .line 1748
    :goto_1
    monitor-exit v9

    .line 1749
    return-void

    .line 1711
    .end local v1    # "connectionDuration":J
    .end local v3    # "count":I
    .end local v4    # "lastNetworkState":Landroid/net/NetworkInfo$State;
    .end local v5    # "lastNetworkType":I
    .end local v6    # "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    sub-long v1, v10, v12

    goto :goto_0

    .line 1743
    .restart local v1    # "connectionDuration":J
    .restart local v3    # "count":I
    .restart local v4    # "lastNetworkState":Landroid/net/NetworkInfo$State;
    .restart local v5    # "lastNetworkType":I
    .restart local v6    # "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v8

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v10

    invoke-virtual {p0, v7, v8, p1, v10}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logConnectionEvent(IIII)V

    goto :goto_1

    .line 1748
    .end local v0    # "cce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;
    .end local v1    # "connectionDuration":J
    .end local v3    # "count":I
    .end local v4    # "lastNetworkState":Landroid/net/NetworkInfo$State;
    .end local v5    # "lastNetworkType":I
    .end local v6    # "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private addConnectionEvent(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 1664
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v9

    .line 1665
    .local v9, "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 1667
    .local v3, "lastNetworkState":Landroid/net/NetworkInfo$State;
    packed-switch p1, :pswitch_data_0

    .line 1692
    :pswitch_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;-><init>(I)V

    .line 1696
    .local v0, "ce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1697
    :try_start_0
    const-string v1, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addConnectionEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 1699
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    invoke-virtual {p0, v1, p1, v2, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logConnectionEvent(IIII)V

    .line 1703
    return-void

    .line 1670
    .end local v0    # "ce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    :pswitch_1
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v2

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getLastNetworkAvailable()Z

    move-result v5

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v6

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;-><init>(IILandroid/net/NetworkInfo$State;IZJ)V

    .line 1675
    .restart local v0    # "ce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    goto :goto_0

    .line 1678
    .end local v0    # "ce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v8

    .line 1680
    .local v8, "conn":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPConnection;->getHostIpAddress()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;-><init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V

    .line 1683
    .restart local v0    # "ce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    goto :goto_0

    .line 1680
    .end local v0    # "ce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 1686
    .end local v8    # "conn":Lorg/jivesoftware/smack/XMPPConnection;
    :pswitch_3
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;

    invoke-direct {v0, p1, v2, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;-><init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V

    .line 1689
    .restart local v0    # "ce":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    goto :goto_0

    .line 1699
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelReconnectAlarm()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->cancelReconnectAlarm()V

    .line 677
    return-void
.end method

.method private checkConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    return-void
.end method

.method private clearReconnectAlarm()V
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->cancelReconnectAlarm()V

    .line 672
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->clearReconnectAlarm()V

    .line 673
    return-void
.end method

.method private constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    if-eqz p1, :cond_2

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_0
    :goto_0
    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_1

    .line 540
    const-string v1, ", mConnection.isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 544
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v1, :cond_0

    .line 531
    const-string v1, "mConnection=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getMaxConnectionHistoryRecords()I
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 431
    .local v0, "acct":Lcom/google/android/gsf/gtalkservice/Account;
    if-nez v0, :cond_0

    .line 432
    const/16 v1, 0xa

    .line 435
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMaxConnectionHistoryRecords()I

    move-result v1

    goto :goto_0
.end method

.method private static getNextAvaialableNonTalkAccountId()J
    .locals 4

    .prologue
    .line 262
    sget-wide v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->sNonTalkAccountId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gsf/gtalkservice/Endpoint;->sNonTalkAccountId:J

    return-wide v0
.end method

.method private handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 9
    .param p1, "error"    # I
    .param p2, "xmppError"    # Lorg/jivesoftware/smack/packet/XMPPError;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 994
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "username":Ljava/lang/String;
    const-string v4, "GTalkService/c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDoConnectError for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", xmppError="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v0, 0x0

    .line 1002
    .local v0, "reachedAuthExpiredThreshold":Z
    if-eqz p2, :cond_0

    .line 1003
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I

    move-result p1

    .line 1004
    const-string v4, "GTalkService/c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run: translateXMPPError => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->reachedRetryThresholdForAuthExpiration()Z

    move-result v0

    .line 1012
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 1013
    const/4 v4, 0x1

    if-nez v0, :cond_4

    const/16 v5, 0xb

    if-eq p1, v5, :cond_4

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 1021
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    if-nez v0, :cond_2

    .line 1024
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->requestToRefreshAuthToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :cond_2
    if-eqz v0, :cond_3

    .line 1030
    const-string v2, "handleDoConnectError: repeated AUTH_EXPIRED failures, stop retrying."

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1033
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 1038
    :cond_3
    const-string v2, "GTalkService/c"

    const-string v3, "handleDoConnectError: connection failed"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v2, "GTalkService/wake"

    const-string v3, "release wakelock"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1042
    return-void

    :cond_4
    move v2, v3

    .line 1013
    goto :goto_0

    .line 1029
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 1030
    const-string v4, "handleDoConnectError: repeated AUTH_EXPIRED failures, stop retrying."

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1033
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 1038
    :cond_5
    const-string v3, "GTalkService/c"

    const-string v4, "handleDoConnectError: connection failed"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v3, "GTalkService/wake"

    const-string v4, "release wakelock"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1029
    throw v2
.end method

.method private initJid()V
    .locals 3

    .prologue
    .line 240
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "username":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "jid":Ljava/lang/StringBuilder;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getJidResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJid(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setUserBareAddress(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setOriginalUserBareAddress(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private internalSetConnectionState(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 439
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 441
    const-string v0, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalSetConnectionState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v0, p1}, Lcom/google/android/gtalkservice/ConnectionState;->setState(I)V

    .line 444
    const/4 v0, 0x1

    monitor-exit v1

    .line 448
    :goto_0
    return v0

    .line 446
    :cond_0
    monitor-exit v1

    .line 448
    const/4 v0, 0x0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendConnectionClosedMessage(II)V
    .locals 3
    .param p1, "connectionId"    # I
    .param p2, "error"    # I

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1151
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1152
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1153
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setJid(Ljava/lang/String;)V
    .locals 0
    .param p1, "jid"    # Ljava/lang/String;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJid:Ljava/lang/String;

    .line 1231
    return-void
.end method

.method private setOriginalUserBareAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOriginalUserBareAddress:Ljava/lang/String;

    .line 1247
    return-void
.end method

.method private setServerAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServerAddress:Ljava/lang/String;

    .line 1239
    return-void
.end method

.method private setUserBareAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mUserBareAddress:Ljava/lang/String;

    .line 1243
    return-void
.end method

.method private translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I
    .locals 3
    .param p1, "xmppError"    # Lorg/jivesoftware/smack/packet/XMPPError;

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, "error":I
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v1

    .line 810
    .local v1, "errorCode":I
    if-eqz v1, :cond_0

    .line 811
    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    const/16 v2, 0x196

    if-gt v1, v2, :cond_2

    .line 815
    instance-of v2, p1, Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;

    if-eqz v2, :cond_1

    .line 816
    const/4 v0, 0x4

    .line 833
    :cond_0
    :goto_0
    return v0

    .line 818
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 820
    :cond_2
    const/16 v2, 0x197

    if-ne v1, v2, :cond_3

    .line 821
    const/16 v0, 0xb

    goto :goto_0

    .line 822
    :cond_3
    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1f6

    if-lt v1, v2, :cond_5

    const/16 v2, 0x1f8

    if-gt v1, v2, :cond_5

    .line 823
    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    .line 825
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 826
    const/4 v0, 0x1

    goto :goto_0

    .line 828
    :cond_6
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateAuthErrorStats(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 1770
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1771
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    .line 1775
    :cond_0
    :goto_0
    return-void

    .line 1772
    :cond_1
    if-nez p1, :cond_0

    .line 1773
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    goto :goto_0
.end method


# virtual methods
.method public acquireAsyncWakeLock()V
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 288
    const-string v0, "GTalkService/wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireAsyncWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    const-wide/32 v2, 0x11170

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    return-void

    .line 289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public acquireSimpleWakeLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 275
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected addConnectionDuration()V
    .locals 8

    .prologue
    .line 1267
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1271
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    monitor-enter v3

    .line 1272
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 1273
    .local v0, "duration":J
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1274
    monitor-exit v3

    goto :goto_0

    .end local v0    # "duration":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V
    .locals 3
    .param p1, "e"    # Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;

    .prologue
    .line 1752
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addConnectionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1755
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 1756
    monitor-exit v1

    .line 1757
    return-void

    .line 1756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public asyncCloseSettingsQueryMap()V
    .locals 3

    .prologue
    .line 1875
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1876
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1878
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1880
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected broadcastConnected()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method protected broadcastDisconnected(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 790
    return-void
.end method

.method protected bumpConnectionCount()V
    .locals 4

    .prologue
    .line 1251
    monitor-enter p0

    .line 1252
    :try_start_0
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    .line 1253
    .local v0, "i":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connections made: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    return-void

    .line 1253
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected bumpConnectionsAttemptedCount()V
    .locals 4

    .prologue
    .line 1259
    monitor-enter p0

    .line 1260
    :try_start_0
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    .line 1261
    .local v0, "i":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connections made: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return-void

    .line 1261
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearStats()V
    .locals 2

    .prologue
    .line 1357
    monitor-enter p0

    .line 1358
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    .line 1359
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    .line 1361
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1362
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1363
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1365
    return-void

    .line 1363
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1364
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public closeConnection(ZZZ)V
    .locals 8
    .param p1, "notify"    # Z
    .param p2, "retry"    # Z
    .param p3, "asyncCloseSocket"    # Z

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 1053
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    const-string v3, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeConnection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notify="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", xmppConn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v2

    .line 1059
    .local v2, "error":Lcom/google/android/gtalkservice/ConnectionError;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v1

    .line 1064
    .local v1, "connectionId":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v3

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionClosed(IIZZ)V

    .line 1066
    invoke-virtual {p0, v0, p3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeXmppConnection(Lorg/jivesoftware/smack/XMPPConnection;Z)V

    .line 1067
    return-void

    .line 1059
    .end local v1    # "connectionId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeSettingsQueryMap()V
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->deleteObservers()V

    .line 1885
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->close()V

    .line 1887
    :cond_0
    return-void
.end method

.method protected closeXmppConnection(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "async"    # Z

    .prologue
    .line 1069
    return-void
.end method

.method protected computeJIDResource()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0xc

    .line 1849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getResourcePrefix()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    add-long v8, v10, v12

    .line 1852
    .local v8, "seed":J
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 1853
    .local v6, "rand":Ljava/util/Random;
    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    .line 1854
    .local v3, "l":J
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 1855
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 1857
    .local v5, "len":I
    if-le v5, v14, :cond_1

    .line 1858
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1866
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 1859
    :cond_1
    if-ge v5, v14, :cond_0

    .line 1860
    rsub-int/lit8 v1, v5, 0xc

    .line 1861
    .local v1, "fillerLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1862
    const-string v10, "0"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public connect()Z
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 603
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->queryLoggingLevel()V

    .line 606
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->cancelReconnectAlarm()V

    .line 608
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectAttemptTs:J

    .line 610
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 611
    .local v0, "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 612
    const-string v3, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect: acct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current conn state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :goto_0
    return v2

    .line 620
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 622
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->pollNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 623
    const-string v4, "GTalkService/c"

    const-string v5, "connect: network unavailable, set state=PENDING, err=NO_NETWORK"

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 635
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_0

    .line 639
    :cond_1
    const-string v2, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect: acct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->acquireAsyncWakeLock()V

    .line 647
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 648
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 650
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v3

    .line 653
    goto :goto_0
.end method

.method public connectionClosed(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendConnectionClosedMessage(II)V

    .line 1142
    return-void
.end method

.method public connectionClosed(IIZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "error"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 682
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionClosed(IIZZ)V

    .line 683
    return-void
.end method

.method public connectionClosed(IIZZ)V
    .locals 10
    .param p1, "connectionId"    # I
    .param p2, "error"    # I
    .param p3, "notify"    # Z
    .param p4, "allowRetry"    # Z

    .prologue
    .line 699
    new-instance v4, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v5, "connectionClosed"

    invoke-direct {v4, v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 705
    .local v4, "wakeLockDiag":Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    const-string v5, "connectionClosed"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->acquireSimpleWakeLock(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "username":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 712
    const/4 v2, 0x0

    .line 714
    .local v2, "retryConnection":Z
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionClosedLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 718
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 722
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-nez v0, :cond_4

    .line 723
    const-string v5, "GTalkService"

    const-string v7, "connectionClosed: no XMPPConnection - That\'s strange!"

    invoke-static {v5, v7}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_0
    const-string v5, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 736
    const-string v5, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectionClosed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountId:J

    invoke-static {v8, v9, v3}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", connId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 744
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 745
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->onConnectionClosed(I)V

    .line 747
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionDuration()V

    .line 748
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionClosedEvent(I)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p2}, Lcom/google/android/gtalkservice/ConnectionError;->isAuthenticationError(I)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p4, :cond_5

    .line 753
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 754
    const/4 v2, 0x1

    .line 759
    :goto_0
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    .line 760
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    if-eqz v2, :cond_2

    .line 774
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 777
    :cond_2
    if-eqz p3, :cond_3

    .line 778
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->broadcastDisconnected(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 781
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 782
    const-string v5, "connectionClosed"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    .line 784
    :goto_1
    return-void

    .line 725
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v1

    .line 726
    .local v1, "currentConnectionId":I
    if-eq p1, v1, :cond_0

    .line 727
    const-string v5, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectionClosed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v8

    invoke-static {v8, v9, v3}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", old conn(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), curr connection id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ignore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 781
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 782
    const-string v5, "connectionClosed"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    goto :goto_1

    .line 756
    .end local v1    # "currentConnectionId":I
    :cond_5
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_0

    .line 760
    .end local v0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 781
    .end local v2    # "retryConnection":Z
    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 782
    const-string v6, "connectionClosed"

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    throw v5
.end method

.method public connectionClosedOnError(ILjava/lang/Exception;)V
    .locals 9
    .param p1, "connectionId"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1082
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1083
    const-string v6, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectionClosedOnError for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v1

    .line 1091
    .local v1, "error":I
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    const/4 v6, 0x6

    if-eq v1, v6, :cond_1

    const/4 v6, 0x5

    if-eq v1, v6, :cond_1

    .line 1094
    instance-of v6, p2, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v6, :cond_3

    move-object v5, p2

    .line 1095
    check-cast v5, Lorg/jivesoftware/smack/XMPPException;

    .line 1096
    .local v5, "xmppEx":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    .line 1097
    .local v4, "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 1099
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v6, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectionClosedOnError: xmppError = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    if-eqz v4, :cond_2

    .line 1103
    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I

    move-result v1

    .line 1126
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v4    # "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v5    # "xmppEx":Lorg/jivesoftware/smack/XMPPException;
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendConnectionClosedMessage(II)V

    .line 1127
    return-void

    .line 1105
    .restart local v2    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v5    # "xmppEx":Lorg/jivesoftware/smack/XMPPException;
    :cond_2
    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v3

    .line 1106
    .local v3, "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    if-eqz v3, :cond_1

    .line 1107
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/StreamError;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "code":Ljava/lang/String;
    const-string v6, "host-unknown"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1109
    const/4 v1, 0x3

    goto :goto_0

    .line 1113
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    .end local v4    # "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v5    # "xmppEx":Lorg/jivesoftware/smack/XMPPException;
    :cond_3
    instance-of v6, p2, Ljava/io/IOException;

    if-nez v6, :cond_4

    instance-of v6, p2, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;

    if-eqz v6, :cond_5

    .line 1115
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 1118
    :cond_5
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public connectionEstablished(Ljava/lang/String;)V
    .locals 6
    .param p1, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1170
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    .line 1171
    const-string v2, "GTalkService/c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionEstablished for jid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mConnectionStartTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 1176
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->checkConnection()V

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->bumpConnectionCount()V

    .line 1179
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setServerAddress(Ljava/lang/String;)V

    .line 1182
    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1183
    const-string v2, "GTalkService"

    const-string v3, "connectionEstablished:got username with no domain - should not happen."

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1187
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJid(Ljava/lang/String;)V

    .line 1188
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setUserBareAddress(Ljava/lang/String;)V

    .line 1191
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    .local v1, "resource":Ljava/lang/String;
    const-string v2, "GTalkService/c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionEstablished: JID resource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJidResource(Ljava/lang/String;)V

    .line 1195
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    .line 1196
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->broadcastConnected()V

    .line 1202
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1203
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1205
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->checkConnection()V

    .line 1207
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    const-string v2, "GTalkService/wake"

    const-string v3, "connectionEstablished: release wakelock"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1215
    return-void

    .line 1212
    .end local v0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v1    # "resource":Ljava/lang/String;
    :catchall_0
    move-exception v2

    const-string v3, "GTalkService/wake"

    const-string v4, "connectionEstablished: release wakelock"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1212
    throw v2
.end method

.method protected connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 1162
    return-void
.end method

.method protected abstract createAsyncWakelockTag()V
.end method

.method doConnect()V
    .locals 27

    .prologue
    .line 859
    const/16 v21, 0x0

    .line 860
    .local v21, "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    const/4 v10, 0x0

    .line 863
    .local v10, "error":I
    const-string v17, ""

    .line 864
    .local v17, "serverJid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 865
    .local v6, "cancelConnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v20

    .line 869
    .local v20, "username":Ljava/lang/String;
    const/16 v22, 0x0

    :try_start_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    .line 871
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 873
    const/16 v22, 0x4e20

    invoke-static/range {v22 .. v22}, Lorg/jivesoftware/smack/SmackConfiguration;->setPacketReplyTimeout(I)V

    .line 876
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lorg/jivesoftware/smack/SmackConfiguration;->setKeepAliveInterval(I)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 881
    .local v5, "authToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 882
    .local v8, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gsf/gtalkservice/Account;->getUseAndroidId()Z

    move-result v19

    .line 883
    .local v19, "useAndroidId":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 884
    const-string v22, "doConnect: EMPTY AUTH-TOKEN, cannot make connection!"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 885
    new-instance v22, Lorg/jivesoftware/smack/XMPPException;

    new-instance v23, Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;

    const/16 v24, 0x190

    const-string v25, "empty auth-token"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;ILjava/lang/String;)V

    invoke-direct/range {v22 .. v23}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v22
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .end local v5    # "authToken":Ljava/lang/String;
    .end local v8    # "deviceId":Ljava/lang/String;
    .end local v19    # "useAndroidId":Z
    :catch_0
    move-exception v11

    .line 919
    .local v11, "ex":Lorg/jivesoftware/smack/XMPPException;
    :try_start_1
    invoke-virtual {v11}, Lorg/jivesoftware/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v18

    .line 920
    .local v18, "throwable":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/UnknownHostException;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 921
    const/4 v10, 0x3

    .line 922
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    :cond_0
    :goto_0
    if-eqz v6, :cond_c

    .line 949
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") cancel connect: release wakelock"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v11    # "ex":Lorg/jivesoftware/smack/XMPPException;
    .end local v18    # "throwable":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 991
    :cond_1
    :goto_2
    return-void

    .line 888
    .restart local v5    # "authToken":Ljava/lang/String;
    .restart local v8    # "deviceId":Ljava/lang/String;
    .restart local v19    # "useAndroidId":Z
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    check-cast v22, Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v8, v2}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v4

    .line 891
    .local v4, "account":Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Account;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 892
    .local v14, "host":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v15

    .line 893
    .local v15, "port":I
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Account;->getDomain()Ljava/lang/String;

    move-result-object v9

    .line 895
    .local v9, "domain":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getJidResource()Ljava/lang/String;

    move-result-object v16

    .line 898
    .local v16, "resource":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 899
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "empty JID resource"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 934
    .end local v4    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    .end local v5    # "authToken":Ljava/lang/String;
    .end local v8    # "deviceId":Ljava/lang/String;
    .end local v9    # "domain":Ljava/lang/String;
    .end local v14    # "host":Ljava/lang/String;
    .end local v15    # "port":I
    .end local v16    # "resource":Ljava/lang/String;
    .end local v19    # "useAndroidId":Z
    :catch_1
    move-exception v12

    .line 939
    .local v12, "ex2":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 942
    const/4 v10, 0x2

    .line 948
    if-eqz v6, :cond_e

    .line 949
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") cancel connect: release wakelock"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 903
    .end local v12    # "ex2":Ljava/lang/IllegalStateException;
    .restart local v4    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    .restart local v5    # "authToken":Ljava/lang/String;
    .restart local v8    # "deviceId":Ljava/lang/String;
    .restart local v9    # "domain":Ljava/lang/String;
    .restart local v14    # "host":Ljava/lang/String;
    .restart local v15    # "port":I
    .restart local v16    # "resource":Ljava/lang/String;
    .restart local v19    # "useAndroidId":Z
    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v7

    .line 904
    .local v7, "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v7}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 905
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: acct="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", current conn_state is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 909
    const/4 v6, 0x1

    .line 948
    if-eqz v6, :cond_12

    .line 949
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") cancel connect: release wakelock"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 913
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v9, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectDelegate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 915
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z
    :try_end_5
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 948
    if-eqz v6, :cond_14

    .line 949
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") cancel connect: release wakelock"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 923
    .end local v4    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    .end local v5    # "authToken":Ljava/lang/String;
    .end local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    .end local v8    # "deviceId":Ljava/lang/String;
    .end local v9    # "domain":Ljava/lang/String;
    .end local v14    # "host":Ljava/lang/String;
    .end local v15    # "port":I
    .end local v16    # "resource":Ljava/lang/String;
    .end local v19    # "useAndroidId":Z
    .restart local v11    # "ex":Lorg/jivesoftware/smack/XMPPException;
    .restart local v18    # "throwable":Ljava/lang/Throwable;
    :cond_5
    :try_start_6
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/io/IOException;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 924
    const/4 v10, 0x2

    .line 925
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 948
    .end local v11    # "ex":Lorg/jivesoftware/smack/XMPPException;
    .end local v18    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v22

    if-eqz v6, :cond_a

    .line 949
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") cancel connect: release wakelock"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 927
    .restart local v11    # "ex":Lorg/jivesoftware/smack/XMPPException;
    .restart local v18    # "throwable":Ljava/lang/Throwable;
    :cond_6
    :try_start_7
    invoke-virtual {v11}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v21

    .line 928
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "xmppError = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    if-nez v21, :cond_0

    .line 931
    const/16 v10, 0xa

    goto/16 :goto_0

    .line 943
    .end local v11    # "ex":Lorg/jivesoftware/smack/XMPPException;
    .end local v18    # "throwable":Ljava/lang/Throwable;
    :catch_2
    move-exception v13

    .line 944
    .local v13, "ex3":Ljava/lang/Exception;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doConnect("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") caught "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/google/android/gsf/gtalkservice/Endpoint;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 946
    const/16 v10, 0xa

    .line 948
    if-eqz v6, :cond_10

    .line 949
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") cancel connect: release wakelock"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 962
    .end local v13    # "ex3":Ljava/lang/Exception;
    :cond_7
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 966
    :try_start_8
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 967
    const-string v23, "GTalkService/c"

    const-string v24, "(WARNING) doConnect: serverJid is empty or null"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 974
    const-string v23, "GTalkService/c"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "doConnect: DONE. serverJid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3

    .line 948
    :cond_9
    :goto_3
    throw v22

    .line 956
    :cond_a
    if-nez v10, :cond_b

    if-eqz v21, :cond_7

    .line 957
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_2

    .line 976
    :catch_3
    move-exception v11

    .line 977
    .local v11, "ex":Ljava/lang/IllegalStateException;
    const-string v23, "GTalkService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "connectionEstablished for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " - caught "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v7

    .line 985
    .restart local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v7}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 986
    const-string v23, "doConnect: reset connection state to PENDING"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 987
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_3

    .line 956
    .end local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    .local v11, "ex":Lorg/jivesoftware/smack/XMPPException;
    .restart local v18    # "throwable":Ljava/lang/Throwable;
    :cond_c
    if-nez v10, :cond_b

    if-nez v21, :cond_b

    .line 962
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 966
    :try_start_9
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 967
    const-string v22, "GTalkService/c"

    const-string v23, "(WARNING) doConnect: serverJid is empty or null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 974
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: DONE. serverJid="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    .line 976
    :catch_4
    move-exception v11

    .line 977
    .local v11, "ex":Ljava/lang/IllegalStateException;
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "connectionEstablished for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v7

    .line 985
    .restart local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v7}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 986
    const-string v22, "doConnect: reset connection state to PENDING"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 987
    .end local v18    # "throwable":Ljava/lang/Throwable;
    :goto_4
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto/16 :goto_2

    .line 956
    .end local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    .restart local v12    # "ex2":Ljava/lang/IllegalStateException;
    :cond_e
    if-nez v10, :cond_b

    if-nez v21, :cond_b

    .line 962
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 966
    :try_start_a
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 967
    const-string v22, "GTalkService/c"

    const-string v23, "(WARNING) doConnect: serverJid is empty or null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 974
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: DONE. serverJid="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 976
    :catch_5
    move-exception v11

    .line 977
    .restart local v11    # "ex":Ljava/lang/IllegalStateException;
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "connectionEstablished for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v7

    .line 985
    .restart local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v7}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 986
    const-string v22, "doConnect: reset connection state to PENDING"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 956
    .end local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    .end local v12    # "ex2":Ljava/lang/IllegalStateException;
    .restart local v13    # "ex3":Ljava/lang/Exception;
    :cond_10
    if-nez v10, :cond_b

    if-nez v21, :cond_b

    .line 962
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 966
    :try_start_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 967
    const-string v22, "GTalkService/c"

    const-string v23, "(WARNING) doConnect: serverJid is empty or null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 974
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: DONE. serverJid="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_2

    .line 976
    :catch_6
    move-exception v11

    .line 977
    .restart local v11    # "ex":Ljava/lang/IllegalStateException;
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "connectionEstablished for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v7

    .line 985
    .restart local v7    # "connectionState":Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v7}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 986
    const-string v22, "doConnect: reset connection state to PENDING"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 956
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    .end local v13    # "ex3":Ljava/lang/Exception;
    .restart local v4    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    .restart local v5    # "authToken":Ljava/lang/String;
    .restart local v8    # "deviceId":Ljava/lang/String;
    .restart local v9    # "domain":Ljava/lang/String;
    .restart local v14    # "host":Ljava/lang/String;
    .restart local v15    # "port":I
    .restart local v16    # "resource":Ljava/lang/String;
    .restart local v19    # "useAndroidId":Z
    :cond_12
    if-nez v10, :cond_b

    if-nez v21, :cond_b

    .line 962
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 966
    :try_start_c
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 967
    const-string v22, "GTalkService/c"

    const-string v23, "(WARNING) doConnect: serverJid is empty or null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 974
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: DONE. serverJid="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_2

    .line 976
    :catch_7
    move-exception v11

    .line 977
    .restart local v11    # "ex":Ljava/lang/IllegalStateException;
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "connectionEstablished for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v7

    .line 985
    invoke-virtual {v7}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 986
    const-string v22, "doConnect: reset connection state to PENDING"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 956
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    :cond_14
    if-nez v10, :cond_b

    if-nez v21, :cond_b

    .line 962
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 966
    :try_start_d
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 967
    const-string v22, "GTalkService/c"

    const-string v23, "(WARNING) doConnect: serverJid is empty or null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 974
    const-string v22, "GTalkService/c"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doConnect: DONE. serverJid="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_2

    .line 976
    :catch_8
    move-exception v11

    .line 977
    .restart local v11    # "ex":Ljava/lang/IllegalStateException;
    const-string v22, "GTalkService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "connectionEstablished for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - caught "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v7

    .line 985
    invoke-virtual {v7}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 986
    const-string v22, "doConnect: reset connection state to PENDING"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected doConnectDelegate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
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
    .line 839
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doConnectFailedDelegate()V
    .locals 0

    .prologue
    .line 849
    return-void
.end method

.method protected doConnectSucceededDelegate()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method protected doLogout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOpened:Z

    .line 396
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 397
    invoke-virtual {p0, v1, v1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 400
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v5, 0x3e8

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XmppConnection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "open"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    const-string v2, "Connection stats"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    const-string v2, "------------------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connections made/attempts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNumberOfConnectionsMade()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNumberOfConnectionsAttempted()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1384
    .local v0, "now":J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection uptime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionUptime()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last server activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastActivityFromServerTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last device activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastActivityToServerTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    :goto_1
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    const-string v2, "Wakelocks"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    const-string v2, "------------------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "async conn wakelock: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAsyncWakelockTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GTALK_CONN wakelock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClearWakeLockTimer fired count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimerFiredCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    return-void

    .line 1371
    .end local v0    # "now":J
    :cond_0
    const-string v2, "closed"

    goto/16 :goto_0

    .line 1394
    .restart local v0    # "now":J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last connect attempt time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectAttemptTs:J

    sub-long v3, v0, v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected dumpConnectionHistory(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1411
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1413
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    neg-int v4, v4

    add-int/lit8 v1, v4, 0x1

    .line 1414
    .local v1, "i":I
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    .line 1415
    .local v0, "clc":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conn #("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "):"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->dump(Ljava/io/PrintWriter;)V

    .line 1417
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1419
    .end local v0    # "clc":Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;
    :cond_0
    monitor-exit v5

    .line 1420
    return-void

    .line 1419
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public ensureRouteOverMobileHipriNetworkInterface()Z
    .locals 2

    .prologue
    .line 1911
    const-string v0, "GTalkService/c"

    const-string v1, "ensureRouteOverMobileHipriNetworkInterface: not the right endpoint"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const/4 v0, 0x0

    return v0
.end method

.method public forceCloseConnection()V
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 406
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/google/android/gsf/gtalkservice/Account;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 793
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountId:J

    return-wide v0
.end method

.method public getAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

    return-object v0
.end method

.method protected getAsyncWakelockTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncWakelockTag:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    monitor-exit p0

    return-object v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;
    .locals 2

    .prologue
    .line 484
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-exit v1

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;
    .locals 2

    .prologue
    .line 469
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-exit v1

    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionUptime()I
    .locals 4

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    const/4 v0, 0x0

    .line 1328
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method public getHeartbeatInterval()J
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getHeartbeatInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mIqPacketManager:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJid:Ljava/lang/String;

    return-object v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJidResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivityFromServerTime()J
    .locals 2

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_1

    .line 1337
    :cond_0
    const-wide/16 v0, -0x1

    .line 1339
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLastActivityFromServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastActivityToServerTime()J
    .locals 2

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_1

    .line 1348
    :cond_0
    const-wide/16 v0, -0x1

    .line 1350
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLastActivityToServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastConnectionAttemptSuccessful()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    return v0
.end method

.method public getNumberOfConnectionsAttempted()I
    .locals 1

    .prologue
    .line 1290
    monitor-enter p0

    .line 1291
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    monitor-exit p0

    return v0

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNumberOfConnectionsMade()I
    .locals 1

    .prologue
    .line 1284
    monitor-enter p0

    .line 1285
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    monitor-exit p0

    return v0

    .line 1286
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOriginalUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOriginalUserBareAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    return-object v0
.end method

.method protected getResourcePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1871
    const-string v0, ""

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mUserBareAddress:Ljava/lang/String;

    return-object v0
.end method

.method public goOnline()Z
    .locals 1

    .prologue
    .line 1890
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 7
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 185
    new-instance v0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;-><init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->initJidResource()V

    .line 194
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->initJid()V

    .line 196
    new-instance v0, Lorg/jivesoftware/smack/filter/AccountIdFilter;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lorg/jivesoftware/smack/filter/AccountIdFilter;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

    .line 197
    new-instance v0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mIqPacketManager:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    .line 198
    new-instance v0, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    .line 200
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    .line 201
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->init(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 203
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v1

    .line 204
    :try_start_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    .line 205
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 210
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mPowerManager:Landroid/os/PowerManager;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->createAsyncWakelockTag()V

    .line 214
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAsyncWakelockTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GTALK_CONN"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 220
    return-void

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected initJidResource()V
    .locals 4

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->computeJIDResource()Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, "jidResource":Ljava/lang/String;
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initJidResource: computeJIDResource returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for endpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJidResource(Ljava/lang/String;)V

    .line 1805
    return-void
.end method

.method protected internalSetAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    .line 236
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNextAvaialableNonTalkAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountId:J

    .line 237
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 480
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOpened:Z

    return v0
.end method

.method protected logConnectionClosed(III)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "networkType"    # I
    .param p3, "connDuration"    # I

    .prologue
    .line 1762
    return-void
.end method

.method protected logConnectionEvent(IIII)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I
    .param p4, "networkState"    # I

    .prologue
    .line 1767
    return-void
.end method

.method protected logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1440
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1444
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1445
    return-void
.end method

.method protected logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    return-void
.end method

.method public login()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 329
    const-string v4, "GTalkService/c"

    const-string v5, "login"

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 332
    .local v0, "now":J
    new-instance v4, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 335
    invoke-static {v8}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 337
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastLoginAttemptTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .line 340
    .local v2, "sinceLast":J
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastLoginAttemptTimeStamp:J

    .line 343
    iput-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOpened:Z

    .line 345
    const-wide/16 v4, 0xbb8

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 346
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_0

    .line 347
    const-string v4, "GTalkService"

    const-string v5, "too many login attempts, delay connecting"

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 356
    :goto_1
    return-void

    .line 337
    .end local v2    # "sinceLast":J
    :cond_1
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastLoginAttemptTimeStamp:J

    sub-long v2, v0, v4

    goto :goto_0

    .line 355
    .restart local v2    # "sinceLast":J
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connect()Z

    goto :goto_1
.end method

.method public logout()V
    .locals 3

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->clearReconnectAlarm()V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->asyncCloseSettingsQueryMap()V

    .line 364
    new-instance v1, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 367
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 369
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 371
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    .line 388
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->removeConnection(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V

    .line 389
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->removeConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 390
    return-void

    .line 382
    :cond_0
    const-string v1, "GTalkService"

    const-string v2, "##### logout: mAsyncMessageHandler is already null!"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1449
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_0
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1436
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method protected notifyConnectionListeners()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public abstract onConnectionClosed(I)V
.end method

.method public onGServicesChangeDelegate()V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method protected reachedRetryThresholdForAuthExpiration()Z
    .locals 4

    .prologue
    .line 1778
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_max_retries_for_auth_expired"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1781
    .local v0, "threshold":I
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseAsyncWakeLock()V
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 299
    :cond_0
    const-string v0, "GTalkService/wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAsyncWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    return-void

    .line 300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseSimpleWakeLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public requestToRefreshAuthToken()V
    .locals 3

    .prologue
    .line 1045
    const-string v1, "GTalkService/c"

    const-string v2, "requestToRefreshAuthToken: send EVENT_REFRESH_AUTH_TOKEN msg"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1047
    .local v0, "message":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1048
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1049
    return-void
.end method

.method public retryConnection(Z)V
    .locals 2
    .param p1, "now"    # Z

    .prologue
    .line 657
    if-eqz p1, :cond_0

    .line 658
    const-string v0, "GTalkService/c"

    const-string v1, "retryConnection now"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connect()Z

    .line 668
    :goto_0
    return-void

    .line 661
    :cond_0
    const-string v0, "GTalkService/c"

    const-string v1, "retryConnection later"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setReconnectAlarm()V

    .line 666
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_0
.end method

.method public sendHeartbeatToServer()Z
    .locals 2

    .prologue
    .line 1916
    const-string v0, "GTalkService/c"

    const-string v1, "sendHeartbeatToServer: not the right endpoint"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const/4 v0, 0x0

    return v0
.end method

.method public sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V
    .locals 5
    .param p1, "request"    # [B
    .param p2, "cb"    # Lcom/google/android/gtalkservice/IHttpRequestCallback;

    .prologue
    .line 1899
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smack/packet/HttpRequest;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smack/packet/HttpRequest;-><init>([B)V

    .line 1900
    .local v1, "req":Lorg/jivesoftware/smack/packet/HttpRequest;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/HttpRequest;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->addPending(Ljava/lang/String;Lcom/google/android/gtalkservice/IHttpRequestCallback;)V

    .line 1901
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_0

    .line 1902
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "req is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/HttpRequest;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    .end local v1    # "req":Lorg/jivesoftware/smack/packet/HttpRequest;
    :goto_0
    return-void

    .line 1905
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GTalkService"

    const-string v3, "caught exception"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract sendIqStanza(Landroid/content/Intent;)V
.end method

.method public abstract sendMessageStanza(Landroid/content/Intent;)V
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 1
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v0

    return v0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;
    .param p2, "storeInRmq"    # Z

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/packet/Packet;->setAccountId(J)V

    .line 554
    if-eqz p2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v1

    .line 556
    .local v1, "rmq2Manager":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->send(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    .line 561
    .end local v1    # "rmq2Manager":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 558
    .end local v0    # "retVal":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    .restart local v0    # "retVal":Z
    goto :goto_0
.end method

.method public sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 7
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 575
    const/4 v3, 0x0

    .line 576
    .local v3, "retVal":Z
    const/4 v2, 0x0

    .line 577
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 578
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_1

    .line 580
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const/4 v3, 0x1

    .line 589
    :goto_0
    if-eqz v2, :cond_0

    .line 590
    const-string v4, "GTalkService/c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send packet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    return v3

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v2

    .line 584
    goto :goto_0

    .line 586
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract sendPresenceStanza(Landroid/content/Intent;)V
.end method

.method public setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 258
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->initJid()V

    .line 259
    return-void
.end method

.method protected setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 424
    monitor-exit p0

    .line 426
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConnectionError(I)Z
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 490
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0, p1}, Lcom/google/android/gtalkservice/ConnectionError;->setError(I)V

    .line 493
    const/4 v0, 0x1

    monitor-exit v1

    .line 497
    :goto_0
    return v0

    .line 495
    :cond_0
    monitor-exit v1

    .line 497
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConnectionState(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 461
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(IZ)Z

    move-result v0

    .line 462
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionEvent(I)V

    .line 465
    :cond_0
    return v0
.end method

.method protected setConnectionState(IZ)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetConnectionState(I)Z

    move-result v0

    .line 453
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->notifyConnectionListeners()V

    .line 457
    :cond_0
    return v0
.end method

.method public setConnectionStateAndError(IIZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "error"    # I
    .param p3, "forceNotify"    # Z

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetConnectionState(I)Z

    move-result v0

    .line 503
    .local v0, "notify":Z
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v0, 0x1

    .line 507
    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->notifyConnectionListeners()V

    .line 510
    :cond_2
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setHeartbeatInterval(J)V

    .line 1798
    return-void
.end method

.method protected setJidResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "jidResource"    # Ljava/lang/String;

    .prologue
    .line 1812
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1813
    const-string v0, "GTalkService/c"

    const-string v1, "setJidResource: failed, jidResource is empty"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1817
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJidResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    const-string v0, "GTalkService/c"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1821
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJidResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    :cond_2
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJidResource:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSessionWrapper(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 267
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 1
    .param p1, "uploadStat"    # Z

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setUploadHeartbeatStat(Z)V

    .line 1790
    return-void
.end method

.method public updateAccountStatus()V
    .locals 0

    .prologue
    .line 843
    return-void
.end method

.method public wasLastConnectionRemainConnectedForLongEnough()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 316
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    monitor-enter v2

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    monitor-exit v2

    move v0, v1

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0xa

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
