.class final Lcom/google/c/b/dm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/b/ee;


# instance fields
.field volatile a:Lcom/google/c/b/ee;

.field private b:Lcom/google/c/j/a/aw;

.field private c:Lcom/google/c/a/cz;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/c/b/ch;->j()Lcom/google/c/b/ee;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/c/b/dm;-><init>(Lcom/google/c/b/ee;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/c/b/ee;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/j/a/aw;->a()Lcom/google/c/j/a/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/dm;->b:Lcom/google/c/j/a/aw;

    new-instance v0, Lcom/google/c/a/cz;

    invoke-direct {v0}, Lcom/google/c/a/cz;-><init>()V

    iput-object v0, p0, Lcom/google/c/b/dm;->c:Lcom/google/c/a/cz;

    iput-object p1, p0, Lcom/google/c/b/dm;->a:Lcom/google/c/b/ee;

    return-void
.end method

.method private static a(Lcom/google/c/j/a/aw;Ljava/lang/Throwable;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/c/j/a/aw;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dm;->a:Lcom/google/c/b/ee;

    invoke-interface {v0}, Lcom/google/c/b/ee;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/dq;)Lcom/google/c/b/ee;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/c/b/ce;)Lcom/google/c/j/a/aq;
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/b/dm;->c:Lcom/google/c/a/cz;

    iget-boolean v0, v2, Lcom/google/c/a/cz;->b:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "This stopwatch is already running; it cannot be started more than once."

    invoke-static {v0, v3}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iput-boolean v1, v2, Lcom/google/c/a/cz;->b:Z

    iget-object v0, v2, Lcom/google/c/a/cz;->a:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/c/a/cz;->c:J

    iget-object v0, p0, Lcom/google/c/b/dm;->a:Lcom/google/c/b/ee;

    invoke-interface {v0}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/c/b/ce;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/b/dm;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/c/b/dm;->b:Lcom/google/c/j/a/aw;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/c/j/a/al;->a(Ljava/lang/Object;)Lcom/google/c/j/a/aq;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/c/b/ce;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/al;->a(Ljava/lang/Object;)Lcom/google/c/j/a/aq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/c/j/a/al;->a(Ljava/lang/Object;)Lcom/google/c/j/a/aq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    instance-of v0, v1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/c/b/dm;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/c/b/dm;->b:Lcom/google/c/j/a/aw;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/c/j/a/aw;->a()Lcom/google/c/j/a/aw;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/c/b/dm;->a(Lcom/google/c/j/a/aw;Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/c/b/dm;->b(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/c/b/ch;->j()Lcom/google/c/b/ee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/dm;->a:Lcom/google/c/b/ee;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dm;->b:Lcom/google/c/j/a/aw;

    invoke-static {v0, p1}, Lcom/google/c/b/dm;->a(Lcom/google/c/j/a/aw;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/c/b/dq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dm;->b:Lcom/google/c/j/a/aw;

    invoke-virtual {v0, p1}, Lcom/google/c/j/a/aw;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dm;->a:Lcom/google/c/b/ee;

    invoke-interface {v0}, Lcom/google/c/b/ee;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dm;->b:Lcom/google/c/j/a/aw;

    invoke-static {v0}, Lcom/google/c/j/a/ay;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 4

    iget-object v0, p0, Lcom/google/c/b/dm;->c:Lcom/google/c/a/cz;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/google/c/a/cz;->a()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dm;->a:Lcom/google/c/b/ee;

    invoke-interface {v0}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
