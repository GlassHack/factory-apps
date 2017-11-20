.class Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;
.super Ljava/lang/Thread;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriterThread"
.end annotation


# instance fields
.field protected command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

.field private final outputStream:Ljava/io/DataOutputStream;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .line 154
    const-string v0, "ServiceConnection Writer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->outputStream:Ljava/io/DataOutputStream;

    .line 156
    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 193
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    if-eqz v1, :cond_0

    .line 195
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " writerThread.command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->isRunning()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " writerThread.isRunning: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    return-void

    .line 197
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " writerThread.command was null."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 160
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->getShouldRun()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string v2, "Waiting for next command..."

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$000(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$100(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    iput-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "result":Lcom/google/glass/bluetooth/handsfree/AtResult;
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Sending command: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    invoke-virtual {v6}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->outputStream:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 169
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$300(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/google/glass/bluetooth/handsfree/AtResult;
    check-cast v1, Lcom/google/glass/bluetooth/handsfree/AtResult;

    .line 170
    .restart local v1    # "result":Lcom/google/glass/bluetooth/handsfree/AtResult;
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Got response: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Audio Gateway returned an error in response to ATD."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onError(I)V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    invoke-virtual {v2, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->onResponse(Lcom/google/glass/bluetooth/handsfree/AtResult;)V

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->command:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 179
    .end local v1    # "result":Lcom/google/glass/bluetooth/handsfree/AtResult;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Terminating writer thread: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->terminate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->outputStream:Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 186
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->outputStream:Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 186
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V

    goto :goto_1

    .line 182
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received interrupt, terminating."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->outputStream:Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 186
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V

    goto :goto_1

    .line 185
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->outputStream:Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 186
    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v3}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V

    throw v2
.end method
