.class public Lcom/google/glass/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final DEFAULT_TIMEOUT_MS:J = 0x4e20L


# instance fields
.field private final socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 70
    return-void
.end method

.method public connect()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 43
    return-void
.end method

.method public connect(J)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;-><init>(Lcom/google/glass/bluetooth/BluetoothSocket;Lcom/google/glass/bluetooth/BluetoothSocket$1;)V

    .line 52
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->start()V

    .line 55
    :try_start_0
    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->access$200(Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->interrupt()V

    .line 57
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "BluetoothSocket.connect timeout in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed in BluetoothSocket.connect"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->access$300(Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->access$300(Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 66
    :cond_1
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method
