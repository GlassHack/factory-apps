.class Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;
.super Ljava/lang/Thread;
.source "AsyncBluetoothServerSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)V
    .locals 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 62
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

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    :goto_0
    :try_start_0
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 70
    .local v1, "newSocket":Lcom/google/glass/bluetooth/BluetoothSocket;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;Lcom/google/glass/bluetooth/BluetoothSocket;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v1    # "newSocket":Lcom/google/glass/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$400(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unexpected shutdown of async server socket"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method
