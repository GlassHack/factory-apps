.class public abstract Lcom/android/d/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Z

.field public b:Lcom/android/d/x;

.field private final c:Lcom/android/d/ac;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Lcom/android/d/u;

.field private h:Ljava/lang/Integer;

.field private i:Lcom/android/d/s;

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Lcom/android/d/c;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/d/u;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/android/d/ac;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/d/ac;

    invoke-direct {v0}, Lcom/android/d/ac;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/d/p;->c:Lcom/android/d/ac;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/d/p;->a:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/d/p;->j:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/d/p;->k:Z

    .line 94
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/d/p;->l:J

    .line 107
    iput-object v1, p0, Lcom/android/d/p;->m:Lcom/android/d/c;

    .line 132
    iput p1, p0, Lcom/android/d/p;->d:I

    .line 133
    iput-object p2, p0, Lcom/android/d/p;->e:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/android/d/p;->g:Lcom/android/d/u;

    .line 135
    new-instance v0, Lcom/android/d/f;

    invoke-direct {v0}, Lcom/android/d/f;-><init>()V

    iput-object v0, p0, Lcom/android/d/p;->b:Lcom/android/d/x;

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/d/p;->f:I

    .line 138
    return-void

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 137
    goto :goto_1
.end method

.method protected static a(Lcom/android/d/aa;)Lcom/android/d/aa;
    .locals 0

    .prologue
    .line 543
    return-object p0
.end method

.method static synthetic a(Lcom/android/d/p;)Lcom/android/d/ac;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/d/p;->c:Lcom/android/d/ac;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/d/p;->d:I

    return v0
.end method

.method public final a(I)Lcom/android/d/p;
    .locals 1

    .prologue
    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/d/p;->h:Ljava/lang/Integer;

    .line 263
    return-object p0
.end method

.method public final a(Lcom/android/d/c;)Lcom/android/d/p;
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/d/p;->m:Lcom/android/d/c;

    .line 298
    return-object p0
.end method

.method public final a(Lcom/android/d/s;)Lcom/android/d/p;
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/d/p;->i:Lcom/android/d/s;

    .line 253
    return-object p0
.end method

.method public final a(Lcom/android/d/x;)Lcom/android/d/p;
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/d/p;->b:Lcom/android/d/x;

    .line 196
    return-object p0
.end method

.method protected abstract a(Lcom/android/d/m;)Lcom/android/d/t;
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/d/ac;->a:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/d/p;->c:Lcom/android/d/ac;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/d/ac;->a(Ljava/lang/String;J)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-wide v0, p0, Lcom/android/d/p;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/d/p;->l:J

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/d/p;->f:I

    return v0
.end method

.method public final b(Lcom/android/d/aa;)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/d/p;->g:Lcom/android/d/u;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/d/p;->g:Lcom/android/d/u;

    invoke-interface {v0, p1}, Lcom/android/d/u;->a(Lcom/android/d/aa;)V

    .line 565
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/d/p;->i:Lcom/android/d/s;

    if-eqz v0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/d/p;->i:Lcom/android/d/s;

    iget-object v2, v1, Lcom/android/d/s;->b:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/d/s;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/d/p;->a:Z

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/d/s;->a:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/d/p;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/d/s;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-eqz v0, :cond_1

    sget-boolean v4, Lcom/android/d/ab;->b:Z

    if-eqz v4, :cond_0

    const-string v4, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v1, Lcom/android/d/s;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :cond_2
    sget-boolean v0, Lcom/android/d/ac;->a:Z

    if-eqz v0, :cond_5

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 221
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 224
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 225
    new-instance v3, Lcom/android/d/q;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/d/q;-><init>(Lcom/android/d/p;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_3
    :goto_0
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/android/d/p;->c:Lcom/android/d/ac;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/d/ac;->a(Ljava/lang/String;J)V

    .line 236
    iget-object v0, p0, Lcom/android/d/p;->c:Lcom/android/d/ac;

    invoke-virtual {p0}, Lcom/android/d/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/d/ac;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/d/p;->l:J

    sub-long/2addr v0, v2

    .line 239
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 240
    const-string v2, "%d ms: %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0}, Lcom/android/d/p;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Lcom/android/d/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/d/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 38
    check-cast p1, Lcom/android/d/p;

    sget-object v0, Lcom/android/d/r;->b:Lcom/android/d/r;

    sget-object v1, Lcom/android/d/r;->b:Lcom/android/d/r;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/d/p;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/d/p;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/d/r;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/d/r;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/d/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/android/d/c;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/d/p;->m:Lcom/android/d/c;

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/d/p;->j:Z

    .line 313
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/d/p;->j:Z

    return v0
.end method

.method public h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/d/p;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/d/p;->a:Z

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/d/p;->b:Lcom/android/d/x;

    invoke-interface {v0}, Lcom/android/d/x;->a()I

    move-result v0

    return v0
.end method

.method public final o()Lcom/android/d/x;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/d/p;->b:Lcom/android/d/x;

    return-object v0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/d/p;->k:Z

    .line 515
    return-void
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/d/p;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/d/p;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/d/p;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/d/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/d/r;->b:Lcom/android/d/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/d/p;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method
