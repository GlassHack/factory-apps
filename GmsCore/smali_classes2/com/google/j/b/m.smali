.class public abstract Lcom/google/j/b/m;
.super Lcom/google/j/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/g;


# instance fields
.field protected c:Lcom/google/j/b/n;

.field protected d:J

.field protected e:I

.field public f:J

.field public g:J

.field public h:Z

.field public i:J

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 45
    invoke-direct {p0}, Lcom/google/j/b/a;-><init>()V

    .line 69
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/j/b/m;->d:J

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/j/b/m;->e:I

    .line 73
    iput-wide v2, p0, Lcom/google/j/b/m;->f:J

    .line 76
    iput-wide v2, p0, Lcom/google/j/b/m;->g:J

    .line 84
    iput-wide v2, p0, Lcom/google/j/b/m;->i:J

    .line 91
    iput-wide v2, p0, Lcom/google/j/b/m;->j:J

    .line 98
    iput-boolean v4, p0, Lcom/google/j/b/m;->k:Z

    .line 103
    iput-boolean v4, p0, Lcom/google/j/b/m;->l:Z

    .line 362
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/google/j/b/m;->g:J

    iget-wide v2, p0, Lcom/google/j/b/m;->f:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/j/b/m;->g:J

    .line 203
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final declared-synchronized a(Lcom/google/j/b/n;)V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/b/m;->c:Lcom/google/j/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 176
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/j/b/m;->j:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/j/b/m;->i:J

    iget-wide v4, p0, Lcom/google/j/b/m;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/j/b/m;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 5

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/j/b/m;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/j/b/m;->f:J

    .line 210
    iget-boolean v0, p0, Lcom/google/j/b/m;->h:Z

    if-eqz v0, :cond_0

    .line 211
    iget-wide v0, p0, Lcom/google/j/b/m;->f:J

    iput-wide v0, p0, Lcom/google/j/b/m;->g:J

    .line 215
    :goto_0
    invoke-direct {p0}, Lcom/google/j/b/m;->j()V

    .line 216
    iget-wide v0, p0, Lcom/google/j/b/m;->d:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/j/b/m;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    :try_start_1
    iput-wide v0, p0, Lcom/google/j/b/m;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(J)V
    .locals 3

    .prologue
    .line 225
    monitor-enter p0

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    :try_start_0
    iput-wide v0, p0, Lcom/google/j/b/m;->f:J

    .line 226
    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/j/b/m;->g:J

    .line 227
    invoke-direct {p0}, Lcom/google/j/b/m;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/j/b/m;->l:Z

    .line 160
    return-void
.end method

.method public final declared-synchronized f()Lcom/google/j/b/n;
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/b/m;->c:Lcom/google/j/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/b/m;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/j/b/m;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/j/b/m;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 335
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/j/b/m;->k:Z

    if-nez v1, :cond_0

    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/j/b/m;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract s_()I
.end method

.method public abstract t_()Ljava/io/InputStream;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/j/b/m;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",retrySoft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/j/b/m;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",retryDeadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/j/b/m;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sendCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/j/b/m;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/j/b/m;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
