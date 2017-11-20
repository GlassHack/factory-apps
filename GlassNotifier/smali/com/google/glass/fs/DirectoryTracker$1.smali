.class Lcom/google/glass/fs/DirectoryTracker$1;
.super Ljava/lang/Object;
.source "DirectoryTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/fs/DirectoryTracker;->addCallback(Lcom/google/glass/fs/DirectoryTracker$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/fs/DirectoryTracker;

.field final synthetic val$callback:Lcom/google/glass/fs/DirectoryTracker$Callback;


# direct methods
.method constructor <init>(Lcom/google/glass/fs/DirectoryTracker;Lcom/google/glass/fs/DirectoryTracker$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/fs/DirectoryTracker;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    iput-object p2, p0, Lcom/google/glass/fs/DirectoryTracker$1;->val$callback:Lcom/google/glass/fs/DirectoryTracker$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v2}, Lcom/google/glass/fs/DirectoryTracker;->blockUntilReady()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 120
    iget-object v2, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-static {v2}, Lcom/google/glass/fs/DirectoryTracker;->access$100(Lcom/google/glass/fs/DirectoryTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "absolutePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker$1;->val$callback:Lcom/google/glass/fs/DirectoryTracker$Callback;

    invoke-interface {v3, v0}, Lcom/google/glass/fs/DirectoryTracker$Callback;->notifyStateChange(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "absolutePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/fs/DirectoryTracker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Interrupted while waiting for Precache Task"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    return-void

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/fs/DirectoryTracker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "ExecutionException in Precache Task"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 115
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 116
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    invoke-static {}, Lcom/google/glass/fs/DirectoryTracker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Precache Task cancelled"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
