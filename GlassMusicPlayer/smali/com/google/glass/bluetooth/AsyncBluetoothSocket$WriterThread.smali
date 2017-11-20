.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V
    .locals 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .line 142
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/WriterThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v1}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 151
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$500(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 152
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 159
    :goto_1
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 161
    :goto_2
    return-void

    .line 159
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_3
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_1
.end method
