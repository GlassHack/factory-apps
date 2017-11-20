.class public Lcom/google/glass/bluetooth/input/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;
.implements Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/input/HidProfile$1;,
        Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final broadcastReceiver:Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;

.field private isClosed:Z

.field private profile:Landroid/bluetooth/BluetoothProfile;

.field private final service:Lcom/google/glass/bluetooth/GlassBluetoothService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V
    .locals 2
    .param p1, "service"    # Lcom/google/glass/bluetooth/GlassBluetoothService;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->isClosed:Z

    .line 34
    new-instance v0, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/input/HidProfile;Lcom/google/glass/bluetooth/input/HidProfile$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->broadcastReceiver:Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcom/google/glass/bluetooth/input/HidProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    .line 39
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 41
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->broadcastReceiver:Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/input/HidProfile;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/input/HidProfile;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/input/HidProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/input/HidProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/input/HidProfile;->isInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/input/HidProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/input/HidProfile;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/bluetooth/input/HidProfile;->connectAll()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/input/HidProfile;)Lcom/google/glass/bluetooth/GlassBluetoothService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/input/HidProfile;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    return-object v0
.end method

.method private connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 61
    iget-object v1, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-eqz p1, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/input/HidProfile;->isInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    sget-object v1, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Device \"%s\" is not an HID device. Ignoring"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v1, p1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 76
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_4

    .line 78
    :cond_3
    sget-object v1, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Device \"%s\" already connected (or connecting)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_4
    sget-object v1, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attempting HID connection to \"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-static {v1, p1}, Lcom/google/android/glass/hidden/HiddenBluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private connectAll()V
    .locals 5

    .prologue
    .line 87
    iget-object v2, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    .line 94
    sget-object v2, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Connect HID devices"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 96
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 98
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/input/HidProfile;->connect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private disconnectAll()V
    .locals 5

    .prologue
    .line 107
    iget-object v3, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    if-nez v3, :cond_1

    .line 122
    :cond_0
    return-void

    .line 111
    :cond_1
    const/4 v3, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 116
    .local v2, "states":[I
    iget-object v3, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v3, v2}, Landroid/bluetooth/BluetoothProfile;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "allDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 119
    .local v1, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-static {v4, v1}, Lcom/google/android/glass/hidden/HiddenBluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 111
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method private isInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 214
    invoke-static {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 215
    .local v0, "wrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isHID()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->isClosed:Z

    .line 51
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->broadcastReceiver:Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/input/HidProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/input/HidProfile$BluetoothBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 138
    sget-object v3, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v3}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " HID profile connected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 143
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 145
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    .line 146
    invoke-interface {v6, v0}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x28

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " HID profile device "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/glass/bluetooth/input/HidProfile;->connectAll()V

    .line 126
    return-void
.end method

.method public onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/glass/bluetooth/input/HidProfile;->connectAll()V

    .line 131
    return-void
.end method

.method public onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 134
    return-void
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 154
    sget-object v0, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Service connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->isClosed:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-object p2, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    .line 159
    invoke-direct {p0}, Lcom/google/glass/bluetooth/input/HidProfile;->connectAll()V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 165
    sget-object v0, Lcom/google/glass/bluetooth/input/HidProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Service disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/input/HidProfile;->profile:Landroid/bluetooth/BluetoothProfile;

    .line 167
    return-void
.end method
