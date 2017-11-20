.class Lcom/google/android/location/collectionlib/bb;
.super Lcom/google/android/location/collectionlib/bx;
.source "SourceFile"


# instance fields
.field private volatile e:Z

.field private final f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final g:Landroid/os/PowerManager;

.field private volatile h:Ljava/lang/String;

.field private final i:[B

.field private volatile j:Z

.field private volatile k:Ljava/lang/String;

.field private l:Ljava/lang/Object;

.field private volatile m:Lcom/google/android/location/collectionlib/c;

.field private final n:Lcom/google/android/location/p/j;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/cj;Lcom/google/android/location/p/j;)V
    .locals 6

    .prologue
    const/16 v5, 0x2f

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/location/collectionlib/bx;-><init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/cj;)V

    .line 45
    iput-boolean v4, p0, Lcom/google/android/location/collectionlib/bb;->e:Z

    .line 48
    new-instance v0, Lcom/google/android/location/collectionlib/bc;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v3}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/location/collectionlib/bc;-><init>(Lcom/google/android/location/collectionlib/bb;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 81
    iput-boolean v4, p0, Lcom/google/android/location/collectionlib/bb;->j:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bb;->k:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bb;->l:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bb;->g:Landroid/os/PowerManager;

    .line 92
    iput-object p2, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    .line 96
    :cond_0
    iput-object p3, p0, Lcom/google/android/location/collectionlib/bb;->i:[B

    .line 97
    iput-object p7, p0, Lcom/google/android/location/collectionlib/bb;->n:Lcom/google/android/location/p/j;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/bb;Lcom/google/g/a/b/b/a;)Lcom/google/android/location/collectionlib/by;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/bb;->c(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/collectionlib/by;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)Lcom/google/android/location/collectionlib/by;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/bb;->b()Lcom/google/android/location/collectionlib/by;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 288
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 293
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 290
    :goto_1
    :try_start_3
    const-string v2, "Failed to save data: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 291
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v2}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 293
    if-eqz v1, :cond_0

    .line 295
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 295
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 297
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 293
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 289
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/bb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()Lcom/google/android/location/collectionlib/by;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bb;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/bb;->j:Z

    if-eqz v1, :cond_0

    .line 309
    monitor-exit v2

    .line 326
    :goto_0
    return-object v0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/location/collectionlib/bb;->b(Ljava/lang/String;)Lcom/google/android/location/collectionlib/by;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_1

    .line 314
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 318
    :cond_1
    const-string v1, "%d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/location/collectionlib/bb;->b(Ljava/lang/String;)Lcom/google/android/location/collectionlib/by;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_2

    .line 323
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 325
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/bb;->j:Z

    .line 326
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private b(Ljava/lang/String;)Lcom/google/android/location/collectionlib/by;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 137
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mkdir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 140
    :goto_0
    if-nez v0, :cond_2

    .line 141
    const-string v0, "Failed to create dir: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 143
    :cond_1
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    invoke-direct {v0, v6, v1, v2}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/bb;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bb;->j:Z

    return v0
.end method

.method private b(Lcom/google/g/a/b/b/a;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x6

    .line 173
    invoke-virtual {p1, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "No sequence number specified!"

    invoke-static {v0, v3}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 177
    invoke-virtual {p1, v4}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/collectionlib/bb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/google/android/location/collectionlib/bd;

    invoke-direct {v4, p0, v0, p1}, Lcom/google/android/location/collectionlib/bd;-><init>(Lcom/google/android/location/collectionlib/bb;ILcom/google/g/a/b/b/a;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    const-string v1, "Failed to write to file: work queue full."

    .line 213
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    invoke-virtual {v3, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, v1}, Lcom/google/android/location/collectionlib/ao;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 215
    goto :goto_1
.end method

.method static synthetic c(Lcom/google/android/location/collectionlib/bb;)Landroid/os/PowerManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->g:Landroid/os/PowerManager;

    return-object v0
.end method

.method private c(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/collectionlib/by;
    .locals 5

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/bb;->b()Lcom/google/android/location/collectionlib/by;

    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->m:Lcom/google/android/location/collectionlib/c;

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->i:[B

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Encryption Key invalid."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    .line 271
    :goto_0
    return-object v0

    .line 266
    :cond_0
    new-instance v0, Lcom/google/android/location/collectionlib/c;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bb;->i:[B

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    invoke-static {v2, v3}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/c;-><init>(Ljava/lang/String;Lcom/google/android/location/f/a;Lcom/google/android/location/p/a/c;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bb;->m:Lcom/google/android/location/collectionlib/c;

    .line 269
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->m:Lcom/google/android/location/collectionlib/c;

    invoke-virtual {v0, p1}, Lcom/google/android/location/collectionlib/c;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/collectionlib/by;

    move-result-object v0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/google/android/location/collectionlib/bb;)Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->n:Lcom/google/android/location/p/j;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/collectionlib/bb;)Z
    .locals 6

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bb;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/bb;->b()Lcom/google/android/location/collectionlib/by;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x18

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/bw;->a(Ljava/lang/String;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bb;->e:Z

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to lock dir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/by;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    const-string v1, "sessionId in two writes should be consistent."

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 110
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    .line 107
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_3
    :try_start_1
    const-string v0, "sessionId"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/bb;->a(Ljava/lang/String;[B)Lcom/google/android/location/collectionlib/by;

    move-result-object v0

    .line 113
    iget-boolean v1, v0, Lcom/google/android/location/collectionlib/by;->a:Z

    if-eqz v1, :cond_1

    .line 114
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bb;->k:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 225
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "LocalScanResultWriter.workerThread is shutting down."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/location/collectionlib/cj;)V
    .locals 4

    .prologue
    .line 347
    if-nez p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/location/collectionlib/cj;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create sessionSummary "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/google/g/a/b/b/a;)Z
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/bb;->c:Z

    if-eqz v0, :cond_1

    .line 235
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "Writer closed, no data can be appended."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/bb;->b(Lcom/google/g/a/b/b/a;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 249
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/bb;->b(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "Might leak LocalScanResultWriter.workerThread."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
