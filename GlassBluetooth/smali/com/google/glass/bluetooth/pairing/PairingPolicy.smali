.class public Lcom/google/glass/bluetooth/pairing/PairingPolicy;
.super Ljava/lang/Object;
.source "PairingPolicy.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
.implements Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;,
        Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;
    }
.end annotation


# static fields
.field private static final PREF_AUTO_TETHER:Ljava/lang/String; = "autoTether"

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "TetheringService"

.field private static final PREF_MYGLASS_CONNECTION_TYPE:Ljava/lang/String; = "myGlassType"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

.field private final broadcastReceiver:Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;

.field private defaultAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

.field private final glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

.field private initializationState:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

.field private preferences:Landroid/content/SharedPreferences;

.field private scanningDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 33
    sget-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pairingReceiver"

    .line 34
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/GlassBluetoothInterface;)V
    .locals 2
    .param p1, "glassBluetooth"    # Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->UNINITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->initializationState:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    .line 60
    new-instance v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->broadcastReceiver:Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    .line 108
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-interface {p1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothAdapterState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 109
    sget-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->UNINITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->initializationState:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    .line 110
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->defaultAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 112
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->scanningDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->scanningDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method static synthetic access$1100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->preferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logDump()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->deduceSinglyPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->afterPairing(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->afterUnpairing()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->broadcastReceiver:Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;)Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->initializationState:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    return-object p1
.end method

.method private afterPairing(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 6
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, " bonded to: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->isSinglyPairableDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->unpairOtherDevices(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 167
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Storing device address preference: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-string v1, "autoTether"

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v1, "myGlassType"

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getMyGlassConnectionType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    invoke-interface {v1, p1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->setPairedDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 176
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private afterUnpairing()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 140
    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "unbonded from singly pairable device %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    invoke-interface {v4}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0, v6}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->unpairOtherDevices(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 145
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Removing stored device preference"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const-string v1, "autoTether"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    invoke-interface {v1, v6}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->setPairedDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 152
    return-void
.end method

.method private deduceSinglyPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 6

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->retrieveDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->searchSinglyPairedDevices()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->retrieveMyGlassConnectionType()I

    move-result v2

    .line 92
    .local v2, "myGlassConnectionType":I
    iget-object v3, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->defaultAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 93
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->addMyGlassConnectionType(I)Z

    .line 95
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 102
    sget-object v3, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Preferred bluetooth device is no longer paired"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSinglyPairableDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z
    .locals 1
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->hasNap()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logDump()V
    .locals 6

    .prologue
    .line 232
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 233
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 234
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 236
    sget-object v2, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method private retrieveDeviceAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "autoTether"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private retrieveMyGlassConnectionType()I
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "myGlassType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private searchSinglyPairedDevices()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 8

    .prologue
    .line 206
    iget-object v3, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->defaultAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 207
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    const/4 v2, 0x0

    .line 208
    .local v2, "singlyPaired":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 209
    .local v0, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->isSinglyPairableDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    if-nez v2, :cond_1

    .line 211
    move-object v2, v0

    goto :goto_0

    .line 213
    :cond_1
    sget-object v4, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Paired to more than one Phone/NAP: %s and %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    .end local v0    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_2
    return-object v2
.end method

.method private unpairOtherDevices(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 7
    .param p1, "exceptDevice"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 185
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->defaultAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 186
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 187
    .local v1, "other":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v1, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->isSinglyPairableDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    sget-object v3, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, " unpair from %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->removeBond(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 195
    .end local v1    # "other":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->broadcastReceiver:Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    invoke-interface {v1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 121
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 313
    iget-object v4, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->glassBluetooth:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    invoke-interface {v4}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Singly paired device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->initializationState:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    sget-object v5, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->INITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    if-eq v4, v5, :cond_1

    .line 316
    const-string v4, "PairingPolicy uninitialized, dump incomplete."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_0
    return-void

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->retrieveDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "address":Ljava/lang/String;
    const/4 v3, 0x0

    .line 322
    .local v3, "preferredDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    if-eqz v0, :cond_2

    .line 323
    iget-object v4, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->defaultAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v3

    .line 325
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Stored singly paired device preference: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    iget-object v4, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->defaultAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 327
    .local v2, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 328
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->isSinglyPairableDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ", not "

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "  paired to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "singly pairable"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_3
    const-string v4, ", "

    goto :goto_1
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onBluetoothAdapterDisabled()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onBluetoothAdapterEnabled()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->initializationState:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->UNINITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    if-eq v0, v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->INITIALIZING:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->initializationState:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    .line 252
    new-instance v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;-><init>(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 282
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 292
    return-void
.end method

.method public onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 6
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->isSinglyPairableDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Storing device address preference: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    const-string v1, "autoTether"

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v1, "myGlassType"

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getMyGlassConnectionType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
