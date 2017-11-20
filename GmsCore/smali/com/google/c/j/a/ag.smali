.class public abstract Lcom/google/c/j/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/j/a/aq;


# instance fields
.field private final a:Lcom/google/c/j/a/ah;

.field private final b:Lcom/google/c/j/a/aj;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/c/j/a/ah;

    invoke-direct {v0}, Lcom/google/c/j/a/ah;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    new-instance v0, Lcom/google/c/j/a/aj;

    invoke-direct {v0}, Lcom/google/c/j/a/aj;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/ag;->b:Lcom/google/c/j/a/aj;

    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/c/j/a/ag;->b:Lcom/google/c/j/a/aj;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/j/a/aj;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    invoke-virtual {v0, p1}, Lcom/google/c/j/a/ah;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/c/j/a/ag;->b:Lcom/google/c/j/a/aj;

    invoke-virtual {v1}, Lcom/google/c/j/a/aj;->a()V

    :cond_0
    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/google/c/j/a/ah;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/c/j/a/ag;->b:Lcom/google/c/j/a/aj;

    invoke-virtual {v1}, Lcom/google/c/j/a/aj;->a()V

    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_1
    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    invoke-virtual {v0, p1}, Lcom/google/c/j/a/ah;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/j/a/ag;->b:Lcom/google/c/j/a/aj;

    invoke-virtual {v0}, Lcom/google/c/j/a/aj;->a()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    invoke-virtual {v0}, Lcom/google/c/j/a/ah;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/c/j/a/ah;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    invoke-virtual {v0}, Lcom/google/c/j/a/ah;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/j/a/ag;->a:Lcom/google/c/j/a/ah;

    invoke-virtual {v0}, Lcom/google/c/j/a/ah;->b()Z

    move-result v0

    return v0
.end method
