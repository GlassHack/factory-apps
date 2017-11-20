.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .line 96
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ReaderThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 101
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 102
    const/4 v0, 0x0

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 106
    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 107
    new-array v3, v2, [B

    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v4, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v4}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;[BI)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    :try_start_2
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v1}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$400(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v1}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;

    invoke-direct {v2, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :cond_0
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method
