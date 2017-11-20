.class public abstract Lcom/google/c/j/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/v;


# instance fields
.field private final a:Lcom/google/c/j/a/c;

.field private final b:Lcom/google/c/j/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/c/j/a/c;

    invoke-direct {v0}, Lcom/google/c/j/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    .line 71
    new-instance v0, Lcom/google/c/j/a/h;

    invoke-direct {v0}, Lcom/google/c/j/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/b;->b:Lcom/google/c/j/a/h;

    .line 215
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/c/j/a/b;->b:Lcom/google/c/j/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/j/a/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    invoke-virtual {v0, p1}, Lcom/google/c/j/a/c;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/google/c/j/a/b;->b:Lcom/google/c/j/a/h;

    invoke-virtual {v1}, Lcom/google/c/j/a/h;->a()V

    .line 172
    :cond_0
    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/google/c/j/a/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/google/c/j/a/b;->b:Lcom/google/c/j/a/h;

    invoke-virtual {v1}, Lcom/google/c/j/a/h;->a()V

    .line 193
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 194
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 196
    :cond_1
    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    invoke-virtual {v0}, Lcom/google/c/j/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/c/j/a/b;->b:Lcom/google/c/j/a/h;

    invoke-virtual {v0}, Lcom/google/c/j/a/h;->a()V

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    invoke-virtual {v0}, Lcom/google/c/j/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/c/j/a/c;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    invoke-virtual {v0}, Lcom/google/c/j/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/c/j/a/b;->a:Lcom/google/c/j/a/c;

    invoke-virtual {v0}, Lcom/google/c/j/a/c;->b()Z

    move-result v0

    return v0
.end method
