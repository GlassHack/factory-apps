.class public Lcom/google/glass/settings/ui/HIDSettingsItemView;
.super Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;
.source "HIDSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final ACTION_SETUP_BLUETOOTH:Ljava/lang/String; = "com.google.glass.action.SETUP_BLUETOOTH"

.field public static final EXTRA_CONNECTED_DEVICES:Ljava/lang/String; = "connected_devices"

.field private static final deviceNull:Ljava/lang/String; = "Device is null"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

.field private btManager:Landroid/bluetooth/BluetoothManager;

.field private connectedHidDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private forgettingDialog:Lcom/google/glass/widget/MessageDialog;

.field private hidDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

.field private inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field private inputDeviceState:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

.field private final inputDeviceStateChangeListener:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

.field private final pairingReceiver:Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;

.field private visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pairingReceiver"

    .line 109
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->connectedHidDevices:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->hidDevices:Ljava/util/Set;

    .line 54
    iput-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 56
    iput-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    .line 58
    new-instance v0, Lcom/google/glass/util/BluetoothHelper;

    invoke-direct {v0}, Lcom/google/glass/util/BluetoothHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    .line 62
    new-instance v0, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;Lcom/google/glass/settings/ui/HIDSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->pairingReceiver:Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;

    .line 63
    new-instance v0, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceStateChangeListener:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .line 77
    new-instance v0, Lcom/google/glass/settings/ui/HIDSettingsItemView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView$2;-><init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    .line 121
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->btManager:Landroid/bluetooth/BluetoothManager;

    .line 123
    invoke-static {}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->getInstance()Lcom/google/glass/connectivity/InetConnectionStateProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->from(Landroid/content/Context;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/HIDSettingsItemView;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/HIDSettingsItemView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->connectedHidDevices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->update()V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/HIDSettingsItemView;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/settings/ui/HIDSettingsItemView;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->showForgettenDialog()V

    return-void
.end method

.method static synthetic access$800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private forget(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->showForgettingDialog()V

    .line 362
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->removeBond()V

    .line 363
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private getBondedInputDevicesCount()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v5, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->btManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 208
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    .line 224
    :cond_0
    return v1

    .line 211
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 212
    .local v3, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_0

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "count":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 218
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v4

    .line 219
    .local v4, "wrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isHID()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getConnectedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->connectedHidDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->connectedHidDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectedDevices()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    iget-object v2, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->connectedHidDevices:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 245
    .local v0, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    sget-object v4, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Connected device: "

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 247
    .end local v0    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_1
    return-object v1
.end method

.method private getConnectedDevicesCount()I
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->connectedHidDevices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 229
    .local v0, "count":I
    return v0
.end method

.method private getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "Device is null"

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDeviceName(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v0, "Device is null"

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPairedInputDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 255
    iget-object v6, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->btManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 256
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    move-object v3, v5

    .line 279
    :cond_0
    :goto_0
    return-object v3

    .line 260
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 262
    .local v2, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v2, :cond_2

    move-object v3, v5

    .line 263
    goto :goto_0

    .line 266
    :cond_2
    const/4 v3, 0x0

    .line 268
    .local v3, "inputDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 269
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v4

    .line 270
    .local v4, "wrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isHID()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 271
    if-nez v3, :cond_4

    .line 272
    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v3, v5

    .line 275
    goto :goto_0
.end method

.method private isBluetoothEnabled()Z
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 307
    .local v0, "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 308
    const/4 v1, 0x0

    .line 310
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private showForgettenDialog()V
    .locals 4

    .prologue
    .line 379
    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 381
    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    sget v2, Lcom/google/glass/settings/ui/R$string;->bluetooth_forgotten:I

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 392
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v2, 0x1

    .line 384
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 385
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 386
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->bluetooth_forgotten:I

    .line 387
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 390
    .local v0, "dialog":Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_0
.end method

.method private showForgettingDialog()V
    .locals 3

    .prologue
    .line 367
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v1, 0x0

    .line 368
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 369
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_delete_50:I

    .line 370
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_forgetting:I

    .line 371
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    .line 374
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 375
    return-void
.end method

.method private update()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 127
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 129
    sget v10, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v10}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 130
    .local v7, "deviceNameLabel":Landroid/widget/TextView;
    sget v10, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v10}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 132
    .local v4, "connectionStateLabel":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$string;->bluetooth_hid_title:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "deviceId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$string;->bluetooth_not_connected:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "connectionState":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 135
    .local v1, "color":I
    sget v9, Lcom/google/glass/settings/ui/R$drawable;->bluetooth_disconnected:I

    .line 137
    .local v9, "stateIcon":I
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->updateDevicesList()V

    .line 138
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getConnectedDevicesCount()I

    move-result v2

    .line 140
    .local v2, "connectedDeviceCount":I
    if-nez v2, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getPairedInputDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v5

    .line 142
    .local v5, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    if-eqz v5, :cond_2

    .line 143
    iput-object v5, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 144
    invoke-direct {p0, v5}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getDeviceName(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .end local v5    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_0
    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    sget v10, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v10}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, "bluetoothSettingsFooter":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 173
    .local v8, "footerTxtMsg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->isBluetoothEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 174
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getBondedInputDevicesCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$string;->bluetooth_hid_footer:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 181
    :cond_1
    :goto_1
    if-eqz v8, :cond_6

    .line 182
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_2
    return-void

    .line 145
    .end local v0    # "bluetoothSettingsFooter":Landroid/widget/TextView;
    .end local v8    # "footerTxtMsg":Ljava/lang/String;
    .restart local v5    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_2
    iget-object v10, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v10, :cond_0

    .line 146
    iget-object v10, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {p0, v10}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getDeviceName(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 149
    .end local v5    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$string;->bluetooth_connected:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 151
    sget v9, Lcom/google/glass/settings/ui/R$drawable;->ic_bluetooth_connected_150:I

    .line 152
    if-ne v2, v12, :cond_4

    .line 153
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getConnectedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v5

    .line 154
    .restart local v5    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-direct {p0, v5}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getDeviceName(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Ljava/lang/String;

    move-result-object v6

    .line 155
    iput-object v5, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    goto :goto_0

    .line 156
    .end local v5    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_4
    if-le v2, v12, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$string;->bluetooth_many_devices_connected:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    .line 157
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 159
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    goto :goto_0

    .line 178
    .restart local v0    # "bluetoothSettingsFooter":Landroid/widget/TextView;
    .restart local v8    # "footerTxtMsg":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/glass/settings/ui/R$string;->bluetooth_disabled:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 185
    :cond_6
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateDevicesList()V
    .locals 10

    .prologue
    .line 190
    iget-object v4, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->btManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 191
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v4, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->hidDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 192
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 194
    .local v3, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 196
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 197
    .local v1, "btWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isHID()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    sget-object v5, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "HID device: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v5, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->hidDevices:Ljava/util/Set;

    new-instance v6, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v6, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v1    # "btWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->onAttachedToWindow()V

    .line 285
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceState:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .line 286
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceState:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceStateChangeListener:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->addListener(Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V

    .line 287
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->pairingReceiver:Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 289
    sget-object v0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Started bluetooth scan."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->update()V

    .line 291
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable()V

    .line 292
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->pairingReceiver:Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/HIDSettingsItemView$PairingBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 297
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceState:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceStateChangeListener:Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->removeListener(Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V

    .line 298
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceState:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    sget-object v1, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inputDeviceState:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .line 300
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->inetListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 301
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 302
    invoke-super {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->onDetachedFromWindow()V

    .line 303
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 332
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 334
    .local v1, "itemResId":I
    sget-object v4, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "onOptionsItemSelected()=%s"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    sget v4, Lcom/google/glass/settings/ui/R$id;->pair_device:I

    if-ne v1, v4, :cond_0

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.SETUP_BLUETOOTH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 354
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 342
    :cond_0
    sget v4, Lcom/google/glass/settings/ui/R$id;->forget_device:I

    if-ne v1, v4, :cond_1

    .line 344
    iget-object v2, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {p0, v2}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->forget(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 346
    :cond_1
    sget v4, Lcom/google/glass/settings/ui/R$id;->show_paired_devices:I

    if-ne v1, v4, :cond_2

    .line 347
    sget-object v4, Lcom/google/glass/settings/ui/HIDSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Show paired devices"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "connected_devices"

    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getConnectedDevices()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 350
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 354
    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 5
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 315
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    :goto_0
    return v3

    .line 318
    :cond_0
    sget v1, Lcom/google/glass/settings/ui/R$menu;->new_bluetooth_settings_menu:I

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 319
    sget v1, Lcom/google/glass/settings/ui/R$id;->forget_device:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->getBondedInputDevicesCount()I

    move-result v0

    .line 323
    .local v0, "deviceCount":I
    iget-object v1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView;->visibleDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v1, :cond_1

    .line 324
    add-int/lit8 v0, v0, -0x1

    .line 326
    :cond_1
    sget v1, Lcom/google/glass/settings/ui/R$id;->show_paired_devices:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-lez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v3, v2

    .line 327
    goto :goto_0

    .end local v0    # "deviceCount":I
    :cond_3
    move v1, v3

    .line 319
    goto :goto_1
.end method
