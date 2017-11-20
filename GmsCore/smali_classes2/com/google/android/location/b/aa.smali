.class public final Lcom/google/android/location/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/av;


# instance fields
.field public final a:Lcom/google/android/location/b/ae;

.field public final b:Lcom/google/android/location/b/ab;

.field final c:Lcom/google/android/location/f/ag;

.field public final d:Lcom/google/android/location/k/b;

.field public e:J

.field f:Z

.field public final g:Lcom/google/android/location/f/at;


# direct methods
.method public constructor <init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/k/d;Lcom/google/android/location/f/ag;)V
    .locals 6

    .prologue
    .line 116
    new-instance v3, Ljava/io/File;

    invoke-interface {p2}, Lcom/google/android/location/k/e;->a()Ljava/io/File;

    move-result-object v0

    const-string v1, "nlp_devices"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/b/aa;-><init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Ljava/io/File;Lcom/google/android/location/k/d;Lcom/google/android/location/f/ag;)V

    .line 117
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Ljava/io/File;Lcom/google/android/location/k/d;Lcom/google/android/location/f/ag;)V
    .locals 9

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/google/android/location/b/ae;

    invoke-direct {v0}, Lcom/google/android/location/b/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/b/aa;->a:Lcom/google/android/location/b/ae;

    .line 96
    new-instance v0, Lcom/google/android/location/b/ab;

    iget-object v1, p0, Lcom/google/android/location/b/aa;->a:Lcom/google/android/location/b/ae;

    invoke-direct {v0, v1}, Lcom/google/android/location/b/ab;-><init>(Lcom/google/android/location/b/ae;)V

    iput-object v0, p0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    .line 122
    iput-object p1, p0, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    .line 123
    iput-object p5, p0, Lcom/google/android/location/b/aa;->c:Lcom/google/android/location/f/ag;

    .line 124
    new-instance v0, Lcom/google/android/location/f/at;

    const/4 v1, 0x2

    invoke-interface {p4}, Lcom/google/android/location/k/d;->a()Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p4}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v4

    sget-object v5, Lcom/google/android/location/n/a;->bf:Lcom/google/g/a/b/b/c;

    move-object v6, p3

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/f/at;-><init>(ILjavax/crypto/SecretKey;I[BLcom/google/g/a/b/b/c;Ljava/io/File;Lcom/google/android/location/f/av;Lcom/google/android/location/k/e;)V

    iput-object v0, p0, Lcom/google/android/location/b/aa;->g:Lcom/google/android/location/f/at;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/location/b/aa;->b()V

    .line 132
    return-void
.end method


# virtual methods
.method public final a(JJ)Lcom/google/android/location/b/ac;
    .locals 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ab;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    .line 275
    if-nez v0, :cond_1

    .line 276
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->bg:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 278
    new-instance v1, Lcom/google/android/location/b/ac;

    invoke-direct {v1, v0}, Lcom/google/android/location/b/ac;-><init>(Lcom/google/g/a/b/b/a;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/location/b/ab;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    .line 280
    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/location/b/aa;->a:Lcom/google/android/location/b/ae;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/location/b/ae;->a(I)V

    :cond_0
    move-object v0, v1

    .line 285
    :cond_1
    iget-object v1, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x3

    invoke-static {p3, p4}, Lcom/google/android/location/b/ac;->b(J)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 286
    return-object v0
.end method

.method public final a()Lcom/google/g/a/b/b/a;
    .locals 4

    .prologue
    .line 416
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->bf:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v0}, Lcom/google/android/location/b/ab;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 419
    const/4 v3, 0x3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    iget-object v0, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v1, v3, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 421
    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 422
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/location/b/aa;->e:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 424
    const/4 v0, 0x4

    iget-boolean v2, p0, Lcom/google/android/location/b/aa;->f:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    .line 425
    return-object v1
.end method

.method public final a(JZ)V
    .locals 1

    .prologue
    .line 264
    iput-wide p1, p0, Lcom/google/android/location/b/aa;->e:J

    .line 265
    iput-boolean p3, p0, Lcom/google/android/location/b/aa;->f:Z

    .line 266
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 435
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 436
    iget-object v2, p0, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/location/b/aa;->a(JZ)V

    .line 437
    iget-object v0, p0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v0}, Lcom/google/android/location/b/ab;->clear()V

    .line 438
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SeenDevicesCache"

    const-string v1, "Clearing device cache, last refresh: %d"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/location/b/aa;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/g/a/b/b/a;)V
    .locals 14

    .prologue
    .line 382
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v0

    .line 383
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    add-long v8, v2, v0

    .line 385
    iget-object v2, p0, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    .line 386
    iget-object v4, p0, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v4}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    .line 389
    sub-long v4, v2, v6

    .line 392
    cmp-long v10, v8, v2

    if-lez v10, :cond_3

    .line 394
    :goto_0
    sub-long/2addr v2, v4

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v8

    invoke-virtual {p0, v2, v3, v8}, Lcom/google/android/location/b/aa;->a(JZ)V

    .line 396
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    if-ge v8, v2, :cond_5

    .line 399
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v8}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v9

    .line 400
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/google/g/a/b/b/a;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    .line 404
    new-instance v10, Lcom/google/android/location/b/ac;

    invoke-direct {v10, v9}, Lcom/google/android/location/b/ac;-><init>(Lcom/google/g/a/b/b/a;)V

    .line 408
    iget-object v2, v10, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v12, 0x5265c00

    mul-long/2addr v2, v12

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/b/ac;->a(JJJJ)J

    move-result-wide v2

    iget-object v11, v10, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v12, 0x2

    invoke-static {v2, v3}, Lcom/google/android/location/b/ac;->b(J)I

    move-result v2

    invoke-virtual {v11, v12, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_0
    iget-object v2, v10, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v10, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v12, 0x5265c00

    mul-long/2addr v2, v12

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/b/ac;->a(JJJJ)J

    move-result-wide v2

    iget-object v11, v10, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v12, 0x3

    invoke-static {v2, v3}, Lcom/google/android/location/b/ac;->b(J)I

    move-result v2

    invoke-virtual {v11, v12, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 409
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    .line 410
    iget-object v9, p0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2, v10}, Lcom/google/android/location/b/ab;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_3
    move-wide v2, v8

    .line 392
    goto/16 :goto_0

    .line 400
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 413
    :cond_5
    return-void
.end method

.method public final c()V
    .locals 12

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 454
    const-wide/32 v2, 0xa4cb800

    sub-long v4, v0, v2

    .line 455
    const-wide/32 v2, 0x240c8400

    sub-long v6, v0, v2

    .line 456
    iget-object v0, p0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v0}, Lcom/google/android/location/b/ab;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 457
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/b/ac;

    iget-object v2, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    move v2, v1

    .line 460
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/b/ac;

    iget-object v8, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v1, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    .line 461
    :goto_2
    const v8, 0x7fffffff

    if-ne v2, v8, :cond_3

    .line 462
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 459
    :cond_1
    const v1, 0x7fffffff

    move v2, v1

    goto :goto_1

    .line 460
    :cond_2
    const v1, 0x7fffffff

    goto :goto_2

    .line 465
    :cond_3
    int-to-long v8, v2

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    cmp-long v2, v8, v6

    if-gez v2, :cond_4

    .line 466
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 467
    iget-object v1, p0, Lcom/google/android/location/b/aa;->a:Lcom/google/android/location/b/ae;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/location/b/ae;->a(I)V

    .line 468
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SeenDevicesCache"

    const-string v2, "Discarding %d because never seen for a long time."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_4
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    int-to-long v8, v1

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-gez v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/google/android/location/b/aa;->a:Lcom/google/android/location/b/ae;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/location/b/ae;->a(I)V

    .line 477
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/b/ac;

    iget-object v2, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v8, 0x2

    invoke-static {v2, v8}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    iget-object v2, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v8, 0x4

    invoke-static {v2, v8}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    iget-object v2, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v8, 0x5

    invoke-static {v2, v8}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    iget-object v1, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    .line 478
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SeenDevicesCache"

    const-string v2, "Removing cache result of %d because it\'s too old."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_5
    return-void
.end method
