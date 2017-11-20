.class public Lcom/google/glass/bluetooth/tethering/Tethering;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;
.implements Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/tethering/Tethering$1;,
        Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private deferredDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private isClosed:Z

.field private panProfile:Landroid/bluetooth/BluetoothProfile;

.field private final screenOnReceiver:Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;

.field private final service:Lcom/google/glass/bluetooth/GlassBluetoothService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/tethering/Tethering;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V
    .locals 2
    .param p1, "service"    # Lcom/google/glass/bluetooth/GlassBluetoothService;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->isClosed:Z

    .line 38
    new-instance v0, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;-><init>(Lcom/google/glass/bluetooth/tethering/Tethering;Lcom/google/glass/bluetooth/tethering/Tethering$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->screenOnReceiver:Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;

    .line 41
    iput-object p1, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    .line 43
    const-string v0, "connectivity"

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 48
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->screenOnReceiver:Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/tethering/Tethering;)Lcom/google/glass/bluetooth/GlassBluetoothService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/Tethering;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/tethering/Tethering;)Landroid/bluetooth/BluetoothProfile;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/Tethering;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/tethering/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/Tethering;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/bluetooth/tethering/Tethering;->wantsTethering()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/tethering/Tethering;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/tethering/Tethering;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/tethering/Tethering;->connect(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    return-void
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/bluetooth/tethering/Tethering;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private connect(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 4
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_1

    .line 76
    iput-object p1, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->deferredDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->deferredDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 83
    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/google/glass/bluetooth/tethering/Tethering;->disconnect()V

    .line 90
    sget-object v0, Lcom/google/glass/bluetooth/tethering/Tethering;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting PAN connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenBluetoothPan;->connect(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 5

    .prologue
    .line 98
    iget-object v3, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    if-nez v3, :cond_1

    .line 113
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v3, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 107
    .local v2, "states":[I
    iget-object v3, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v3, v2}, Landroid/bluetooth/BluetoothProfile;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "allDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 110
    .local v1, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    invoke-static {v4, v1}, Lcom/google/android/glass/hidden/HiddenBluetoothPan;->disconnect(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 102
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method private wantsTethering()Z
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 123
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->isClosed:Z

    .line 58
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->screenOnReceiver:Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/tethering/Tethering$ScreenOnReceiver;->unregister(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 158
    sget-object v2, Lcom/google/glass/bluetooth/tethering/Tethering;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/GlassBluetoothService;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 161
    .local v0, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PAN profile connected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    .line 164
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " PAN profile state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/bluetooth/tethering/Tethering;->wantsTethering()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " wantsTethering() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    return-void

    .line 161
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public execute()V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/GlassBluetoothService;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 133
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 134
    const/4 v0, 0x2

    .line 135
    .local v0, "connected":I
    invoke-direct {p0}, Lcom/google/glass/bluetooth/tethering/Tethering;->wantsTethering()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 136
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/tethering/Tethering;->connect(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0

    .line 133
    .end local v0    # "connected":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 5
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v4, 0x0

    .line 142
    if-nez p1, :cond_0

    .line 143
    sget-object v0, Lcom/google/glass/bluetooth/tethering/Tethering;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Glass is now unpaired, disconnecting PAN and shutting down timer."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0}, Lcom/google/glass/bluetooth/tethering/Tethering;->disconnect()V

    .line 145
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->unregisterTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/google/glass/bluetooth/tethering/Tethering;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Glass paired with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PAN connecting and starting timer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/tethering/Tethering;->connect(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 149
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->registerTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V

    goto :goto_0
.end method

.method public onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 154
    return-void
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->isClosed:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iput-object p2, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    .line 175
    iget-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->deferredDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/tethering/Tethering;->connect(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/tethering/Tethering;->panProfile:Landroid/bluetooth/BluetoothProfile;

    .line 182
    return-void
.end method
