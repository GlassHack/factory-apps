.class Lcom/google/glass/fs/DirectoryTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/fs/DirectoryTracker;


# direct methods
.method constructor <init>(Lcom/google/glass/fs/DirectoryTracker;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 223
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 224
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 226
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v1}, Lcom/google/glass/fs/DirectoryTracker;->access$000(Lcom/google/glass/fs/DirectoryTracker;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v2}, Lcom/google/glass/fs/DirectoryTracker;->access$000(Lcom/google/glass/fs/DirectoryTracker;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v1}, Lcom/google/glass/fs/DirectoryTracker;->startWatching()V

    .line 231
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    iget-object v2, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v2}, Lcom/google/glass/fs/DirectoryTracker;->access$100(Lcom/google/glass/fs/DirectoryTracker;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/fs/DirectoryTracker;->access$200(Lcom/google/glass/fs/DirectoryTracker;Ljava/io/File;)V

    .line 233
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 234
    invoke-static {}, Lcom/google/glass/fs/DirectoryTracker;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Took %ds to iterate [%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 235
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v4}, Lcom/google/glass/fs/DirectoryTracker;->access$100(Lcom/google/glass/fs/DirectoryTracker;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 234
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
