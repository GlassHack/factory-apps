.class Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)V
    .locals 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 64
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/AcceptThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    :goto_0
    :try_start_0
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    invoke-static {v1}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 72
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    invoke-static {v1}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;Lcom/google/glass/bluetooth/BluetoothSocket;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    invoke-static {v1}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$400(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unexpected shutdown of async server socket"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method
