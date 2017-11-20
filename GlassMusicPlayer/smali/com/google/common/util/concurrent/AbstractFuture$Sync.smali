.class final Lcom/google/common/util/concurrent/AbstractFuture$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "SourceFile"


# static fields
.field static final CANCELLED:I = 0x4

.field static final COMPLETED:I = 0x2

.field static final COMPLETING:I = 0x1

.field static final INTERRUPTED:I = 0x8

.field static final RUNNING:I

.field private static final serialVersionUID:J


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->compareAndSetState(II)Z

    move-result v0

    .line 374
    if-eqz v0, :cond_2

    .line 377
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    .line 379
    and-int/lit8 v1, p3, 0xc

    if-eqz v1, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v1, "Future.cancel() was called."

    invoke-direct {p2, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    .line 381
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->releaseShared(I)Z

    .line 387
    :cond_1
    :goto_0
    return v0

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 385
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireShared(I)V

    goto :goto_0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    .line 300
    sparse-switch v0, :sswitch_data_0

    .line 313
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :sswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    return-object v0

    .line 310
    :sswitch_1
    const-string v0, "Task was cancelled."

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method final cancel(Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v1, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireSharedInterruptibly(I)V

    .line 290
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final get(J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 273
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final isCancelled()Z
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isDone()Z
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final set(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method final setException(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method protected final tryAcquireShared(I)I
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setState(I)V

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method final wasInterrupted()Z
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
