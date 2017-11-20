.class Lcom/google/common/util/concurrent/TrustedListenableFutureTask;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "TrustedListenableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TV;>;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private task:Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/TrustedListenableFutureTask",
            "<TV;>.TrustedFutureInterruptibleTask;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 68
    new-instance v0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;-><init>(Lcom/google/common/util/concurrent/TrustedListenableFutureTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->task:Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;

    .line 69
    return-void
.end method

.method static create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/TrustedListenableFutureTask;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/common/util/concurrent/TrustedListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "result":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/TrustedListenableFutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Lcom/google/common/util/concurrent/TrustedListenableFutureTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected afterDone()V
    .locals 2

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->afterDone()V

    .line 83
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->wasInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->task:Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;

    .line 85
    .local v0, "localTask":Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleTask;"
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->interruptTask()V

    .line 90
    .end local v0    # "localTask":Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleTask;"
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->task:Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;

    .line 91
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->task:Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;

    .line 74
    .local v0, "localTask":Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>.TrustedFutureInterruptibleTask;"
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->run()V

    .line 77
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lcom/google/common/util/concurrent/TrustedListenableFutureTask<TV;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->task:Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (delegate = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
