.class final Lcom/google/android/location/collectionlib/bu;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/ae;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/bq;

.field private final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private final c:Ljava/util/concurrent/locks/Condition;

.field private volatile d:I

.field private volatile e:Z

.field private final f:Lcom/google/android/location/collectionlib/br;

.field private final g:Lcom/google/android/location/collectionlib/ar;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/bq;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    .line 214
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 200
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bu;->c:Ljava/util/concurrent/locks/Condition;

    .line 201
    iput v1, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    .line 204
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/bu;->e:Z

    .line 206
    new-instance v0, Lcom/google/android/location/collectionlib/br;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/br;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bu;->f:Lcom/google/android/location/collectionlib/br;

    .line 208
    new-instance v0, Lcom/google/android/location/collectionlib/ar;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/ar;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bu;->g:Lcom/google/android/location/collectionlib/ar;

    .line 211
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/bu;->h:Z

    .line 215
    return-void
.end method

.method private a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    .line 395
    :try_start_0
    iget-object v0, p2, Lcom/google/android/location/collectionlib/by;->b:Lcom/google/g/a/b/b/a;

    .line 396
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    .line 398
    iget-boolean v1, p2, Lcom/google/android/location/collectionlib/by;->a:Z

    if-eqz v1, :cond_2

    .line 399
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Uploaded #%d/%s to MASF successfully."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v5}, Lcom/google/android/location/collectionlib/bq;->d(Lcom/google/android/location/collectionlib/bq;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/bq;->d(Lcom/google/android/location/collectionlib/bq;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/location/collectionlib/by;->b:Lcom/google/g/a/b/b/a;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;ILcom/google/g/a/b/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 416
    iget v0, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    .line 417
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/bu;->b()Z

    .line 418
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 419
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 420
    return-void

    .line 405
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->g:Lcom/google/android/location/collectionlib/ar;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/ar;->a()V

    .line 406
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->g:Lcom/google/android/location/collectionlib/ar;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/ar;->b()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 407
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Too many failures in last minutes. No future requests are allowed."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 408
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/bu;->h:Z

    .line 410
    :cond_4
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Failed to upload #%d: %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p2, Lcom/google/android/location/collectionlib/by;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 412
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/bq;->d(Lcom/google/android/location/collectionlib/bq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v0, v2}, Lcom/google/android/location/collectionlib/bq;->a(Lcom/google/android/location/collectionlib/bq;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 416
    iget v1, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    .line 417
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/bu;->b()Z

    .line 418
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 419
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bu;->e:Z

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/bu;->sendEmptyMessage(I)Z

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bu;->e:Z

    .line 296
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/bu;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "Waiting for %d pending requests."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 172
    check-cast p1, Lcom/google/g/a/b/b/a;

    check-cast p2, Lcom/google/android/location/collectionlib/by;

    const/4 v0, 0x2

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/bu;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    const-string v1, "There is pending result before handler thread exits."

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/bu;->e:Z

    if-eqz v1, :cond_1

    .line 237
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Logical error: Task submission after shutting down."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    :goto_1
    monitor-exit p0

    return v0

    .line 240
    :cond_1
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/bu;->h:Z

    if-eqz v1, :cond_3

    .line 241
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Will not submit upload request: Too many server errors."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :cond_3
    :try_start_5
    iget v1, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_5

    .line 248
    const/4 v1, 0x1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/bq;->c(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/bu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bu;->f:Lcom/google/android/location/collectionlib/br;

    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/br;->a()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/google/android/location/collectionlib/bu;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    .line 253
    if-eqz v1, :cond_4

    .line 254
    iget v2, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    .line 255
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bu;->f:Lcom/google/android/location/collectionlib/br;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/br;->b()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 257
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v1

    goto :goto_1

    .line 260
    :cond_5
    if-nez p3, :cond_7

    .line 261
    :try_start_7
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Upload queue too long, dropping #%d request immediately."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 264
    :cond_6
    :try_start_8
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 268
    :cond_7
    :try_start_9
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "%d pending requests, waiting for available queue."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 270
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 274
    :try_start_a
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 322
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/g/a/b/b/a;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/g/a/b/b/a;

    iget-object v4, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v4, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v4}, Lcom/google/android/location/collectionlib/bq;->d(Lcom/google/android/location/collectionlib/bq;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/google/android/location/collectionlib/bq;->a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;Ljava/lang/String;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bu;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bq;->e(Lcom/google/android/location/collectionlib/bq;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Will not send to MASF: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bu;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "Too many server errors."

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/location/collectionlib/by;

    invoke-direct {v2, v3, v6, v0}, Lcom/google/android/location/collectionlib/by;-><init>(ZLcom/google/g/a/b/b/a;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/location/collectionlib/bu;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;)V

    goto :goto_0

    :cond_2
    const-string v0, "Interrupted by client."

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    const-string v4, "Sending %d bytes to MASF in asynchronized way."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/g/a/b/b/a;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bq;->f(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/be;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/location/collectionlib/be;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ae;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const-string v2, "Can not send to MASF."

    invoke-direct {v0, v3, v6, v2}, Lcom/google/android/location/collectionlib/by;-><init>(ZLcom/google/g/a/b/b/a;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/location/collectionlib/bu;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;)V

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 327
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/g/a/b/b/a;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/collectionlib/by;

    iget-object v4, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v4}, Lcom/google/android/location/collectionlib/bq;->d(Lcom/google/android/location/collectionlib/bq;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    :goto_2
    const-string v3, "session ID should not be null in asynchronized mode."

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/location/collectionlib/bu;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/by;)V

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    .line 330
    :pswitch_2
    iget v0, p0, Lcom/google/android/location/collectionlib/bu;->d:I

    if-nez v0, :cond_9

    :goto_3
    const-string v0, "pending requests are not 0 before quiting."

    invoke-static {v2, v0}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bq;->g(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/bb;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bq;->g(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->d:Lcom/google/android/location/collectionlib/cj;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/bb;->a(Lcom/google/android/location/collectionlib/cj;)V

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bq;->g(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/collectionlib/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bb;->d()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bq;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bq;->a:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->j()V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/bu;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bu;->a:Lcom/google/android/location/collectionlib/bq;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bq;->b:Lcom/google/android/location/p/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " terminated."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_3

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
