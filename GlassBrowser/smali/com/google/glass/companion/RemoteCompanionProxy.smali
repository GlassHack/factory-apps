.class public Lcom/google/glass/companion/RemoteCompanionProxy;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/RemoteCompanionProxy$Provider;,
        Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;,
        Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;,
        Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final companionPropertiesListenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static volatile isCompanionConnectedForTest:Ljava/lang/Boolean;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionLocalVersion:I

.field private final companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

.field private companionRemoteVersion:I

.field private companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

.field private final connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

.field private final context:Landroid/content/Context;

.field private volatile isCompanionConnected:Z

.field private volatile isCompanionInteractiveState:Z

.field private volatile isCompanionWifiConnected:Z

.field private volatile isKeyboardTextEntrySupported:Z

.field private volatile isPhotoSyncEnabled:Z

.field private volatile isSmsEnabled:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/companion/CompanionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final pairedDeviceReceiver:Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "companionStateListener"

    .line 42
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "companionPropertiesListener"

    .line 45
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pairedDeviceReceiver"

    .line 48
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/companion/ConnectionChecker;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionChecker"    # Lcom/google/glass/companion/ConnectionChecker;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    .line 73
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    .line 78
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    .line 83
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected:Z

    .line 88
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionInteractiveState:Z

    .line 93
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    .line 118
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    .line 121
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    .line 124
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    .line 127
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 150
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiver:Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

    .line 157
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    .line 159
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 162
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiver:Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    return p1
.end method

.method static synthetic access$1500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionInteractiveState:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionInteractiveState:Z

    return p1
.end method

.method static synthetic access$1800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Lcom/google/glass/companion/IRemoteCompanionService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    return-object v0
.end method

.method private notifyCompanionStateChange()V
    .locals 6

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-boolean v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/ConnectionChecker;->setConnectState(Z)V

    .line 174
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/ConnectionChecker;->setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 179
    .local v0, "listener":Lcom/google/glass/companion/CompanionStateChangeListener;
    iget-boolean v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    iget v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    iget v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    invoke-interface {v0, v3, v4, v5}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    goto :goto_1

    .line 182
    .end local v0    # "listener":Lcom/google/glass/companion/CompanionStateChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionPropertiesListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->unregister(Landroid/content/Context;)V

    goto :goto_0

    .line 182
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method

.method public static setIsConnectedForTest(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "isConnected"    # Ljava/lang/Boolean;

    .prologue
    .line 290
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 291
    sput-object p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    .line 292
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/glass/companion/CompanionStateChangeListener;

    .prologue
    .line 263
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$2;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 276
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    return-void

    .line 279
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getCompanionRemoteVersion()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return v0
.end method

.method public isCompanionInteractiveState()Z
    .locals 1

    .prologue
    .line 251
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
    .line 247
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

.method public isConnected()Z
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    goto :goto_0
.end method

.method public isKeyboardTextEntrySupported()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported:Z

    return v0
.end method

.method public isMulticastSupportedOnPairedDevice()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 224
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->hasMyGlassMulticastConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoSyncEnabled()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled:Z

    return v0
.end method

.method public isSmsEnabled()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return v0
.end method

.method public isTetheringErrorDetected()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    invoke-virtual {v0}, Lcom/google/glass/companion/ConnectionChecker;->isTetheringErrorDetected()Z

    move-result v0

    .line 231
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
    .line 286
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public sendCompanionMessage(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 201
    .local v0, "companionServiceCopy":Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    const/4 v2, 0x1

    .line 209
    :cond_0
    :goto_0
    return v2

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to send envelope."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 1
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 191
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public supportNumOfPhotosToSync()Z
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    .line 300
    invoke-static {v0}, Lcom/google/glass/companion/CompanionVersionUtils;->getMinorVersion(I)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportPhotoSyncDeletion()Z
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isPhotoSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    .line 306
    invoke-static {v0}, Lcom/google/glass/companion/CompanionVersionUtils;->getMinorVersion(I)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
