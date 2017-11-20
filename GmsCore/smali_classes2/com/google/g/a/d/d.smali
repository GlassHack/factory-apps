.class public Lcom/google/g/a/d/d;
.super Lcom/google/g/a/d/b;
.source "SourceFile"


# instance fields
.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/g/a/d/c;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/g/a/d/d;-><init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/g/a/d/d;-><init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;B)V

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;B)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/g/a/d/b;-><init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/g/a/d/d;->d:J

    .line 29
    iput-wide v2, p0, Lcom/google/g/a/d/d;->e:J

    .line 31
    iput-wide v2, p0, Lcom/google/g/a/d/d;->f:J

    .line 34
    iput-wide v2, p0, Lcom/google/g/a/d/d;->g:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/g/a/d/d;->h:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/g/a/d/d;->i:Z

    .line 68
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/g/a/d/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()I
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/d/d;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->c(Lcom/google/g/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    .line 119
    iget v0, p0, Lcom/google/g/a/d/d;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return v0

    .line 120
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    .line 122
    iget v0, p0, Lcom/google/g/a/d/d;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/g/a/d/d;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget v0, p0, Lcom/google/g/a/d/d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/g/a/d/d;->h:I

    if-lez v0, :cond_1

    .line 79
    :cond_0
    iget-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 80
    iget-wide v0, p0, Lcom/google/g/a/d/d;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 81
    invoke-static {}, Lcom/google/g/a/a;->a()Lcom/google/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/a;->b()Lcom/google/g/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/g/a/b;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/g/a/d/d;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    .line 88
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/google/g/a/d/d;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->a(Lcom/google/g/a/d/a;)V

    .line 90
    return-void

    .line 84
    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/google/g/a/d/d;->e:J

    iget-wide v2, p0, Lcom/google/g/a/d/d;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()V
    .locals 4

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/g/a/d/d;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->a(Lcom/google/g/a/d/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final g()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-wide v0, p0, Lcom/google/g/a/d/d;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 224
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    .line 240
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-super {p0}, Lcom/google/g/a/d/b;->g()V

    .line 244
    iget-object v0, p0, Lcom/google/g/a/d/d;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->a(Lcom/google/g/a/d/a;)V

    .line 245
    return-void

    .line 226
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/g/a/d/d;->h:I

    if-lez v0, :cond_1

    .line 227
    iget v0, p0, Lcom/google/g/a/d/d;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/g/a/d/d;->h:I

    .line 229
    :cond_1
    iget v0, p0, Lcom/google/g/a/d/d;->h:I

    if-nez v0, :cond_2

    .line 230
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/google/g/a/d/d;->i:Z

    if-eqz v0, :cond_3

    .line 233
    iget-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    iget-wide v2, p0, Lcom/google/g/a/d/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J

    goto :goto_0

    .line 235
    :cond_3
    invoke-static {}, Lcom/google/g/a/a;->a()Lcom/google/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/a;->b()Lcom/google/g/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/g/a/b;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/g/a/d/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/g/a/d/d;->g:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized i()J
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/g/a/d/d;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
