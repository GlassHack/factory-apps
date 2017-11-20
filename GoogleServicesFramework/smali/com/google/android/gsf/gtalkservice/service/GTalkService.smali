.class public Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.super Landroid/app/Service;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;,
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

.field private mAirplaneModeTurnedOffTimeStamp:J

.field private mAirplaneModeTurnedOnTimeStamp:J

.field private mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

.field private mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

.field private mDeviceStorageLow:Z

.field private volatile mEnableTalkForegroundNotifications:Z

.field private mEndpointWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

.field private mHandler:Landroid/os/Handler;

.field private final mIpcLock:Ljava/lang/Object;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field private mNetworkDataActive:Z

.field private mPendingGservicesChange:Z

.field private mPluggedIn:Z

.field private mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

.field private mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

.field private mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

.field private mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

.field private mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

.field private mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

.field private mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

.field private final mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTimeSinceServiceOnCreate:J

.field private mUserIsIdle:Z

.field private mWorkerLooper:Landroid/os/Looper;

.field private mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1035
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 176
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    .line 177
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 181
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 182
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 187
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 2046
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 1036
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDonned()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDoffed()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleConnectivityChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleAirplaneModeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsDevicePluggedIn(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsNetworkDataActive(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveObsoleteEndpoints()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->maybeCreateMainEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveMainEndpoint()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setTalkForegroundState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->resetOnGservicesChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    return-object p1
.end method

.method private accountsContainsUsername([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 848
    array-length v1, p1

    .line 850
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 851
    aget-object v3, p1, v2

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 853
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    const/4 v3, 0x1

    .line 857
    .end local v0    # "accountName":Ljava/lang/String;
    :goto_1
    return v3

    .line 850
    .restart local v0    # "accountName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 10
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1740
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1741
    const-string v7, "GTalkService"

    const-string v8, "blockingCreateGTalkConnection failed due to low storage!"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    :goto_0
    return-object v0

    .line 1745
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1747
    .local v4, "origId":J
    const/4 v6, 0x0

    .line 1754
    .local v6, "retVal":Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1755
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1756
    const-string v7, "blockingCreateGTalkConnection: no username, use first account"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1758
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object p1

    .line 1759
    if-eqz p1, :cond_2

    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 1771
    .local v0, "account":Lcom/google/android/gsf/gtalkservice/Account;
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 1772
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1773
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1774
    const-string v7, "blockingCreateGTalkConnection: async fetch auth token"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1777
    :cond_3
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;

    invoke-direct {v9, p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v1

    .line 1819
    .local v1, "authToken":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1820
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1821
    const-string v7, "blockingCreateGTalkConnection: authToken fetched, login"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1823
    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 1824
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v2

    .line 1825
    .local v2, "connection":Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v2, :cond_5

    .line 1826
    check-cast v2, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .end local v2    # "connection":Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    .line 1831
    .end local v1    # "authToken":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1843
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    :goto_3
    move-object v0, v6

    .line 1846
    goto :goto_0

    .line 1765
    :cond_6
    :try_start_1
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1766
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blockingCreateGTalkConnection: username="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1768
    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .restart local v0    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    goto :goto_1

    .line 1833
    :cond_8
    const-string v7, "GTalkService"

    const-string v8, "blockingCreateGTalkConnection: account is null!"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->reconcileGTalkAccount(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1840
    .end local v0    # "account":Lcom/google/android/gsf/gtalkservice/Account;
    :catch_0
    move-exception v3

    .line 1841
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "GTalkService"

    const-string v8, "blockingCreateGTalkConnection: caught "

    invoke-static {v7, v8, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1843
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;

    .prologue
    .line 948
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockingGetAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v1, 0x0

    .line 964
    :goto_0
    return-object v1

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ac2dm"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "token":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 958
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    const-string v1, "blockingGetAccount: no auth token, fetch"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 964
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    goto :goto_0
.end method

.method private createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "useAndroidId"    # Z

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 1016
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAccount: user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1018
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1019
    const-string v3, "GTalkService"

    const-string v4, "createConnection: empty username."

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :goto_0
    return-object v2

    .line 1023
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1025
    .local v0, "androidId":J
    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    .line 1026
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1027
    const-string v3, "GTalkService"

    const-string v4, "createAccount: get ANDROID_ID returned 0!"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    goto :goto_0
.end method

.method private createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 9
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    const/4 v0, 0x0

    .line 1645
    if-nez p1, :cond_0

    .line 1646
    const-string v5, "createEndpoint: null account, bail"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1736
    :goto_0
    return-object v0

    .line 1651
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v5

    if-gez v5, :cond_1

    .line 1652
    const-string v5, "createEndpoint: rejected: port is negative"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1657
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1658
    const-string v5, "createEndpoint: rejected: bkgnd data OFF"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1664
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 1682
    .local v4, "username":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1684
    :try_start_0
    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1685
    .local v0, "connection":Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_4

    .line 1686
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "createEndpoint: endpoint exists"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    :cond_3
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1696
    new-instance v2, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p1, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V

    .line 1697
    .local v2, "endpoint":Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-direct {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1699
    .local v1, "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1701
    :try_start_1
    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1702
    if-eqz v0, :cond_6

    .line 1703
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1704
    const-string v5, "createEndpoint: endpoint exists, drop new conn"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1708
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->closeSettingsQueryMap()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1725
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1690
    .end local v0    # "connection":Lcom/google/android/gtalkservice/IGTalkConnection;
    .end local v1    # "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v2    # "endpoint":Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 1712
    .restart local v0    # "connection":Lcom/google/android/gtalkservice/IGTalkConnection;
    .restart local v1    # "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .restart local v2    # "endpoint":Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    :cond_6
    :try_start_2
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1713
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createEndpoint: create new gtalk conn for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1715
    :cond_7
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1717
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v3

    .line 1720
    .local v3, "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1721
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 1722
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1725
    :cond_8
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1729
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1730
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->login()V

    :goto_1
    move-object v0, v1

    .line 1736
    goto/16 :goto_0

    .line 1725
    .end local v3    # "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 1732
    .restart local v3    # "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    :cond_9
    const-string v5, "GTalkService"

    const-string v6, "createConnection: missing account.authToken..."

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnectionError(I)Z

    goto :goto_1
.end method

.method private createEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 7
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1590
    const-string v3, "GTalkService"

    invoke-static {v3, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEndpointAndLogin for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1594
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1597
    .local v1, "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    if-nez v1, :cond_3

    .line 1642
    :cond_1
    :goto_1
    return-void

    .line 1591
    .end local v1    # "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :cond_2
    const-string v3, " null acct"

    goto :goto_0

    .line 1600
    .restart local v1    # "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1606
    .local v0, "connection":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 1607
    .local v2, "newAuthToken":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1608
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1609
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1610
    const-string v3, "GTalkService"

    invoke-static {v3, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1611
    const-string v3, "createConnAndLogin: auth token changed, reconnect"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1615
    :cond_4
    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 1617
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1619
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1620
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    goto :goto_1

    .line 1622
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    goto :goto_1

    .line 1627
    :cond_6
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;

    invoke-direct {v4, p0, p1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private deleteAccount(Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1002
    .local v2, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1003
    const-string v3, "username"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .end local v2    # "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1007
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "selection":Ljava/lang/String;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GTalkService] delete Talk account(s) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    .end local p1    # "username":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1013
    return-void

    .line 1009
    .restart local p1    # "username":Ljava/lang/String;
    :cond_1
    const-string p1, " because there is no account in AcctMgr"

    goto :goto_0
.end method

.method private getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1303
    const-string v3, "username"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    .local v2, "username":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "appPackage":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1306
    .local v1, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    return-object v1
.end method

.method private getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 7
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1368
    const/4 v2, 0x0

    .line 1370
    .local v2, "retVal":Lcom/google/android/gsf/gtalkservice/Endpoint;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1371
    .local v3, "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 1372
    .local v4, "wrapperUser":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1373
    .local v0, "end":Lcom/google/android/gsf/gtalkservice/Endpoint;
    instance-of v5, v0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    if-eqz v5, :cond_0

    .line 1377
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1378
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found appEndpoint for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1379
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    .line 1383
    .end local v0    # "end":Lcom/google/android/gsf/gtalkservice/Endpoint;
    .end local v3    # "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v4    # "wrapperUser":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private getDeviceStorageLow()Z
    .locals 2

    .prologue
    .line 524
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    monitor-exit v1

    return v0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 3
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 1850
    const/4 v0, 0x0

    .line 1852
    .local v0, "retVal":Lcom/google/android/gtalkservice/IGTalkConnection;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1854
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1856
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1859
    return-object v0

    .line 1856
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1255
    const-string v4, "username"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1257
    .local v2, "username":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1258
    const-string v4, "GTalkService"

    const-string v5, "getEndpointFromIntent: missing username"

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :goto_0
    return-object v3

    .line 1263
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    invoke-virtual {v4, v2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1264
    .local v0, "conn":Lcom/google/android/gtalkservice/IGTalkConnection;
    if-nez v0, :cond_1

    .line 1265
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEndpointFromIntent: cannot find endpoint for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1273
    .end local v0    # "conn":Lcom/google/android/gtalkservice/IGTalkConnection;
    :catch_0
    move-exception v1

    .line 1274
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImSessionFromIntent: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "conn":Lcom/google/android/gtalkservice/IGTalkConnection;
    :cond_1
    :try_start_1
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .end local v0    # "conn":Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method private getIdleTimeout()J
    .locals 4

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_idle_timeout_ms"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSecurityTokenForAndroidId()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 817
    const/4 v3, 0x0

    .line 819
    .local v3, "token":Ljava/lang/String;
    :try_start_0
    const-string v4, "CheckinService"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "CheckinTask_securityToken"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 821
    .local v1, "securityToken":J
    cmp-long v4, v1, v8

    if-eqz v4, :cond_0

    .line 822
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 827
    .end local v1    # "securityToken":J
    :cond_0
    :goto_0
    return-object v3

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "CheckinTask_securityToken is not a long."

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "GTALK_IDLE_ALARM"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Alarm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 430
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->setAction(Ljava/lang/String;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method private handleAirplaneModeChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v3, 0x0

    .line 1960
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1961
    .local v0, "airplaneMode":Z
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneModeChanged: airplaneModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1967
    :cond_0
    if-eqz v0, :cond_1

    .line 1968
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    .line 1969
    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    .line 1974
    :goto_0
    return-void

    .line 1971
    :cond_1
    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    .line 1972
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    goto :goto_0
.end method

.method private handleConnectivityChanged(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1920
    const-string v3, "noConnectivity"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1923
    .local v8, "noConnectivity":Z
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1926
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### handleConnectivityChanged: connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v8, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    networkInfo.type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    networkInfo.state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1933
    const-string v0, "otherNetwork"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 1935
    .local v7, "networkInfo2":Landroid/net/NetworkInfo;
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1936
    .local v9, "reason":Ljava/lang/String;
    const-string v0, "isFailover"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1939
    .local v6, "isFailover":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    networkInfo2.type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    networkInfo2.state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    isFailover="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1951
    .end local v6    # "isFailover":Z
    .end local v7    # "networkInfo2":Landroid/net/NetworkInfo;
    .end local v9    # "reason":Ljava/lang/String;
    :goto_5
    if-nez v1, :cond_9

    .line 1957
    :goto_6
    return-void

    :cond_0
    move v0, v2

    .line 1927
    goto/16 :goto_0

    .line 1928
    :cond_1
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 1930
    :cond_2
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 1939
    .restart local v6    # "isFailover":Z
    .restart local v7    # "networkInfo2":Landroid/net/NetworkInfo;
    .restart local v9    # "reason":Ljava/lang/String;
    :cond_3
    const-string v0, "unknown"

    goto :goto_3

    .line 1941
    :cond_4
    const-string v0, "unknown"

    goto :goto_4

    .line 1946
    .end local v6    # "isFailover":Z
    .end local v7    # "networkInfo2":Landroid/net/NetworkInfo;
    .end local v9    # "reason":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### Network broadcast (connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v8, :cond_6

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    const-string v0, ""

    goto :goto_8

    :cond_8
    const-string v0, ""

    goto :goto_9

    .line 1955
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->networkStateChanged(Landroid/net/NetworkInfo;JJ)V

    goto :goto_6
.end method

.method private handleCreateXmppEndpoint(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1331
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1332
    .local v9, "username":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 1333
    .local v5, "appPackage":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1334
    const-string v1, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    const-string v1, "received a create endpoint intent with no package name. bailing."

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    invoke-direct {p0, v9, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v6

    .line 1340
    .local v6, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v6, :cond_0

    .line 1346
    const-string v1, "bind_to_session_servers"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1349
    .local v4, "doBindToSesssionServers":Z
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    .line 1351
    .local v2, "account":Lcom/google/android/gsf/gtalkservice/Account;
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 1354
    .local v0, "appEndpoint":Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    new-instance v7, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-direct {v7, v0, p0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1356
    .local v7, "endpointWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v8

    .line 1359
    .local v8, "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1360
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_2

    .line 1361
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1364
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->login()V

    goto :goto_0
.end method

.method private handleDoffed()V
    .locals 3

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1218
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v0

    .line 1219
    .local v0, "alarm":Lcom/google/android/gsf/gtalkservice/Alarm;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1221
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->initAlarm()V

    .line 1223
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTimer(J)V

    .line 1224
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->start()V

    .line 1227
    .end local v0    # "alarm":Lcom/google/android/gsf/gtalkservice/Alarm;
    :cond_0
    return-void
.end method

.method private handleDonned()V
    .locals 5

    .prologue
    .line 1236
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isKeyguardLocked"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1237
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1238
    .local v0, "isLocked":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    .end local v0    # "isLocked":Ljava/lang/Boolean;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1242
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 7
    .param p1, "endpoint"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    const/4 v6, 0x1

    .line 1473
    if-nez p1, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 1478
    .local v0, "currentAccount":Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 1483
    .local v3, "username":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUseAndroidId()Z

    move-result v2

    .line 1484
    .local v2, "userAndroidId":Z
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    .line 1486
    .local v1, "newAccount":Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Account;->connectionSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1487
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1488
    const-string v4, "resetOnGservicesChange: cycle endpoint"

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetOnGservicesChange: old "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetOnGservicesChange: new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1496
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v6, v4, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 1497
    invoke-virtual {p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1498
    invoke-virtual {p1, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 1504
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->onGServicesChangeDelegate()V

    goto :goto_0

    .line 1502
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    goto :goto_1
.end method

.method private handlePackageInstalled()V
    .locals 3

    .prologue
    .line 1208
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "handlePackageInstalled: re-init providers"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1209
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->createNewInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1210
    .local v0, "providerMgr":Lorg/jivesoftware/smack/provider/ProviderManager;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1213
    invoke-static {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->setDefault(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1214
    return-void
.end method

.method private handleSendIqStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1310
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1311
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1312
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1317
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendIqStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendMessageStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1320
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1321
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1322
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1327
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendMessageStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendPresenceStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1388
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1389
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1394
    :goto_0
    return-void

    .line 1393
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPresenceStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendXmppFailed(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1397
    const-string v0, "invalid_account"

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method private handleSendXmppIq(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1296
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendIqStanza(Landroid/content/Intent;)V

    .line 1299
    :cond_0
    return-void
.end method

.method private handleSendXmppMessage(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1282
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendMessageStanza(Landroid/content/Intent;)V

    .line 1285
    :cond_0
    return-void
.end method

.method private handleSendXmppPresence(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1288
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1289
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPresenceStanza(Landroid/content/Intent;)V

    .line 1292
    :cond_0
    return-void
.end method

.method private handleUserPresent()V
    .locals 1

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    .line 1250
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections()V

    .line 1252
    :cond_0
    return-void
.end method

.method private initProviders()V
    .locals 3

    .prologue
    .line 1508
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "initProviders"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1510
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1511
    .local v0, "providerMgr":Lorg/jivesoftware/smack/provider/ProviderManager;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1512
    return-void
.end method

.method private initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 3
    .param p1, "providerMgr"    # Lorg/jivesoftware/smack/provider/ProviderManager;

    .prologue
    .line 1524
    const-string v0, "session"

    const-string v1, "http://www.google.com/session"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1527
    const-string v0, "query"

    const-string v1, "google:jingleinfo"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1531
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;-><init>(Landroid/content/Context;Lorg/jivesoftware/smack/provider/ProviderManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    .line 1532
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->searchProvidersFromIntent()V

    .line 1533
    return-void
.end method

.method private initializeConnection()V
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 1447
    return-void
.end method

.method private initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 0
    .param p1, "providerMgr"    # Lorg/jivesoftware/smack/provider/ProviderManager;

    .prologue
    .line 1515
    invoke-virtual {p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->initializeBuiltInProviders()V

    .line 1516
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1517
    return-void
.end method

.method private internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 1864
    const/4 v3, 0x0

    .line 1866
    .local v3, "retVal":Lcom/google/android/gtalkservice/IGTalkConnection;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1867
    .local v0, "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 1868
    .local v4, "user1":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getOriginalUsername()Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, "originalUser1":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1870
    :cond_1
    move-object v3, v0

    .line 1875
    .end local v0    # "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v2    # "originalUser1":Ljava/lang/String;
    .end local v4    # "user1":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private isBackgroundDataEnabled()Z
    .locals 1

    .prologue
    .line 2001
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method private isValidAccount(Ljava/lang/String;)Z
    .locals 7
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 837
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 839
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 840
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 841
    const/4 v5, 0x1

    .line 844
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_1
    return v5

    .line 839
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 844
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2043
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 2208
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    return-void
.end method

.method private logoutAllSessions()V
    .locals 5

    .prologue
    .line 1888
    const-string v3, "logoutAllSessions"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1889
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveMainEndpoint()V

    .line 1893
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1895
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    .local v1, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1901
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1902
    .local v2, "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->logout()V

    goto :goto_0

    .line 1897
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    .end local v2    # "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 1904
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    :cond_0
    return-void
.end method

.method private logoutAndRemoveMainEndpoint()V
    .locals 2

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1880
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logout()V

    .line 1882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 1884
    :cond_0
    monitor-exit v1

    .line 1885
    return-void

    .line 1884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logoutAndRemoveObsoleteEndpoints()V
    .locals 20

    .prologue
    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 870
    .local v8, "accounts":[Landroid/accounts/Account;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v13, "endpointsToBeClosed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 873
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 874
    .local v9, "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v18

    .line 875
    .local v18, "username":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->accountsContainsUsername([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v14

    .line 876
    .local v14, "found":Z
    if-nez v14, :cond_0

    .line 877
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 881
    .end local v9    # "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v14    # "found":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "username":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 884
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v19, "whereClauseSB":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 886
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 887
    .local v17, "numEndpointsToClose":I
    if-lez v17, :cond_4

    .line 888
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 894
    const/4 v15, 0x0

    .line 895
    .local v15, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 896
    .local v12, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logout()V

    .line 898
    if-lez v15, :cond_2

    .line 899
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_2
    const-string v2, "username==?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v15

    .line 903
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 906
    .end local v12    # "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 910
    .local v5, "whereClause":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 916
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_5

    .line 917
    const-string v2, "logoutAndRemoveObsoleteAccounts"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logEmptyCursor(Ljava/lang/String;)V

    .line 933
    .end local v5    # "whereClause":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v15    # "i":I
    :cond_4
    :goto_2
    return-void

    .line 921
    .restart local v5    # "whereClause":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "i":I
    :cond_5
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 926
    .local v11, "deleted":I
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logoutAndRemoveObsoleteAccounts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " accounts deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 931
    .end local v11    # "deleted":I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private maybeCreateMainEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 7
    .param p1, "account"    # Lcom/google/android/gsf/gtalkservice/Account;

    .prologue
    const/4 v6, 0x0

    .line 1551
    if-nez p1, :cond_0

    .line 1552
    const-string v2, "createMainEndpoint: no account"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1587
    :goto_0
    return-void

    .line 1557
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v2

    if-gez v2, :cond_1

    .line 1558
    const-string v2, "createMainEndpoint: port is negative"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1563
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1564
    const-string v2, "createMainEndpoint: bkgnd data OFF"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1568
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1571
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1572
    monitor-exit v3

    goto :goto_0

    .line 1574
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    const-string v2, "createMainEndpoint"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1577
    new-instance v2, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 1578
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    .line 1579
    .local v0, "reconnectManager":Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setMainEndpoint(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)V

    .line 1580
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1581
    invoke-virtual {v0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1585
    :cond_4
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setConnectionError(I)Z

    .line 1586
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->login()V

    goto :goto_0
.end method

.method private notifyServiceStarted()V
    .locals 2

    .prologue
    .line 1143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.MCS_CONNECTION_SERVICE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v0, "send":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1145
    return-void
.end method

.method private reconcileGTalkAccount(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 975
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconcileGTalkAccount for username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 979
    :cond_0
    if-nez p1, :cond_2

    .line 981
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object p1

    .line 982
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 992
    :cond_1
    :goto_0
    return-void

    .line 986
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->deleteAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 5
    .param p1, "endpoint"    # Lcom/google/android/gsf/gtalkservice/Endpoint;

    .prologue
    .line 300
    instance-of v3, p1, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v3, :cond_1

    .line 301
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "refreshAuthToken for AndroidEndpoint"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 327
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 305
    .local v0, "account":Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "oldToken":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 314
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private removeProviders()V
    .locals 3

    .prologue
    .line 1536
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "removeProviders"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1538
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1539
    .local v0, "providerMgr":Lorg/jivesoftware/smack/provider/ProviderManager;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeBuiltInProviders()V

    .line 1540
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeRawXmlIqProviders()V

    .line 1541
    return-void
.end method

.method private resetOnGservicesChange()V
    .locals 5

    .prologue
    .line 1453
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1454
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1455
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1461
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1463
    .local v2, "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1467
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1468
    .local v0, "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    goto :goto_0

    .line 1455
    .end local v0    # "connectionWrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1463
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 1470
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    :cond_0
    return-void
.end method

.method private sendDeviceIdleStatusForConnections()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isIdleNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->maybeSendSignals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 521
    return-void

    .line 519
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private setDeviceStorageLow(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 530
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    .line 532
    monitor-exit v1

    .line 533
    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setIsDevicePluggedIn(Z)V
    .locals 1
    .param p1, "isPluggedIn"    # Z

    .prologue
    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPluggedIn:Z

    .line 495
    monitor-exit p0

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setIsNetworkDataActive(Z)V
    .locals 1
    .param p1, "isActive"    # Z

    .prologue
    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mNetworkDataActive:Z

    .line 501
    monitor-exit p0

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setIsUserIdle(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 505
    monitor-enter p0

    .line 506
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    .line 507
    monitor-exit p0

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTalkForegroundState()V
    .locals 8

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x1

    .line 2260
    iget-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    if-nez v4, :cond_0

    .line 2288
    :goto_0
    return-void

    .line 2263
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2264
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2267
    new-instance v3, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;

    invoke-direct {v3, v6}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;-><init>(Z)V

    .line 2268
    .local v3, "metadataPacket":Lorg/jivesoftware/smack/packet/TalkMetadataPacket;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->setAccountId(J)V

    .line 2269
    const/4 v0, 0x0

    .line 2270
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 2271
    .local v1, "endpoint":Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    if-eqz v1, :cond_1

    .line 2272
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 2274
    :cond_1
    if-eqz v0, :cond_2

    .line 2276
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2285
    .end local v0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v1    # "endpoint":Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .end local v3    # "metadataPacket":Lorg/jivesoftware/smack/packet/TalkMetadataPacket;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2277
    .restart local v0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .restart local v1    # "endpoint":Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .restart local v3    # "metadataPacket":Lorg/jivesoftware/smack/packet/TalkMetadataPacket;
    :catch_0
    move-exception v2

    .line 2278
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send foreground state caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public blockingGetFirstAccountUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 779
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 781
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 782
    const/4 v1, 0x0

    .line 784
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public doXMPPConnectionWriteLock()V
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2224
    return-void
.end method

.method public doXMPPConnectionWriteUnlock()V
    .locals 1

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2228
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 331
    const/4 v12, 0x1

    .line 332
    .local v12, "printLog":Z
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    const-string v15, "-nolog"

    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 333
    const/4 v12, 0x0

    .line 335
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 337
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 338
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string v15, "----- DEVICE STORAGE IS LOW -----"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    div-long v5, v15, v17

    .line 344
    .local v5, "elapsed":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "android_id"

    const-wide/16 v17, 0x0

    invoke-static/range {v15 .. v18}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 346
    .local v3, "androidId":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time since service creation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "aid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-wide/16 v17, 0x0

    cmp-long v15, v3, v17

    if-nez v15, :cond_7

    const-string v15, "(INVALID AID!!!)"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "User idle timeout: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "s"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "User idle: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Protocol version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-byte v16, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const-string v15, "RMQ2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->getShowDebugLogs()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 354
    const-string v15, "debug logs ON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 358
    .local v11, "numEndpoints":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v15, :cond_3

    .line 359
    add-int/lit8 v11, v11, 0x1

    .line 361
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "num endpoints: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v2

    .line 364
    .local v2, "alarm":Lcom/google/android/gsf/gtalkservice/Alarm;
    if-eqz v2, :cond_4

    .line 365
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->dump(Ljava/io/PrintWriter;)V

    .line 370
    :cond_4
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->dump(Ljava/io/PrintWriter;)V

    .line 374
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->dump(Ljava/io/PrintWriter;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v14

    .line 379
    .local v14, "xmppConnection":Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 380
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smack/XMPPConnection;->dump(Ljava/io/PrintWriter;)V

    .line 383
    const-string v15, "GTalkService"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 384
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smack/XMPPConnection;->dumpVerbose(Ljava/io/PrintWriter;)V

    .line 388
    :cond_5
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v15, :cond_6

    .line 390
    const-string v15, "### Main Endpoint ###"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->dump(Ljava/io/PrintWriter;)V

    .line 395
    :cond_6
    const/4 v8, 0x2

    .line 396
    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 397
    .local v13, "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v7

    .line 400
    .local v7, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "### Endpoint ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") ###"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->dump(Ljava/io/PrintWriter;)V

    move v9, v8

    .line 403
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_1

    .line 347
    .end local v2    # "alarm":Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v7    # "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "numEndpoints":I
    .end local v13    # "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v14    # "xmppConnection":Lorg/jivesoftware/smack/XMPPConnection;
    :cond_7
    const-string v15, ""

    goto/16 :goto_0

    .line 405
    .restart local v2    # "alarm":Lcom/google/android/gsf/gtalkservice/Alarm;
    .restart local v9    # "i":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "numEndpoints":I
    .restart local v14    # "xmppConnection":Lorg/jivesoftware/smack/XMPPConnection;
    :cond_8
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->dump(Ljava/io/PrintWriter;)V

    .line 408
    if-eqz v12, :cond_9

    .line 409
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v15, "### Log History ###"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/gtalkservice/Log;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 417
    return-void

    .line 415
    .end local v2    # "alarm":Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v3    # "androidId":J
    .end local v5    # "elapsed":J
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "numEndpoints":I
    .end local v14    # "xmppConnection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v15
.end method

.method public getAccountForAndroidId()Lcom/google/android/gsf/gtalkservice/Account;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 796
    .local v1, "androidId":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@mcs.android.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "username":Ljava/lang/String;
    cmp-long v5, v1, v7

    if-nez v5, :cond_1

    .line 799
    const/16 v5, 0x9

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 800
    const-string v5, "GTalkService"

    const-string v6, "getAccountForAndroidId: get ANDROID_ID returned 0!"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_0
    :goto_0
    return-object v0

    .line 804
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSecurityTokenForAndroidId()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 808
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 809
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountForAndroidId: aid username="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 811
    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v4, v3, v5, v6}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 813
    .local v0, "account":Lcom/google/android/gsf/gtalkservice/Account;
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsOkToConnectToMcs()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1988
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return v0

    .line 1994
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1997
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMainEndpoint()Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .locals 2

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    monitor-exit v1

    return-object v0

    .line 1441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    return-object v0
.end method

.method public getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    .locals 1

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    return-object v0
.end method

.method public getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    return-object v0
.end method

.method public getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    return-object v0
.end method

.method public getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public handleDeviceStorageLow()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 539
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    .line 540
    return-void
.end method

.method public handleDeviceStorageOk()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 545
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 546
    return-void
.end method

.method public handleGservicesSettingChanged()V
    .locals 4

    .prologue
    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 556
    :cond_0
    monitor-exit p0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDevicePluggedIn()Z
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPluggedIn:Z

    monitor-exit p0

    return v0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNetworkDataActive()Z
    .locals 1

    .prologue
    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mNetworkDataActive:Z

    monitor-exit p0

    return v0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUserIdle()Z
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    monitor-exit p0

    return v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyActiveChatSessionsOfChange(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V
    .locals 8
    .param p1, "entry"    # Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;

    .prologue
    .line 2026
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2028
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 2029
    .local v3, "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 2030
    .local v1, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->getAccountId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v4, :cond_0

    .line 2032
    check-cast v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .end local v1    # "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 2034
    .local v0, "chatMgr":Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyActiveChatSessionsOfChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2038
    .end local v0    # "chatMgr":Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2040
    return-void
.end method

.method public notifyActiveChatSessionsOfChanges(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2020
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;

    .line 2021
    .local v0, "entry":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyActiveChatSessionsOfChange(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V

    goto :goto_0

    .line 2023
    .end local v0    # "entry":Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1420
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!! GTALK Service for user UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :cond_0
    const-string v0, "com.google.android.gtalkservice.IGTalkServiceInternal"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 1429
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1040
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->queryLoggingLevel()V

    .line 1041
    const-string v5, "GTalkService"

    invoke-static {v5, v9}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1042
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate for user UID="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " PID="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1045
    :cond_0
    invoke-static {v9}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1047
    new-instance v5, Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "gtalk_send_app_foreground_state"

    invoke-static {v5, v8, v6}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    .line 1052
    new-instance v5, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    .line 1054
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1056
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1058
    new-instance v5, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-direct {v5, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;-><init>(Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 1059
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdFromGservices(Landroid/content/ContentResolver;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setIncludeStreamId(Z)V

    .line 1061
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getRmqAckIntervalFromGservices(Landroid/content/ContentResolver;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setAckingInterval(I)V

    .line 1063
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setMessageQueueCallbacks(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;)V

    .line 1065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    .line 1067
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1069
    new-instance v5, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    const-string v8, "ac2dm"

    invoke-direct {v5, p0, v8}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    .line 1071
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    .line 1072
    iput-object v10, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 1073
    new-instance v5, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    .line 1075
    new-instance v5, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-direct {v5, p0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    .line 1079
    new-instance v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1080
    .local v4, "thread":Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;->start()V

    .line 1081
    :goto_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    if-nez v5, :cond_1

    .line 1082
    monitor-enter p0

    .line 1084
    const-wide/16 v8, 0x2

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1090
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initProviders()V

    .line 1092
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1093
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    const-string v5, "com.google.glass.action.DON_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v5, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    const-string v5, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    const-string v5, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1102
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1104
    const-string v5, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1105
    const-string v5, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    const-string v5, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    const-string v5, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1114
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    new-instance v5, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1120
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v8, -0x1

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1121
    .local v3, "plugged":I
    if-eq v3, v7, :cond_2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    :cond_2
    move v5, v7

    :goto_2
    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsDevicePluggedIn(Z)V

    .line 1124
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1125
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1127
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v5, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1129
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1130
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    .line 1133
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyServiceStarted()V

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "com.google.glass.action.DON_STATE"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1137
    if-eqz v1, :cond_4

    const-string v5, "is_donned"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1138
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDonned()V

    .line 1140
    :cond_5
    return-void

    :cond_6
    move v5, v6

    .line 1121
    goto :goto_2

    .line 1085
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "plugged":I
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1403
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1404
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1406
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 1409
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1411
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->onServiceDestroyed()V

    .line 1413
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->removeProviders()V

    .line 1415
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1416
    return-void
.end method

.method public onGotBatchPresence()V
    .locals 7

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 448
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 449
    .local v3, "screenIsOn":Z
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGotBatchPresence but idle, screenIsOn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    if-eqz v3, :cond_1

    .line 453
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isKeyguardLocked"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 454
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 455
    .local v0, "isLocked":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 457
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v0    # "isLocked":Ljava/lang/Boolean;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "screenIsOn":Z
    :cond_0
    :goto_0
    return-void

    .line 461
    .restart local v2    # "pm":Landroid/os/PowerManager;
    .restart local v3    # "screenIsOn":Z
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections()V

    goto :goto_0

    .line 459
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onSentBatchPresenceRequest()V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "GTalkService"

    const-string v1, "onSentBatchPresenceRequest but user idle"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V

    .line 472
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    .line 1156
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gcm_old_gsf"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1158
    .local v1, "oldGsfEnabled":I
    if-nez v1, :cond_0

    .line 1159
    invoke-virtual {p0, p3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->stopSelf(I)V

    .line 1198
    :goto_0
    return v2

    .line 1162
    :cond_0
    const-string v3, "GTalkService"

    invoke-static {v3, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1163
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTALK start command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_1
    if-eqz p1, :cond_2

    .line 1170
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.google.android.gtalkservice.intent.SEND_IQ_STANZA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1173
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendIqStanzaIntent(Landroid/content/Intent;)V

    .line 1198
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1174
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string v2, "com.google.android.gtalkservice.intent.SEND_MESSAGE_STANZA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1175
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendMessageStanzaIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 1176
    :cond_4
    const-string v2, "com.google.android.gtalkservice.intent.SEND_PRESENCE_STANZA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1177
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendPresenceStanzaIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 1178
    :cond_5
    const-string v2, "com.google.android.gtalkservice.intent.CREATE_XMPP_ENDPOINT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1179
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleCreateXmppEndpoint(Landroid/content/Intent;)V

    goto :goto_1

    .line 1180
    :cond_6
    const-string v2, "com.google.android.gtalkservice.intent.SEND_XMPP_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1181
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppMessage(Landroid/content/Intent;)V

    goto :goto_1

    .line 1182
    :cond_7
    const-string v2, "com.google.android.gtalkservice.intent.SEND_XMPP_PRESENCE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1183
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppPresence(Landroid/content/Intent;)V

    goto :goto_1

    .line 1184
    :cond_8
    const-string v2, "com.google.android.gtalkservice.intent.SEND_XMPP_IQ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1185
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppIq(Landroid/content/Intent;)V

    goto :goto_1

    .line 1186
    :cond_9
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1187
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handlePackageInstalled()V

    goto :goto_1

    .line 1188
    :cond_a
    const-string v2, "com.google.android.c2dm.intent.SEND_DATA_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1189
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isD2cmEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1191
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getDataMessageManager()Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->sendDataMessageStanza(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1434
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1435
    const/4 v0, 0x1

    return v0
.end method

.method public removeConnection(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .prologue
    .line 1907
    if-nez p1, :cond_0

    .line 1917
    :goto_0
    return-void

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1913
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1915
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public sendHeartbeatToServer()V
    .locals 2

    .prologue
    .line 2006
    const-string v0, "com.google.android.gtalkservice.permission.SEND_HEARTBEAT"

    const-string v1, "Need SEND_HEART_BEAT permission"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-nez v0, :cond_0

    .line 2011
    const-string v0, "GTalkService"

    const-string v1, "sendHeartbeatToServer: main endpoint is null"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    :goto_0
    return-void

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendHeartbeatToServer()Z

    goto :goto_0
.end method

.method public setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 2216
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXMPPConnection: connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 2219
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 2220
    return-void
.end method
