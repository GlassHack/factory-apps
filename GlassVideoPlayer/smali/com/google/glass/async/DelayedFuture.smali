.class public Lcom/google/glass/async/DelayedFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/m;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private callable:Ljava/util/concurrent/Callable;

.field private future:Lcom/google/common/util/concurrent/m;

.field private serviceSupplier:Lcom/google/common/base/av;


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

.method public constructor <init>(Lcom/google/common/base/av;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/glass/async/DelayedFuture;->serviceSupplier:Lcom/google/common/base/av;

    .line 40
    iput-object p2, p0, Lcom/google/glass/async/DelayedFuture;->callable:Ljava/util/concurrent/Callable;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/m;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    .line 48
    return-void
.end method

.method private getFuture()Lcom/google/common/util/concurrent/m;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->callable:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->serviceSupplier:Lcom/google/common/base/av;

    invoke-interface {v0}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/o;

    iget-object v1, p0, Lcom/google/glass/async/DelayedFuture;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/o;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/google/glass/async/DelayedFuture$NotSetException;

    invoke-direct {v0}, Lcom/google/glass/async/DelayedFuture$NotSetException;-><init>()V

    throw v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/m;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cancel(Z)Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/m;->cancel(Z)Z
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/m;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/m;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/async/DelayedFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 138
    :goto_0
    return-object p1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/google/glass/async/DelayedFuture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception caught when get value, return the default value."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 137
    sget-object v1, Lcom/google/glass/async/DelayedFuture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception caught when get value, return the default value."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAsync(Lcom/google/common/util/concurrent/e;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/f;->a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/e;)V

    .line 150
    return-void
.end method

.method public getAsync(Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    new-instance v0, Lcom/google/glass/async/DelayedFuture$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/async/DelayedFuture$1;-><init>(Lcom/google/glass/async/DelayedFuture;Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/async/DelayedFuture;->getAsync(Lcom/google/common/util/concurrent/e;)V
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
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
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/m;->isCancelled()Z
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture;->future:Lcom/google/common/util/concurrent/m;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/async/DelayedFuture;->getFuture()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/m;->isDone()Z
    :try_end_0
    .catch Lcom/google/glass/async/DelayedFuture$NotSetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
