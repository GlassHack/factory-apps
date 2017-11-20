.class Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private ioException:Ljava/io/IOException;

.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothSocket;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->this$0:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/BluetoothSocket;Lcom/google/glass/bluetooth/BluetoothSocket$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;-><init>(Lcom/google/glass/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->ioException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->this$0:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothSocket;->access$000(Lcom/google/glass/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 34
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothSocket$AsyncConnectingThread;->ioException:Ljava/io/IOException;

    goto :goto_0
.end method
