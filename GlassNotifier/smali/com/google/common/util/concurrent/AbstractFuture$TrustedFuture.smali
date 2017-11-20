.class abstract Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TrustedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 102
    return-void
.end method

.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    return v0
.end method
