.class final Lcom/google/android/location/collectionlib/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/u;

.field private final b:Ljava/util/Set;

.field private final c:Lcom/google/android/location/collectionlib/co;

.field private final d:J

.field private final e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/u;Lcom/google/android/location/collectionlib/co;Ljava/util/Set;JLcom/google/android/location/collectionlib/aa;)V
    .locals 2

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p3, p0, Lcom/google/android/location/collectionlib/x;->b:Ljava/util/Set;

    .line 347
    iput-object p2, p0, Lcom/google/android/location/collectionlib/x;->c:Lcom/google/android/location/collectionlib/co;

    .line 348
    iput-wide p4, p0, Lcom/google/android/location/collectionlib/x;->d:J

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/x;->e:Ljava/lang/ref/WeakReference;

    .line 350
    return-void
.end method

.method private a(J)J
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 385
    .line 386
    iget-object v0, p0, Lcom/google/android/location/collectionlib/x;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 387
    iget-object v1, p0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/z;

    .line 388
    if-eqz v0, :cond_1

    .line 389
    iget-object v0, v0, Lcom/google/android/location/collectionlib/z;->a:Lcom/google/android/location/collectionlib/ac;

    .line 390
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/ac;->a()Lcom/google/android/location/collectionlib/ad;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_1

    iget-wide v8, v0, Lcom/google/android/location/collectionlib/ad;->a:J

    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    .line 392
    iget-wide v2, v0, Lcom/google/android/location/collectionlib/ad;->a:J

    move-wide v0, v2

    :goto_1
    move-wide v2, v0

    .line 395
    goto :goto_0

    .line 396
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private a(Lcom/google/android/location/collectionlib/y;)V
    .locals 20

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/u;->d:Lcom/google/android/location/collectionlib/cg;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cg;->c()J

    move-result-wide v4

    .line 413
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/location/collectionlib/y;->a:Lcom/google/android/location/collectionlib/ac;

    .line 415
    iget v2, v11, Lcom/google/android/location/collectionlib/ac;->e:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/location/collectionlib/y;->b:I

    sub-int v3, v2, v3

    .line 416
    new-array v8, v3, [F

    .line 417
    new-array v9, v3, [F

    .line 418
    new-array v10, v3, [F

    .line 419
    new-array v6, v3, [J

    .line 420
    new-array v7, v3, [J

    .line 421
    const/4 v2, 0x0

    .line 422
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/collectionlib/y;->b()Z

    move-result v12

    if-nez v12, :cond_0

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/collectionlib/y;->a()Lcom/google/android/location/collectionlib/ad;

    move-result-object v12

    .line 424
    iget-wide v14, v12, Lcom/google/android/location/collectionlib/ad;->a:J

    .line 425
    sub-long v16, v14, v4

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    .line 426
    iget v13, v12, Lcom/google/android/location/collectionlib/ad;->b:F

    aput v13, v8, v2

    .line 427
    iget v13, v12, Lcom/google/android/location/collectionlib/ad;->c:F

    aput v13, v9, v2

    .line 428
    iget v12, v12, Lcom/google/android/location/collectionlib/ad;->d:F

    aput v12, v10, v2

    .line 441
    aput-wide v14, v6, v2

    .line 442
    aput-wide v16, v7, v2

    .line 443
    add-int/lit8 v2, v2, 0x1

    .line 444
    goto :goto_0

    .line 445
    :cond_0
    if-eq v2, v3, :cond_1

    .line 446
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wrong event size."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/x;->c:Lcom/google/android/location/collectionlib/co;

    iget-object v5, v11, Lcom/google/android/location/collectionlib/ac;->a:Landroid/hardware/Sensor;

    iget-object v12, v3, Lcom/google/android/location/collectionlib/co;->a:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v2, v3, Lcom/google/android/location/collectionlib/co;->e:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/f/ai;

    if-eqz v4, :cond_2

    iget-object v2, v4, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/Handler;

    move-object v11, v0

    new-instance v2, Lcom/google/android/location/collectionlib/cq;

    invoke-direct/range {v2 .. v10}, Lcom/google/android/location/collectionlib/cq;-><init>(Lcom/google/android/location/collectionlib/co;Lcom/google/android/location/f/ai;Landroid/hardware/Sensor;[J[J[F[F[F)V

    invoke-virtual {v11, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2
.end method

.method private a(Ljava/util/List;)V
    .locals 19

    .prologue
    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/u;->d:Lcom/google/android/location/collectionlib/cg;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cg;->c()J

    move-result-wide v16

    .line 453
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 454
    const/4 v3, 0x0

    .line 455
    const-wide v4, 0x7fffffffffffffffL

    .line 456
    const/4 v2, 0x0

    move v15, v3

    move v3, v2

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 457
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/collectionlib/y;

    .line 458
    iget-object v6, v2, Lcom/google/android/location/collectionlib/y;->a:Lcom/google/android/location/collectionlib/ac;

    iget v2, v2, Lcom/google/android/location/collectionlib/y;->b:I

    invoke-virtual {v6, v2}, Lcom/google/android/location/collectionlib/ac;->a(I)Lcom/google/android/location/collectionlib/ad;

    move-result-object v2

    .line 459
    iget-wide v6, v2, Lcom/google/android/location/collectionlib/ad;->a:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_4

    .line 461
    iget-wide v4, v2, Lcom/google/android/location/collectionlib/ad;->a:J

    move v6, v3

    .line 456
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v15, v6

    goto :goto_1

    .line 464
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/location/collectionlib/y;

    .line 465
    invoke-virtual {v13}, Lcom/google/android/location/collectionlib/y;->a()Lcom/google/android/location/collectionlib/ad;

    move-result-object v2

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/x;->c:Lcom/google/android/location/collectionlib/co;

    iget-object v4, v13, Lcom/google/android/location/collectionlib/y;->a:Lcom/google/android/location/collectionlib/ac;

    iget-object v5, v4, Lcom/google/android/location/collectionlib/ac;->a:Landroid/hardware/Sensor;

    iget-object v0, v3, Lcom/google/android/location/collectionlib/co;->a:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    iget-object v4, v3, Lcom/google/android/location/collectionlib/co;->e:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/f/ai;

    iget v10, v2, Lcom/google/android/location/collectionlib/ad;->b:F

    iget v11, v2, Lcom/google/android/location/collectionlib/ad;->c:F

    iget v12, v2, Lcom/google/android/location/collectionlib/ad;->d:F

    iget-wide v6, v2, Lcom/google/android/location/collectionlib/ad;->a:J

    sub-long v8, v6, v16

    if-eqz v4, :cond_2

    iget-object v2, v4, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/Handler;

    move-object v14, v0

    new-instance v2, Lcom/google/android/location/collectionlib/cr;

    invoke-direct/range {v2 .. v12}, Lcom/google/android/location/collectionlib/cr;-><init>(Lcom/google/android/location/collectionlib/co;Lcom/google/android/location/f/ai;Landroid/hardware/Sensor;JJFFF)V

    invoke-virtual {v14, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {v13}, Lcom/google/android/location/collectionlib/y;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 466
    :catchall_0
    move-exception v2

    monitor-exit v18

    throw v2

    .line 471
    :cond_3
    return-void

    :cond_4
    move v6, v15

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 354
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v1, "Start reading buffer"

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/x;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 356
    sget-boolean v1, Lcom/google/android/location/j/a;->a:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_4

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/g/a/e/a;->a(Z)V

    .line 357
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/location/collectionlib/x;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/x;->d:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/collectionlib/x;->a(J)J

    move-result-wide v6

    .line 362
    iget-object v0, p0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v5, v0, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/x;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 364
    iget-object v1, p0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/collectionlib/z;

    .line 365
    if-eqz v1, :cond_6

    .line 366
    iget-object v1, v1, Lcom/google/android/location/collectionlib/z;->a:Lcom/google/android/location/collectionlib/ac;

    .line 367
    invoke-virtual {v1, v6, v7}, Lcom/google/android/location/collectionlib/ac;->a(J)I

    move-result v9

    .line 368
    if-ltz v9, :cond_5

    .line 369
    new-instance v0, Lcom/google/android/location/collectionlib/y;

    invoke-direct {v0, p0, v1, v9}, Lcom/google/android/location/collectionlib/y;-><init>(Lcom/google/android/location/collectionlib/x;Lcom/google/android/location/collectionlib/ac;I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_4
    move v0, v2

    .line 356
    goto :goto_0

    .line 371
    :cond_5
    :try_start_1
    sget-boolean v1, Lcom/google/android/location/j/a;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No data was collected for scanner type "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_6
    sget-boolean v1, Lcom/google/android/location/j/a;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/collectionlib/x;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Batch for scanner type "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " not enabled."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_8

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/y;

    invoke-direct {p0, v0}, Lcom/google/android/location/collectionlib/x;->a(Lcom/google/android/location/collectionlib/y;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/location/collectionlib/x;->c:Lcom/google/android/location/collectionlib/co;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/co;->a()V

    .line 379
    return-void

    .line 378
    :cond_8
    invoke-direct {p0, v4}, Lcom/google/android/location/collectionlib/x;->a(Ljava/util/List;)V

    goto :goto_2
.end method
