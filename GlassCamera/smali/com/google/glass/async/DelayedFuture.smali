.class public Lcom/google/glass/async/DelayedFuture;
.super Ljava/lang/Object;
.source "DelayedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/async/DelayedFuture$NotSetException;,
        Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field private serviceSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/DelayedFuture;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    .local p1, "serviceSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/util/concurrent/ListeningExecutorService;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/glass/async/DelayedFuture;->serviceSupplier:Lcom/google/common/base/Supplier;

    .line 40
    iput-object p2, p0, Lcom/google/glass/async/DelayedFuture;->callable:Ljava/util/concurrent/Callable;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    return-void
.end method

.method private getFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/async/DelayedFuture$NotSetException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->callable:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->serviceSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object v1, p0, Lcom/google/glass/async/DelayedFuture;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/google/glass/async/DelayedFuture$NotSetException;

    invoke-direct {v0}, Lcom/google/glass/async/DelayedFuture$NotSetException;-><init>()V

    throw v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 70
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lcom/google/glass/async/DelayedFuture$NotSetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 78
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    iget-object v1, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/google/glass/async/DelayedFuture$NotSetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
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
    .line 115
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/async/DelayedFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 138
    .end local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p1

    .line 133
    .restart local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/google/glass/async/DelayedFuture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception caught when get value, return the default value."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/async/DelayedFuture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception caught when get value, return the default value."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAsync(Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/async/DelayedFuture$NotSetException;
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    .local p1, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<TT;>;"
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 150
    return-void
.end method

.method public getAsync(Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    .local p1, "callback":Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;, "Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v1, Lcom/google/glass/async/DelayedFuture$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/async/DelayedFuture$1;-><init>(Lcom/google/glass/async/DelayedFuture;Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/async/DelayedFuture;->getAsync(Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lcom/google/glass/async/DelayedFuture$NotSetException;
    sget-object v1, Lcom/google/glass/async/DelayedFuture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception caught when get value, return the default value."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-interface {p1, p2}, Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;->onResultReady(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    iget-object v1, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lcom/google/glass/async/DelayedFuture$NotSetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lcom/google/glass/async/DelayedFuture;, "Lcom/google/glass/async/DelayedFuture<TT;>;"
    iget-object v1, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lcom/google/glass/async/DelayedFuture$NotSetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
