.class public Lcom/google/g/a/d/h;
.super Lcom/google/g/a/d/f;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/g/a/d/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/g/a/d/h;-><init>(Lcom/google/g/a/d/g;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d/g;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/g/a/d/h;-><init>(Lcom/google/g/a/d/g;C)V

    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d/g;C)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;Ljava/lang/Runnable;B)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/g/a/d/h;->b:J

    iput-wide v2, p0, Lcom/google/g/a/d/h;->c:J

    iput-wide v2, p0, Lcom/google/g/a/d/h;->d:J

    iput-wide v2, p0, Lcom/google/g/a/d/h;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/g/a/d/h;->f:I

    iput-boolean v4, p0, Lcom/google/g/a/d/h;->g:Z

    return-void
.end method


# virtual methods
.method final declared-synchronized b()I
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/d/h;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->c(Lcom/google/g/a/d/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/h;->e:J

    iget v0, p0, Lcom/google/g/a/d/h;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/g/a/d/h;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/h;->e:J

    iget v0, p0, Lcom/google/g/a/d/h;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/g/a/d/h;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/g/a/d/h;->f:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/g/a/d/h;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/g/a/d/h;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/g/a/c;->a()Lcom/google/g/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/c;->b()Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/g/a/d/h;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/g/a/d/h;->e:J

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/g/a/d/h;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->a(Lcom/google/g/a/d/e;)V

    return-void

    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/google/g/a/d/h;->c:J

    iget-wide v2, p0, Lcom/google/g/a/d/h;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/g/a/d/h;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/g/a/d/h;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/g/a/d/h;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->a(Lcom/google/g/a/d/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final g()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/g/a/d/h;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/h;->e:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/g/a/d/f;->g()V

    iget-object v0, p0, Lcom/google/g/a/d/h;->a:Lcom/google/g/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/g;->a(Lcom/google/g/a/d/e;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/g/a/d/h;->f:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/g/a/d/h;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/g/a/d/h;->f:I

    :cond_1
    iget v0, p0, Lcom/google/g/a/d/h;->f:I

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/h;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/g/a/c;->a()Lcom/google/g/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/c;->b()Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/g/a/d/h;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/g/a/d/h;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized i()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/g/a/d/h;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 2

    monitor-enter p0

    const-wide/32 v0, 0xa4cb80

    :try_start_0
    iput-wide v0, p0, Lcom/google/g/a/d/h;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
