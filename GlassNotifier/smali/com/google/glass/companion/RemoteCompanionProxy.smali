.class public Lcom/google/glass/companion/RemoteCompanionProxy;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/RemoteCompanionProxy$Provider;,
        Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;,
        Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    }
.end annotation


# static fields
.field static final MAX_NUM_PENDING_BUNDLES:I = 0xa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final OLD_BUNDLES_PERIOD_MS:J = 0x36ee80L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final companionPropertiesListenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionLocalVersion:I

.field private final companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

.field private companionRemoteVersion:I

.field private volatile companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

.field private final connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

.field private final context:Landroid/content/Context;

.field private volatile isCompanionConnected:Z

.field private volatile isCompanionInteractiveState:Z

.field private volatile isCompanionWifiConnected:Z

.field private volatile isKeyboardTextEntrySupported:Z

.field private volatile isPhotoSyncEnabled:Z

.field private volatile isSmsEnabled:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/companion/CompanionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingBundles:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "companionStateListener"

    .line 46
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 48
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "companionPropertiesListener"

    .line 49
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/companion/ConnectionChecker;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionChecker"    # Lcom/google/glass/companion/ConnectionChecker;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    .line 82
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    .line 87
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected:Z

    .line 97
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionInteractiveState:Z

    .line 102
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    .line 124
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    .line 130
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    .line 133
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    .line 136
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    .line 139
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 167
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    .line 169
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 172
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    return p1
.end method

.method static synthetic access$1500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionInteractiveState:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionInteractiveState:Z

    return p1
.end method

.method static synthetic access$1800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Lcom/google/glass/companion/IRemoteCompanionService;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->notifyConnectionChecker()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    return-object v0
.end method

.method public static final createInstance(Landroid/content/Context;)Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker$Provider;->getInstance()Lcom/google/glass/companion/ConnectionChecker$Provider;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/ConnectionChecker$Provider;->get(Landroid/content/Context;)Lcom/google/glass/companion/ConnectionChecker;

    move-result-object v0

    .line 450
    .local v0, "connectionChecker":Lcom/google/glass/companion/ConnectionChecker;
    new-instance v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/content/Context;Lcom/google/glass/companion/ConnectionChecker;)V

    return-object v1
.end method

.method private dequeuePendingMessages()V
    .locals 7

    .prologue
    .line 263
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    sget-object v1, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Try sending %s pending bundles"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    invoke-virtual {v6}, Landroid/util/LruCache;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 269
    .local v0, "manager":Lcom/google/glass/async/AsyncThreadExecutorManager;
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    new-instance v3, Lcom/google/glass/companion/RemoteCompanionProxy$2;

    invoke-direct {v3, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$2;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    invoke-interface {v1, v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 295
    .end local v0    # "manager":Lcom/google/glass/async/AsyncThreadExecutorManager;
    :cond_0
    monitor-exit v2

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyCompanionStateChange()V
    .locals 6

    .prologue
    .line 182
    iget-boolean v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    .line 184
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 190
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->notifyConnectionChecker()V

    .line 192
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 194
    .local v0, "listener":Lcom/google/glass/companion/CompanionStateChangeListener;
    iget-boolean v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    iget v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    iget v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    invoke-interface {v0, v3, v4, v5}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    goto :goto_1

    .line 197
    .end local v0    # "listener":Lcom/google/glass/companion/CompanionStateChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    .line 187
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    goto :goto_0

    .line 197
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isReadyToSendEnvelope()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->dequeuePendingMessages()V

    .line 202
    :cond_2
    return-void
.end method

.method private notifyConnectionChecker()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-boolean v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/ConnectionChecker;->setConnectState(Z)V

    .line 177
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/ConnectionChecker;->setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/glass/companion/CompanionStateChangeListener;

    .prologue
    .line 337
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$3;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 346
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 347
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    return-void

    .line 349
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getCompanionRemoteVersion()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return v0
.end method

.method public isCompanionInteractiveState()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionInteractiveState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompanionWifiConnected()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardTextEntrySupported()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    return v0
.end method

.method public isPhotoSyncEnabled()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    return v0
.end method

.method public isReadyToSendEnvelope()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmsEnabled()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return v0
.end method

.method public isTetheringErrorDetected()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    invoke-virtual {v0}, Lcom/google/glass/companion/ConnectionChecker;->isTetheringErrorDetected()Z

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/companion/CompanionStateChangeListener;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public sendCompanionMessage(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 219
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sending companion message..."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 221
    .local v0, "companionServiceCopy":Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    if-eqz v3, :cond_0

    .line 223
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V

    .line 224
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sent!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v2, 0x1

    .line 230
    :cond_0
    :goto_0
    return v2

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to send envelope."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendCompanionMessage(Lcom/google/glass/companion/nano/Proto$Envelope;)Z
    .locals 1
    .param p1, "envelope"    # Lcom/google/glass/companion/nano/Proto$Envelope;

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/nano/Proto$Envelope;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendOrQueueMessage(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 246
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v2, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Queuing the message since we haven\'t bound to the service yet: size is %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pendingBundles:Landroid/util/LruCache;

    .line 254
    invoke-virtual {v6}, Landroid/util/LruCache;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 252
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    monitor-exit v1

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public supportNumOfPhotosToSync()Z
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    .line 365
    invoke-static {v0}, Lcom/google/glass/companion/CompanionVersionUtils;->getMinorVersion(I)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportPhotoSyncDeletion()Z
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    .line 371
    invoke-static {v0}, Lcom/google/glass/companion/CompanionVersionUtils;->getMinorVersion(I)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
