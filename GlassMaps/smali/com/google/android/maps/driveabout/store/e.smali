.class public abstract Lcom/google/android/maps/driveabout/store/e;
.super Lcom/google/android/maps/driveabout/store/m;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:[[B

.field final synthetic c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 390
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    .line 391
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/m;-><init>(I)V

    .line 392
    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->b:[[B

    .line 393
    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 511
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 512
    sget-object v1, Lcom/google/j/b/a/b/aa;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/InputStream;Lcom/google/googlenav/common/io/b/a;)I

    move-result v1

    .line 515
    int-to-long v1, v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/googlenav/common/e/a;->a(JJ)V

    .line 517
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/e;->a:I

    .line 518
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 519
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received tile response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->b()I

    move-result v5

    move v0, v1

    .line 530
    :goto_0
    new-instance v4, Lcom/google/googlenav/common/io/b/a;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 531
    sget-object v2, Lcom/google/j/b/a/b/aa;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/InputStream;Lcom/google/googlenav/common/io/b/a;)I

    move-result v2

    .line 534
    if-ne v2, v3, :cond_1

    .line 584
    if-eq v0, v5, :cond_0

    .line 585
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tiles, expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_0
    return-void

    .line 538
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 539
    invoke-virtual {v2, v11}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    .line 540
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v7

    .line 541
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v9}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->e(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v9

    sub-int/2addr v8, v9

    .line 542
    invoke-virtual {v2, v12}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 543
    invoke-virtual {v2, v12}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 546
    :goto_1
    invoke-virtual {v4, v11}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v9

    .line 547
    if-eqz v9, :cond_4

    array-length v4, v9

    .line 554
    :goto_2
    invoke-virtual {p0, v4, v2}, Lcom/google/android/maps/driveabout/store/e;->a(II)[B

    move-result-object v2

    .line 556
    if-eqz v9, :cond_2

    .line 557
    array-length v10, v2

    sub-int/2addr v10, v4

    invoke-static {v9, v1, v2, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    :cond_2
    if-lt v0, v5, :cond_5

    .line 581
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 582
    goto :goto_0

    :cond_3
    move v2, v3

    .line 543
    goto :goto_1

    :cond_4
    move v4, v1

    .line 547
    goto :goto_2

    .line 563
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v9

    .line 564
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v10

    if-ne v8, v10, :cond_6

    .line 565
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v8

    if-ne v6, v8, :cond_6

    .line 566
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v6

    if-eq v7, v6, :cond_7

    .line 567
    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Received wrong tile"

    invoke-static {v2, v4}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 568
    :cond_7
    if-nez v4, :cond_8

    .line 576
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "COMPACT-0 tile at coords: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 578
    :cond_8
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/e;->b:[[B

    aput-object v2, v4, v0

    goto :goto_3
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 476
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->A()Z

    move-result v0

    return v0
.end method

.method private e()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;
    .locals 5

    .prologue
    .line 485
    sget-object v1, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    .line 487
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->b()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 488
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/p;->b()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v2

    .line 489
    sget-object v3, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    if-eq v1, v3, :cond_0

    .line 490
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    .line 487
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_2
    return-object v1
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/google/android/maps/driveabout/store/e;->a:I

    return v0
.end method

.method protected final a(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 504
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->b()I

    move-result v2

    if-nez v2, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected a(II)[B
    .locals 1

    .prologue
    .line 498
    new-array v0, p1, [B

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 405
    const/16 v0, 0x6c

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 2

    .prologue
    .line 592
    invoke-static {p1}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    .line 595
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/e;->a(Ljava/io/InputStream;)V

    .line 596
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/e;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 601
    const/4 v0, 0x1

    return v0

    .line 598
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 410
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/aa;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 412
    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/aa;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 415
    invoke-virtual {v3, v9, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 416
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 417
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->b(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v0

    invoke-virtual {v2, v11, v0}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 418
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/e;->e()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 420
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->c(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    invoke-virtual {v2, v10, v0}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->d(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v2, v8, v10}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    .line 429
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v2, v8, v1}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    .line 434
    :cond_2
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    invoke-virtual {v2, v8, v11}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    .line 439
    :cond_3
    invoke-static {}, Lcom/google/android/maps/driveabout/store/e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    invoke-virtual {v2, v8, v8}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    .line 444
    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/e;->e()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v0

    sget-object v4, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    if-eq v0, v4, :cond_5

    .line 445
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/e;->e()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 448
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->b()I

    move-result v2

    move v0, v1

    .line 449
    :goto_1
    if-ge v0, v2, :cond_8

    .line 450
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v4

    .line 452
    new-instance v5, Lcom/google/googlenav/common/io/b/a;

    sget-object v6, Lcom/google/j/b/a/b/aa;->m:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v5, v6}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 453
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 454
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 455
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v7}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->e(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v11, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 456
    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    iget-object v6, v6, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    iget v6, v6, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mRequestType:I

    invoke-virtual {v5, v9, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 457
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    iget-object v7, v7, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    iget v7, v7, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mTileVariant:I

    invoke-virtual {v5, v6, v7}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 458
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->d()Lcom/google/android/maps/driveabout/model/k;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 459
    const/4 v6, 0x6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->d()Lcom/google/android/maps/driveabout/model/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/k;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 461
    :cond_6
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 464
    const/16 v4, 0x8

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/p;->e()I

    move-result v1

    invoke-virtual {v5, v4, v1}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 466
    :cond_7
    const/16 v1, 0x9

    invoke-virtual {v3, v1, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    :cond_8
    invoke-static {p1, v3}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    .line 470
    return-void
.end method
