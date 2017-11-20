.class Lcom/google/glass/fs/DirectoryTracker$2;
.super Ljava/lang/Object;
.source "DirectoryTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/fs/DirectoryTracker;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/fs/DirectoryTracker;


# direct methods
.method constructor <init>(Lcom/google/glass/fs/DirectoryTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/fs/DirectoryTracker;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/glass/fs/DirectoryTracker$2;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 288
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 289
    .local v0, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 291
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker$2;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v1}, Lcom/google/glass/fs/DirectoryTracker;->access$100(Lcom/google/glass/fs/DirectoryTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 293
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker$2;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v1}, Lcom/google/glass/fs/DirectoryTracker;->startWatching()V

    .line 294
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker$2;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    iget-object v2, p0, Lcom/google/glass/fs/DirectoryTracker$2;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v2}, Lcom/google/glass/fs/DirectoryTracker;->access$200(Lcom/google/glass/fs/DirectoryTracker;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/fs/DirectoryTracker;->access$300(Lcom/google/glass/fs/DirectoryTracker;Ljava/io/File;)V

    .line 296
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 297
    invoke-static {}, Lcom/google/glass/fs/DirectoryTracker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Took %ds to iterate [%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/fs/DirectoryTracker$2;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v5}, Lcom/google/glass/fs/DirectoryTracker;->access$200(Lcom/google/glass/fs/DirectoryTracker;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 297
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    return-void
.end method
