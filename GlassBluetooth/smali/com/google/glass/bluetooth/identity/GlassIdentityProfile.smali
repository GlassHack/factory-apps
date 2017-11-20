.class public Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;
.super Ljava/lang/Object;
.source "GlassIdentityProfile.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
.implements Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;


# static fields
.field private static final CHANNEL:I = 0xe

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

.field private listenSocket:Lcom/google/glass/bluetooth/BluetoothServerSocket;

.field private listenThread:Ljava/lang/Thread;

.field private numConnections:I

.field private numFailures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-direct {v0, p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 45
    iget-object v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)Lcom/google/glass/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenSocket:Lcom/google/glass/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$204(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    .prologue
    .line 26
    iget v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->numConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->numConnections:I

    return v0
.end method

.method static synthetic access$304(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    .prologue
    .line 26
    iget v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->numFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->numFailures:I

    return v0
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenSocket:Lcom/google/glass/bluetooth/BluetoothServerSocket;

    sget-object v1, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 101
    iget-object v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "listenThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/ThreadUtil;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object v3, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenSocket:Lcom/google/glass/bluetooth/BluetoothServerSocket;

    .line 104
    iput-object v3, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenThread:Ljava/lang/Thread;

    .line 105
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Service destroyed; closing listen socket and unregistering from SDP."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 52
    invoke-direct {p0}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->cleanUp()V

    .line 53
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    sget-object v1, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " Thread started: %b\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 120
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " Thread alive: %b\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " Connections: %d, Failures: %d\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->numConnections:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->numFailures:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    return-void

    :cond_0
    move v1, v3

    .line 119
    goto :goto_0

    :cond_1
    move v1, v3

    .line 120
    goto :goto_1
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onBluetoothAdapterDisabled()V
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Adapter disabled; closing listen socket and unregistering from SDP."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->cleanUp()V

    .line 97
    return-void
.end method

.method public onBluetoothAdapterEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 59
    .local v0, "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    const-string v2, "Glass Identity"

    sget-object v3, Lcom/google/glass/bluetooth/BluetoothUuids;->IDENTITY_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenSocket:Lcom/google/glass/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    sget-object v2, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Listening for incoming connections."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile$1;

    invoke-direct {v3, p0}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile$1;-><init>(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)V

    const-string v4, "GlassIdentityListenThread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenThread:Ljava/lang/Thread;

    .line 90
    iget-object v2, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->listenThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 91
    .end local v0    # "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to bring up a Bluetooth server socket for the identity service: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 62
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to bring up a Bluetooth server socket for the identity service: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 66
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 111
    return-void
.end method

.method public onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 114
    return-void
.end method
