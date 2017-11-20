.class final Lcom/google/android/location/t;
.super Lcom/google/android/location/collectionlib/cs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/s;


# direct methods
.method private constructor <init>(Lcom/google/android/location/s;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    invoke-direct {p0}, Lcom/google/android/location/collectionlib/cs;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/s;B)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/google/android/location/t;-><init>(Lcom/google/android/location/s;)V

    return-void
.end method

.method private a(Lcom/google/g/a/b/b/a;I)Lcom/google/android/location/f/ai;
    .locals 20

    .prologue
    .line 419
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 420
    const/4 v6, 0x0

    .line 422
    const-wide/16 v4, 0x0

    .line 423
    const/4 v3, 0x0

    .line 424
    const/4 v2, 0x0

    :goto_0
    const/4 v7, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 425
    const/4 v7, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v7

    .line 426
    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 427
    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v12

    .line 428
    const/4 v8, 0x1

    .line 429
    const/4 v7, 0x0

    move/from16 v18, v7

    move/from16 v19, v8

    move v8, v6

    move-wide v6, v4

    move v5, v3

    move/from16 v4, v19

    move/from16 v3, v18

    :goto_1
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 430
    move/from16 v0, p2

    invoke-virtual {v12, v0, v3}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v10

    .line 431
    add-int/lit8 v8, v8, 0x1

    .line 432
    int-to-long v14, v8

    const-wide/16 v16, 0xa

    cmp-long v9, v14, v16

    if-lez v9, :cond_0

    .line 433
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    if-eqz v4, :cond_1

    .line 439
    const/4 v4, 0x0

    .line 429
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 440
    :cond_1
    const/16 v9, 0x1388

    if-ge v5, v9, :cond_0

    .line 441
    const/4 v9, 0x7

    invoke-virtual {v10, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x7

    invoke-virtual {v10, v9}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v9

    .line 442
    :goto_3
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v10

    .line 443
    :goto_4
    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v6, v14

    .line 444
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 441
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 442
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    move v3, v5

    move-wide v4, v6

    move v6, v8

    .line 424
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_6
    const/16 v2, 0x64

    if-ge v3, v2, :cond_8

    .line 451
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v2, v2, Lcom/google/android/location/s;->a:Ljava/lang/String;

    const-string v3, "Not enough data to properly estimate the sensor rate."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_7
    const/4 v2, 0x0

    .line 456
    :goto_5
    return-object v2

    .line 454
    :cond_8
    long-to-double v4, v4

    int-to-double v2, v3

    div-double v2, v4, v2

    .line 455
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v4, v4, Lcom/google/android/location/s;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TimeBetweenEvents for sensor:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_9
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v2

    goto :goto_5
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    invoke-static {v1}, Lcom/google/android/location/s;->a(Lcom/google/android/location/s;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/s;->k:J

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    sget-object v1, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v1, v0, Lcom/google/android/location/s;->h:Lcom/google/android/location/e;

    .line 487
    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    invoke-static {v0}, Lcom/google/android/location/s;->b(Lcom/google/android/location/s;)V

    .line 488
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 10

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-boolean v0, v0, Lcom/google/android/location/s;->f:Z

    if-nez v0, :cond_1

    .line 335
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    const-string v1, "Skipping onGLocRequestComposed because NLP is disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/t;->a(Lcom/google/g/a/b/b/a;I)Lcom/google/android/location/f/ai;

    move-result-object v3

    .line 343
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/t;->a(Lcom/google/g/a/b/b/a;I)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 347
    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    .line 348
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/t;->a(Z)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, v3, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget v0, v0, Lcom/google/android/location/s;->o:I

    const-wide v8, 0x415b3f7249249249L    # 7142857.142857143

    cmpg-double v1, v4, v8

    if-gez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget v0, v0, Lcom/google/android/location/s;->o:I

    invoke-static {v0}, Lcom/google/android/location/activity/aw;->a(I)I

    move-result v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget v1, v1, Lcom/google/android/location/s;->p:I

    const-wide v4, 0x416d5804e0000000L    # 1.5384615E7

    cmpg-double v2, v6, v4

    if-gez v2, :cond_5

    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget v1, v1, Lcom/google/android/location/s;->p:I

    invoke-static {v1}, Lcom/google/android/location/activity/aw;->a(I)I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget v2, v2, Lcom/google/android/location/s;->o:I

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget v2, v2, Lcom/google/android/location/s;->p:I

    if-eq v1, v2, :cond_a

    :cond_6
    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v4, v4, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    invoke-virtual {v4}, Lcom/google/android/location/v;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v4, v4, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    invoke-virtual {v4}, Lcom/google/android/location/v;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v4, v4, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    iget-object v5, v4, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, v4, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    iget-object v4, v0, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v0, v0, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->i:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->a()V

    :cond_8
    if-eqz v2, :cond_b

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    const-string v1, "Sensor recording too fast. Will lower the rate and try again."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_c

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/t;->a(Z)V

    goto/16 :goto_0

    .line 352
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 364
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    iget-object v0, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/location/s;->a(Ljava/util/List;)[[D

    move-result-object v0

    if-eqz v0, :cond_11

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_d

    const-string v1, "CalibrationCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Gyro stats: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    cmpg-double v1, v2, v6

    if-gez v1, :cond_10

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    cmpg-double v1, v2, v6

    if-gez v1, :cond_10

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    cmpg-double v1, v2, v6

    if-gez v1, :cond_10

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_e

    const-string v1, "CalibrationCollector"

    const-string v2, "Gyro variance stable"

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->w:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    double-to-float v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    double-to-float v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x2

    aget-wide v6, v0, v3

    double-to-float v0, v6

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    const/4 v0, 0x4

    invoke-virtual {v1, v0, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->v:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 367
    :goto_3
    if-eqz v0, :cond_14

    .line 369
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v1, v1, Lcom/google/android/location/s;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create sensorCacheDir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v1, v1, Lcom/google/android/location/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    :cond_f
    :goto_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/t;->a(Z)V

    goto/16 :goto_0

    .line 364
    :cond_10
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_11

    const-string v0, "CalibrationCollector"

    const-string v1, "Gyro variance too high"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/4 v0, 0x0

    goto :goto_3

    .line 369
    :cond_12
    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "calibration"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 370
    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iput-object v0, v1, Lcom/google/android/location/s;->n:Lcom/google/g/a/b/b/a;

    .line 371
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v1, v1, Lcom/google/android/location/s;->a:Ljava/lang/String;

    const-string v2, "Calibration successfully written to disk"

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v2, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    invoke-static {v2, v0}, Lcom/google/android/location/s;->a(Lcom/google/android/location/s;Lcom/google/g/a/b/b/a;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/location/s;->j:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 378
    :cond_14
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    const-string v1, "Calibration failed due to phone not stationary"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 475
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/t;->a:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->m:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->b()V

    .line 477
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/t;->a(Z)V

    .line 478
    return-void
.end method
