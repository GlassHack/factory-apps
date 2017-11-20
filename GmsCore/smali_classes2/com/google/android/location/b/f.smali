.class public final Lcom/google/android/location/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/io/File;

.field final b:Lcom/google/android/location/f/a;

.field final c:Lcom/google/android/location/k/e;

.field final d:S

.field final e:Lcom/google/android/location/b/ap;

.field final f:Lcom/google/android/location/b/j;

.field final g:Lcom/google/android/location/b/i;

.field private h:Lcom/google/android/location/k/i;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/location/b/au;

.field private final k:Ljava/util/Random;


# direct methods
.method public constructor <init>(IILcom/google/android/location/k/i;Lcom/google/android/location/b/i;Lcom/google/android/location/b/au;Ljava/io/File;Ljava/lang/String;[BLcom/google/android/location/k/e;Ljava/util/Random;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p10, p0, Lcom/google/android/location/b/f;->k:Ljava/util/Random;

    .line 160
    iput-object p4, p0, Lcom/google/android/location/b/f;->g:Lcom/google/android/location/b/i;

    .line 162
    iput-object p6, p0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    .line 163
    if-nez p8, :cond_0

    .line 164
    iput-object v1, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    .line 168
    :goto_0
    iput-object p3, p0, Lcom/google/android/location/b/f;->h:Lcom/google/android/location/k/i;

    .line 170
    new-instance v0, Lcom/google/android/location/b/ap;

    invoke-direct {v0, p1}, Lcom/google/android/location/b/ap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    .line 172
    iget-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lcom/google/android/location/b/j;

    iget-object v1, p0, Lcom/google/android/location/b/f;->h:Lcom/google/android/location/k/i;

    invoke-direct {v0, p2, v1, p6}, Lcom/google/android/location/b/j;-><init>(ILjava/util/concurrent/ExecutorService;Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    .line 178
    :goto_1
    iput-object p5, p0, Lcom/google/android/location/b/f;->j:Lcom/google/android/location/b/au;

    .line 179
    iput-object p9, p0, Lcom/google/android/location/b/f;->c:Lcom/google/android/location/k/e;

    .line 180
    iput-object p7, p0, Lcom/google/android/location/b/f;->i:Ljava/lang/String;

    .line 181
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/google/android/location/b/f;->d:S

    .line 182
    return-void

    .line 166
    :cond_0
    invoke-static {p8, v1}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    goto :goto_0

    .line 175
    :cond_1
    iput-object v1, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    goto :goto_1
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 624
    if-eqz p0, :cond_0

    .line 626
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_0

    .line 614
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 615
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/ap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/aw;

    .line 288
    iget-object v1, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v1, p1}, Lcom/google/android/location/b/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/aw;

    .line 293
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-eqz v0, :cond_2

    .line 298
    iget-object v2, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    if-eqz v2, :cond_0

    .line 300
    iput-wide p2, v1, Lcom/google/android/location/f/aw;->c:J

    .line 302
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/google/android/location/f/aw;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 370
    :goto_1
    return-object v0

    :cond_1
    move-object v1, v2

    .line 291
    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :cond_2
    if-eqz v1, :cond_4

    .line 307
    const-string v0, ""

    iget-object v3, v1, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    new-instance v0, Lcom/google/android/location/f/aw;

    iget-wide v4, v1, Lcom/google/android/location/f/aw;->b:J

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    .line 311
    monitor-enter p0

    .line 312
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v2

    .line 315
    goto :goto_1

    .line 313
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/b/f;->h:Lcom/google/android/location/k/i;

    new-instance v3, Lcom/google/android/location/b/g;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/location/b/g;-><init>(Lcom/google/android/location/b/f;Ljava/lang/Object;Lcom/google/android/location/f/aw;)V

    invoke-virtual {v0, v3}, Lcom/google/android/location/k/i;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object v0, v2

    .line 368
    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 370
    goto :goto_1
.end method

.method public final declared-synchronized a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 545
    :cond_0
    monitor-exit p0

    return-void

    .line 492
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/location/b/f;->i:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v0, 0x0

    .line 496
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 497
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 499
    iget-short v3, p0, Lcom/google/android/location/b/f;->d:S

    if-eq v0, v3, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/google/android/location/b/f;->d()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 516
    :goto_0
    :try_start_4
    invoke-static {v1}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    .line 521
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v0}, Lcom/google/android/location/b/ap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v1}, Lcom/google/android/location/b/j;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v3}, Lcom/google/android/location/b/j;->size()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v4}, Lcom/google/android/location/b/ap;->a()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 531
    iget-object v0, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v0}, Lcom/google/android/location/b/j;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v2

    .line 532
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 533
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 534
    if-ge v0, v3, :cond_3

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 503
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 504
    iget-object v3, p0, Lcom/google/android/location/b/f;->j:Lcom/google/android/location/b/au;

    iget-object v4, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4, v5}, Lcom/google/android/location/b/au;->a(Lcom/google/android/location/b/ap;Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/location/b/f;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 516
    :try_start_7
    invoke-static {v0}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 512
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_4
    :try_start_8
    iget-object v0, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v0}, Lcom/google/android/location/b/j;->clear()V

    .line 514
    invoke-direct {p0}, Lcom/google/android/location/b/f;->d()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 516
    :try_start_9
    invoke-static {v1}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    invoke-static {v1}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    throw v0

    .line 537
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 542
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 543
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 516
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    .line 512
    :catch_2
    move-exception v0

    goto :goto_4

    .line 509
    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public final declared-synchronized a(JJ)V
    .locals 1

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/location/b/ap;->a(JJ)V

    .line 476
    iget-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/location/b/j;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_0
    monitor-exit p0

    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 7

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/google/android/location/f/aw;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    .line 385
    iget-object v1, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v1, Lcom/google/android/location/f/aw;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    .line 393
    new-instance v4, Lcom/google/android/location/f/aw;

    if-nez p2, :cond_1

    const-string v0, ""

    :goto_1
    invoke-direct {v4, v0, p3, p4}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/aw;

    .line 403
    iget-object v0, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/location/b/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    if-nez p2, :cond_2

    if-nez v2, :cond_2

    .line 408
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/b/f;->k:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 417
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/google/android/location/b/f;->h:Lcom/google/android/location/k/i;

    new-instance v0, Lcom/google/android/location/b/h;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/b/h;-><init>(Lcom/google/android/location/b/f;Lcom/google/android/location/f/aw;Ljava/lang/Object;Lcom/google/android/location/f/aw;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lcom/google/android/location/k/i;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 463
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/j;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 262
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/b/f;->e:Lcom/google/android/location/b/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/ap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    if-nez v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 555
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/location/b/f;->i:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    .line 558
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 559
    iget-object v1, p0, Lcom/google/android/location/b/f;->c:Lcom/google/android/location/k/e;

    invoke-interface {v1, v2}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 561
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 563
    :try_start_1
    iget-short v0, p0, Lcom/google/android/location/b/f;->d:S

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 566
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 567
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 568
    :try_start_2
    iget-object v3, p0, Lcom/google/android/location/b/f;->j:Lcom/google/android/location/b/au;

    iget-object v4, p0, Lcom/google/android/location/b/f;->f:Lcom/google/android/location/b/j;

    invoke-interface {v3, v4, v0}, Lcom/google/android/location/b/au;->a(Lcom/google/android/location/b/ap;Ljava/io/OutputStream;)V

    .line 569
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 573
    iget-object v3, p0, Lcom/google/android/location/b/f;->b:Lcom/google/android/location/f/a;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 585
    invoke-static {v1}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 585
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 580
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 585
    invoke-static {v1}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lcom/google/android/location/b/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 580
    :catch_2
    move-exception v0

    goto :goto_2

    .line 585
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/google/android/location/b/f;->d()V

    .line 604
    iget-object v0, p0, Lcom/google/android/location/b/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 605
    return-void
.end method
