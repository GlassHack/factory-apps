.class public final Lcom/google/android/location/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/av;


# instance fields
.field final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/location/f/at;

.field public c:Lcom/google/g/a/b/b/a;


# direct methods
.method private constructor <init>(Lcom/google/android/location/k/e;Ljava/io/File;Ljavax/crypto/SecretKey;[B)V
    .locals 9

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->bm:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    .line 79
    new-instance v0, Lcom/google/android/location/f/at;

    const/4 v1, 0x1

    const/4 v3, 0x2

    sget-object v5, Lcom/google/android/location/n/a;->bm:Lcom/google/g/a/b/b/c;

    move-object v2, p3

    move-object v4, p4

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/f/at;-><init>(ILjavax/crypto/SecretKey;I[BLcom/google/g/a/b/b/c;Ljava/io/File;Lcom/google/android/location/f/av;Lcom/google/android/location/k/e;)V

    iput-object v0, p0, Lcom/google/android/location/v;->b:Lcom/google/android/location/f/at;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/k/e;Ljavax/crypto/SecretKey;[B)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/android/location/v;->a(Lcom/google/android/location/k/e;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/location/v;-><init>(Lcom/google/android/location/k/e;Ljava/io/File;Ljavax/crypto/SecretKey;[B)V

    .line 74
    return-void
.end method

.method static a(Lcom/google/android/location/k/e;)Ljava/io/File;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/google/android/location/k/e;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_clts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/google/g/a/b/b/a;I)Ljava/util/Date;
    .locals 4

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Ljava/util/List;
    .locals 5

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(J)Lcom/google/g/a/b/b/a;
    .locals 11

    .prologue
    .line 513
    iget-object v2, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_0
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->X:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 515
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 516
    iget-object v3, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 518
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 527
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v6

    .line 528
    cmp-long v7, v4, p1

    if-ltz v7, :cond_0

    .line 529
    new-instance v7, Lcom/google/g/a/b/b/a;

    sget-object v8, Lcom/google/android/location/n/a;->W:Lcom/google/g/a/b/b/c;

    invoke-direct {v7, v8}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 532
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Lcom/google/g/a/b/b/e;->a(Lcom/google/g/a/b/b/a;II)I

    move-result v3

    .line 534
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 537
    const/4 v3, 0x1

    invoke-virtual {v7, v3, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 538
    invoke-static {v4, v5}, Lcom/google/android/location/p/h;->a(J)J

    move-result-wide v4

    .line 539
    const/4 v3, 0x3

    long-to-int v4, v4

    invoke-virtual {v7, v3, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 541
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v7}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 515
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/v;->b:Lcom/google/android/location/f/at;

    iget-object v2, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v2}, Lcom/google/android/location/f/at;->a(Lcom/google/g/a/b/b/a;)[B

    move-result-object v0

    .line 123
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/v;->b:Lcom/google/android/location/f/at;

    invoke-virtual {v1, v0}, Lcom/google/android/location/f/at;->a([B)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "CollectorState"

    const-string v1, "Unable to save data to disk."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(JLjava/util/Map;)V
    .locals 11

    .prologue
    .line 443
    iget-object v2, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 446
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    .line 447
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 448
    new-instance v4, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->bl:Lcom/google/g/a/b/b/c;

    invoke-direct {v4, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 450
    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    .line 452
    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->bk:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 453
    const/4 v6, 0x1

    iget-wide v8, v0, Lcom/google/android/location/p/f;->a:J

    long-to-int v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 454
    const/4 v6, 0x2

    iget-wide v8, v0, Lcom/google/android/location/p/f;->b:J

    long-to-int v0, v8

    invoke-virtual {v5, v6, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 455
    const/4 v0, 0x2

    invoke-virtual {v4, v0, v5}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 458
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 461
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/util/Calendar;)V
    .locals 6

    .prologue
    .line 395
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    if-eqz p1, :cond_0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 399
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 401
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/g/a/b/b/a;
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    .line 146
    if-lez v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()J
    .locals 3

    .prologue
    .line 211
    iget-object v2, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final d()I
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()I
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final h()V
    .locals 5

    .prologue
    .line 310
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/v;->n()Ljava/util/List;

    move-result-object v0

    .line 312
    new-instance v2, Lcom/google/android/location/w;

    invoke-direct {v2, p0}, Lcom/google/android/location/w;-><init>(Lcom/google/android/location/v;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 327
    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    .line 328
    add-int/lit8 v3, v2, -0x14

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    .line 332
    iget-object v3, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final i()J
    .locals 3

    .prologue
    .line 346
    iget-object v2, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    .line 372
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final k()Ljava/util/Date;
    .locals 6

    .prologue
    .line 380
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    invoke-static {v0}, Lcom/google/g/a/b/b/e;->b(Lcom/google/g/a/b/b/a;)J

    move-result-wide v2

    .line 383
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    monitor-exit v1

    .line 386
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final l()I
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    invoke-static {v0}, Lcom/google/g/a/b/b/e;->a(Lcom/google/g/a/b/b/a;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final m()Ljava/util/Map;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 472
    iget-object v4, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    monitor-exit v4

    .line 502
    :goto_0
    return-object v0

    .line 476
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    .line 477
    :goto_1
    iget-object v1, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v3}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v5

    .line 481
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 487
    :goto_2
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 489
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v7

    .line 491
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 493
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v8

    int-to-long v8, v8

    .line 494
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v7

    int-to-long v10, v7

    .line 495
    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 496
    new-instance v7, Lcom/google/android/location/p/f;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/location/p/f;-><init>(JJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 478
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 502
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    const-string v3, "NextSensorCollectionTimeSinceEpoch: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/google/android/location/v;->a(Lcom/google/g/a/b/b/a;I)Ljava/util/Date;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 558
    iget-object v3, p0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 560
    const-string v4, ", ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v4, "start: %s, end: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/google/android/location/v;->a(Lcom/google/g/a/b/b/a;I)Ljava/util/Date;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v3, v7}, Lcom/google/android/location/v;->a(Lcom/google/g/a/b/b/a;I)Ljava/util/Date;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
