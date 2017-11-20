.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;
.super Ljava/lang/Thread;
.source "AsyncBluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V
    .locals 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .line 94
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

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 99
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 100
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 102
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v5}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 104
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 105
    .local v3, "length":I
    new-array v1, v3, [B

    .line 106
    .local v1, "bufferCopy":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v5, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v5}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;

    invoke-direct {v6, p0, v1, v3}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;[BI)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v1    # "bufferCopy":[B
    .end local v3    # "length":I
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v5}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$400(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    iget-object v5, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v5}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;

    invoke-direct {v6, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 130
    return-void

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v5
.end method
