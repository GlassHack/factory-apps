.class Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;
.super Ljava/lang/Thread;
.source "GlassMapProfile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/map/GlassMapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# instance fields
.field private closed:Z

.field private final formerWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

.field private final runningCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;)V
    .locals 2
    .param p2, "formerWorkerThread"    # Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->formerWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->closed:Z

    .line 155
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->runningCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 156
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->closed:Z

    .line 203
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    invoke-static {v0}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$500(Lcom/google/glass/bluetooth/map/GlassMapProfile;)V

    .line 204
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-static {}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "WorkThread Starting ..."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->formerWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->formerWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->close()V

    .line 164
    :try_start_0
    invoke-static {}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "waiting for former thread to end..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->formerWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    iget-object v2, v2, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->runningCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 172
    .local v0, "connectionAttempts":I
    :goto_1
    iget-boolean v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->closed:Z

    if-nez v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    sget-object v3, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->CONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-static {v2, v3}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$100(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V

    .line 175
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    invoke-static {v2}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$200(Lcom/google/glass/bluetooth/map/GlassMapProfile;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    sget-object v3, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->PENDING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-static {v2, v3}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$100(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    :try_start_1
    sget-wide v4, Lcom/google/glass/bluetooth/map/GlassMapProfile;->BACK_OFF_INTERVAL_UNIT_MS:J

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Thread got interrupted"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    .end local v0    # "connectionAttempts":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 167
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Can\'t wait for former thread to end."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "connectionAttempts":I
    :cond_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    invoke-static {v2, v6}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$302(Lcom/google/glass/bluetooth/map/GlassMapProfile;I)I

    .line 187
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    sget-object v3, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->READING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-static {v2, v3}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$100(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V

    .line 188
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    invoke-static {v2}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$400(Lcom/google/glass/bluetooth/map/GlassMapProfile;)V

    .line 190
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    sget-object v3, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->DISCONNECTING:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-static {v2, v3}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$100(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V

    .line 191
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    invoke-static {v2}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$500(Lcom/google/glass/bluetooth/map/GlassMapProfile;)V

    .line 192
    const/4 v0, 0x0

    .line 194
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->this$0:Lcom/google/glass/bluetooth/map/GlassMapProfile;

    sget-object v3, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->NONE:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-static {v2, v3}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$100(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V

    goto :goto_1

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->runningCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 197
    invoke-static {}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "WorkThread ends!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method
