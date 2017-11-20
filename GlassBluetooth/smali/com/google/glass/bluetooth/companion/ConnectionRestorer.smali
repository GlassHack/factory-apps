.class public Lcom/google/glass/bluetooth/companion/ConnectionRestorer;
.super Ljava/lang/Object;
.source "ConnectionRestorer.java"


# static fields
.field public static final LAST_CONNECTED_DEVICE_ADDRESS:Ljava/lang/String; = "LAST_CONNECTED_DEVICE_ADDRESS"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "COMPANION_SERVICE_DATA"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final adapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

.field private final context:Landroid/content/Context;

.field private volatile isConnected:Z

.field private lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private lastDeviceAddress:Ljava/lang/String;

.field private volatile requester:Lcom/google/glass/bluetooth/companion/PingRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-direct {v0, p1}, Lcom/google/glass/bluetooth/companion/PingRequester;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->requester:Lcom/google/glass/bluetooth/companion/PingRequester;

    .line 37
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->adapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/ConnectionRestorer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastDeviceAddress:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 49
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;-><init>(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCompanionConnected(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 5
    .param p1, "deviceWrapper"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 85
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->context:Landroid/content/Context;

    const-string v1, "COMPANION_SERVICE_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_CONNECTED_DEVICE_ADDRESS"

    .line 88
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    sget-object v0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Saving last connected device address: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 92
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastDeviceAddress:Ljava/lang/String;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->requester:Lcom/google/glass/bluetooth/companion/PingRequester;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/PingRequester;->stopPing()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCompanionDisconnected()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->isConnected:Z

    .line 100
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->adapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->requester:Lcom/google/glass/bluetooth/companion/PingRequester;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->SHORT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/companion/PingRequester;->ping(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ping()V
    .locals 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->isConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->adapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->requester:Lcom/google/glass/bluetooth/companion/PingRequester;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/companion/PingRequester;->ping(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recover()V
    .locals 4

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->adapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->adapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 74
    .local v0, "deviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->requester:Lcom/google/glass/bluetooth/companion/PingRequester;

    sget-object v2, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/bluetooth/companion/PingRequester;->ping(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;)V

    .line 76
    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->lastConnectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v0    # "deviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_1
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setPingRequestForTesting(Lcom/google/glass/bluetooth/companion/PingRequester;)V
    .locals 0
    .param p1, "pingRequester"    # Lcom/google/glass/bluetooth/companion/PingRequester;

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 113
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->requester:Lcom/google/glass/bluetooth/companion/PingRequester;

    .line 114
    return-void
.end method
