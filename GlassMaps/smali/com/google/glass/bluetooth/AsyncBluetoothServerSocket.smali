.class public Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private acceptThread:Ljava/lang/Thread;

.field private final handler:Landroid/os/Handler;

.field private isCleanShutdown:Z

.field private final listener:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;

.field private final socket:Landroid/bluetooth/BluetoothServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothServerSocket;Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->handler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->socket:Landroid/bluetooth/BluetoothServerSocket;

    .line 36
    iput-object p2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->listener:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;

    .line 37
    new-instance v0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->acceptThread:Ljava/lang/Thread;

    .line 39
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->acceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/BluetoothServerSocket;Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothServerSocket;->getBluetoothServerSocket()Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;-><init>(Landroid/bluetooth/BluetoothServerSocket;Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;)V

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->socket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->listener:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->isCleanShutdown:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->acceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->isCleanShutdown:Z

    .line 57
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->socket:Landroid/bluetooth/BluetoothServerSocket;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 58
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->acceptThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "acceptThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/ThreadUtil;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->acceptThread:Ljava/lang/Thread;

    goto :goto_0
.end method
