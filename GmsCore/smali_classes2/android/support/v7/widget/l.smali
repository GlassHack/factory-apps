.class final Landroid/support/v7/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:Ljava/util/ArrayList;

.field final c:Landroid/support/v7/widget/m;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field private f:Landroid/support/v4/f/o;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/m;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/l;-><init>(Landroid/support/v7/widget/m;B)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/m;B)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/f/p;

    invoke-direct {v0}, Landroid/support/v4/f/p;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->f:Landroid/support/v4/f/o;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->e:Z

    .line 75
    return-void
.end method

.method private a(III)Landroid/support/v7/widget/n;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/v7/widget/l;->f:Landroid/support/v4/f/o;

    invoke-interface {v0}, Landroid/support/v4/f/o;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 690
    if-nez v0, :cond_0

    .line 691
    new-instance v0, Landroid/support/v7/widget/n;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/widget/n;-><init>(III)V

    .line 697
    :goto_0
    return-object v0

    .line 693
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/n;->a:I

    .line 694
    iput p2, v0, Landroid/support/v7/widget/n;->b:I

    .line 695
    iput p3, v0, Landroid/support/v7/widget/n;->c:I

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/n;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 311
    iget v0, p1, Landroid/support/v7/widget/n;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/widget/n;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    iget v0, p1, Landroid/support/v7/widget/n;->b:I

    iget v2, p1, Landroid/support/v7/widget/n;->a:I

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/l;->b(II)I

    move-result v0

    move v2, v1

    move v3, v0

    move v0, v1

    .line 329
    :goto_0
    iget v4, p1, Landroid/support/v7/widget/n;->c:I

    if-ge v0, v4, :cond_5

    .line 330
    const/4 v4, -0x1

    .line 331
    iget v6, p1, Landroid/support/v7/widget/n;->a:I

    packed-switch v6, :pswitch_data_0

    .line 338
    :goto_1
    iget v6, p1, Landroid/support/v7/widget/n;->a:I

    invoke-direct {p0, v4, v6}, Landroid/support/v7/widget/l;->b(II)I

    move-result v6

    .line 343
    iget v4, p1, Landroid/support/v7/widget/n;->a:I

    packed-switch v4, :pswitch_data_1

    move v4, v5

    .line 351
    :goto_2
    if-eqz v4, :cond_4

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 329
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :pswitch_0
    iget v4, p1, Landroid/support/v7/widget/n;->b:I

    add-int/2addr v4, v0

    .line 334
    goto :goto_1

    .line 336
    :pswitch_1
    iget v4, p1, Landroid/support/v7/widget/n;->b:I

    goto :goto_1

    .line 345
    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    if-ne v6, v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_2

    .line 348
    :pswitch_3
    if-ne v6, v3, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 355
    :cond_4
    iget v4, p1, Landroid/support/v7/widget/n;->a:I

    invoke-direct {p0, v4, v3, v2}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v2

    .line 359
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/m;->a(Landroid/support/v7/widget/n;)V

    .line 360
    invoke-direct {p0, v2}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    move v2, v1

    move v3, v6

    .line 362
    goto :goto_3

    .line 365
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    .line 366
    if-lez v2, :cond_6

    .line 367
    iget v0, p1, Landroid/support/v7/widget/n;->a:I

    invoke-direct {p0, v0, v3, v2}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v0

    .line 371
    iget-object v1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/m;->a(Landroid/support/v7/widget/n;)V

    .line 372
    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    .line 382
    :cond_6
    return-void

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 343
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private b(II)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 385
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 386
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 388
    iget v2, v0, Landroid/support/v7/widget/n;->a:I

    if-ne v2, v6, :cond_9

    .line 390
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    if-ge v2, v3, :cond_1

    .line 391
    iget v3, v0, Landroid/support/v7/widget/n;->b:I

    .line 392
    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    .line 397
    :goto_1
    if-lt v1, v3, :cond_6

    if-gt v1, v2, :cond_6

    .line 399
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    if-ne v3, v2, :cond_3

    .line 400
    if-nez p2, :cond_2

    .line 401
    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/n;->c:I

    .line 406
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 386
    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 394
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    .line 395
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    goto :goto_1

    .line 402
    :cond_2
    if-ne p2, v5, :cond_0

    .line 403
    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/n;->c:I

    goto :goto_2

    .line 408
    :cond_3
    if-nez p2, :cond_5

    .line 409
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/n;->b:I

    .line 414
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 410
    :cond_5
    if-ne p2, v5, :cond_4

    .line 411
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/n;->b:I

    goto :goto_4

    .line 416
    :cond_6
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    if-ge v1, v2, :cond_8

    .line 418
    if-nez p2, :cond_7

    .line 419
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/n;->b:I

    .line 420
    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/n;->c:I

    move v0, v1

    goto :goto_3

    .line 421
    :cond_7
    if-ne p2, v5, :cond_8

    .line 422
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/n;->b:I

    .line 423
    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/n;->c:I

    :cond_8
    move v0, v1

    .line 426
    goto :goto_3

    .line 427
    :cond_9
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    if-gt v2, v1, :cond_b

    .line 428
    iget v2, v0, Landroid/support/v7/widget/n;->a:I

    if-nez v2, :cond_a

    .line 429
    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    sub-int v0, v1, v0

    goto :goto_3

    .line 430
    :cond_a
    iget v2, v0, Landroid/support/v7/widget/n;->a:I

    if-ne v2, v5, :cond_d

    .line 431
    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 434
    :cond_b
    if-nez p2, :cond_c

    .line 435
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/n;->b:I

    move v0, v1

    goto :goto_3

    .line 436
    :cond_c
    if-ne p2, v5, :cond_d

    .line 437
    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/n;->b:I

    :cond_d
    move v0, v1

    goto :goto_3

    .line 450
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_12

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 452
    iget v3, v0, Landroid/support/v7/widget/n;->a:I

    if-ne v3, v6, :cond_11

    .line 453
    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    if-gez v3, :cond_10

    .line 454
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    .line 450
    :cond_10
    :goto_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    .line 457
    :cond_11
    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    if-gtz v3, :cond_10

    .line 458
    iget-object v3, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    goto :goto_6

    .line 462
    :cond_12
    return v1
.end method

.method private b(Landroid/support/v7/widget/n;)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    return-void
.end method

.method private b(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 467
    :goto_0
    if-ge v3, v4, :cond_3

    .line 468
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 469
    iget v5, v0, Landroid/support/v7/widget/n;->a:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 470
    iget v0, v0, Landroid/support/v7/widget/n;->b:I

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 483
    :goto_1
    return v0

    .line 473
    :cond_0
    iget v5, v0, Landroid/support/v7/widget/n;->a:I

    if-nez v5, :cond_2

    .line 475
    iget v5, v0, Landroid/support/v7/widget/n;->b:I

    iget v6, v0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v5, v6

    .line 476
    iget v0, v0, Landroid/support/v7/widget/n;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 477
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/l;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 478
    goto :goto_1

    .line 476
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 467
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 483
    goto :goto_1
.end method

.method private c(Landroid/support/v7/widget/n;)V
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Landroid/support/v7/widget/l;->e:Z

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/l;->f:Landroid/support/v4/f/o;

    invoke-interface {v0, p1}, Landroid/support/v4/f/o;->a(Ljava/lang/Object;)Z

    .line 704
    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/l;->a(II)I

    move-result v0

    return v0
.end method

.method final a(II)I
    .locals 5

    .prologue
    .line 507
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 508
    :goto_0
    if-ge p2, v2, :cond_4

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 510
    iget v3, v0, Landroid/support/v7/widget/n;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 511
    iget v3, v0, Landroid/support/v7/widget/n;->b:I

    if-ne v3, v1, :cond_1

    .line 512
    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    .line 508
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 514
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/n;->b:I

    if-ge v3, v1, :cond_2

    .line 515
    add-int/lit8 v1, v1, -0x1

    .line 517
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    if-gt v0, v1, :cond_0

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 521
    :cond_3
    iget v3, v0, Landroid/support/v7/widget/n;->b:I

    if-gt v3, v1, :cond_0

    .line 522
    iget v3, v0, Landroid/support/v7/widget/n;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 523
    iget v3, v0, Landroid/support/v7/widget/n;->b:I

    iget v4, v0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 524
    const/4 v1, -0x1

    .line 532
    :cond_4
    return v1

    .line 526
    :cond_5
    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 527
    :cond_6
    iget v3, v0, Landroid/support/v7/widget/n;->a:I

    if-nez v3, :cond_0

    .line 528
    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method final a()V
    .locals 12

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_0
    if-ltz v5, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    iget v1, v0, Landroid/support/v7/widget/n;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    const/4 v4, -0x1

    add-int/lit8 v3, v5, 0x1

    :goto_1
    if-ge v3, v6, :cond_19

    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/n;

    iget v7, v1, Landroid/support/v7/widget/n;->a:I

    if-nez v7, :cond_1

    iget v7, v1, Landroid/support/v7/widget/n;->b:I

    if-gt v7, v2, :cond_1

    iget v1, v1, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v2, v1

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v7, v1, Landroid/support/v7/widget/n;->a:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    iget v7, v1, Landroid/support/v7/widget/n;->b:I

    if-gt v7, v2, :cond_4

    iget v7, v1, Landroid/support/v7/widget/n;->b:I

    iget v8, v1, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v7, v8

    if-le v7, v2, :cond_3

    move v1, v3

    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/n;->c:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/n;->a:I

    add-int/lit8 v0, v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_3
    iget v1, v1, Landroid/support/v7/widget/n;->c:I

    sub-int/2addr v2, v1

    goto :goto_2

    :cond_4
    iget v7, v1, Landroid/support/v7/widget/n;->a:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget v7, v1, Landroid/support/v7/widget/n;->b:I

    if-ne v2, v7, :cond_5

    iget v2, v1, Landroid/support/v7/widget/n;->c:I

    goto :goto_2

    :cond_5
    iget v7, v1, Landroid/support/v7/widget/n;->b:I

    if-le v2, v7, :cond_6

    add-int/lit8 v2, v2, -0x1

    :cond_6
    iget v1, v1, Landroid/support/v7/widget/n;->c:I

    if-lt v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 89
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 90
    const/4 v0, 0x0

    move v5, v0

    :goto_4
    if-ge v5, v7, :cond_18

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 92
    iget v1, v0, Landroid/support/v7/widget/n;->a:I

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    :cond_8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 94
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/widget/m;->d(II)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->b(Landroid/support/v7/widget/n;)V

    goto :goto_5

    .line 97
    :pswitch_1
    iget v8, v0, Landroid/support/v7/widget/n;->b:I

    const/4 v1, 0x0

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v3, v2

    const/4 v4, -0x1

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    move v6, v1

    :goto_6
    if-ge v2, v3, :cond_e

    const/4 v1, 0x0

    iget-object v9, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v9, v2}, Landroid/support/v7/widget/m;->a(I)Landroid/support/v7/widget/bx;

    move-result-object v9

    if-nez v9, :cond_9

    invoke-direct {p0, v2}, Landroid/support/v7/widget/l;->b(I)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_9
    if-nez v4, :cond_a

    const/4 v1, 0x1

    invoke-direct {p0, v1, v8, v6}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/widget/n;)V

    iget-object v4, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v9, v1, Landroid/support/v7/widget/n;->b:I

    iget v1, v1, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v4, v9, v1}, Landroid/support/v7/widget/m;->a(II)V

    const/4 v1, 0x1

    :cond_a
    const/4 v4, 0x1

    :goto_7
    if-eqz v1, :cond_d

    sub-int v1, v2, v6

    sub-int v2, v3, v6

    const/4 v3, 0x1

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v6, v3

    move v3, v2

    move v2, v1

    goto :goto_6

    :cond_b
    const/4 v9, 0x1

    if-ne v4, v9, :cond_c

    const/4 v1, 0x1

    invoke-direct {p0, v1, v8, v6}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v9, v1, Landroid/support/v7/widget/n;->b:I

    iget v10, v1, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v4, v9, v10}, Landroid/support/v7/widget/m;->b(II)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/l;->b(Landroid/support/v7/widget/n;)V

    const/4 v1, 0x1

    :cond_c
    const/4 v4, 0x0

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v6, 0x1

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto :goto_8

    :cond_e
    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    if-eq v6, v1, :cond_f

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v8, v6}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v0

    :cond_f
    if-nez v4, :cond_10

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/widget/n;)V

    iget-object v1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v1, v2, v0}, Landroid/support/v7/widget/m;->a(II)V

    goto/16 :goto_5

    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/widget/m;->b(II)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->b(Landroid/support/v7/widget/n;)V

    goto/16 :goto_5

    .line 100
    :pswitch_2
    iget v6, v0, Landroid/support/v7/widget/n;->b:I

    const/4 v4, 0x0

    iget v1, v0, Landroid/support/v7/widget/n;->b:I

    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    add-int v3, v1, v2

    const/4 v2, -0x1

    iget v1, v0, Landroid/support/v7/widget/n;->b:I

    move v11, v2

    move v2, v3

    move v3, v4

    move v4, v11

    :goto_9
    if-ge v1, v2, :cond_15

    iget-object v8, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/m;->a(I)Landroid/support/v7/widget/bx;

    move-result-object v8

    if-nez v8, :cond_11

    invoke-direct {p0, v1}, Landroid/support/v7/widget/l;->b(I)Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_11
    if-nez v4, :cond_12

    const/4 v4, 0x2

    invoke-direct {p0, v4, v6, v3}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/widget/n;)V

    iget-object v4, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v8, v3, Landroid/support/v7/widget/n;->b:I

    iget v9, v3, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v4, v8, v9}, Landroid/support/v7/widget/m;->c(II)V

    iget v4, v3, Landroid/support/v7/widget/n;->c:I

    sub-int/2addr v1, v4

    iget v3, v3, Landroid/support/v7/widget/n;->c:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :cond_12
    const/4 v4, 0x1

    move v11, v4

    move v4, v3

    move v3, v2

    move v2, v11

    :goto_a
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v11, v2

    move v2, v3

    move v3, v4

    move v4, v11

    goto :goto_9

    :cond_13
    const/4 v8, 0x1

    if-ne v4, v8, :cond_14

    const/4 v4, 0x2

    invoke-direct {p0, v4, v6, v3}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v8, v3, Landroid/support/v7/widget/n;->b:I

    iget v9, v3, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v4, v8, v9}, Landroid/support/v7/widget/m;->c(II)V

    invoke-direct {p0, v3}, Landroid/support/v7/widget/l;->b(Landroid/support/v7/widget/n;)V

    iget v4, v3, Landroid/support/v7/widget/n;->c:I

    sub-int/2addr v1, v4

    iget v3, v3, Landroid/support/v7/widget/n;->c:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :cond_14
    const/4 v4, 0x0

    move v11, v4

    move v4, v3

    move v3, v2

    move v2, v11

    goto :goto_a

    :cond_15
    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    if-eq v3, v1, :cond_16

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v6, v3}, Landroid/support/v7/widget/l;->a(III)Landroid/support/v7/widget/n;

    move-result-object v0

    :cond_16
    if-nez v4, :cond_17

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/support/v7/widget/n;)V

    :goto_b
    iget-object v1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v1, v2, v0}, Landroid/support/v7/widget/m;->c(II)V

    goto/16 :goto_5

    :cond_17
    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->b(Landroid/support/v7/widget/n;)V

    goto :goto_b

    .line 103
    :pswitch_3
    iget-object v1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/widget/m;->e(II)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->b(Landroid/support/v7/widget/n;)V

    goto/16 :goto_5

    .line 110
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    return-void

    :cond_19
    move v1, v4

    goto/16 :goto_3

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 707
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 708
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 709
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->c(Landroid/support/v7/widget/n;)V

    .line 708
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 711
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 712
    return-void
.end method

.method final b()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 189
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/m;->b(Landroid/support/v7/widget/n;)V

    .line 188
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/l;->a(Ljava/util/List;)V

    .line 192
    return-void
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 5

    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/support/v7/widget/l;->b()V

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 581
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 583
    iget v3, v0, Landroid/support/v7/widget/n;->a:I

    packed-switch v3, :pswitch_data_0

    .line 601
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/l;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 581
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 585
    :pswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/m;->b(Landroid/support/v7/widget/n;)V

    .line 586
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/m;->d(II)V

    goto :goto_1

    .line 589
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/m;->b(Landroid/support/v7/widget/n;)V

    .line 590
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/m;->a(II)V

    goto :goto_1

    .line 593
    :pswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/m;->b(Landroid/support/v7/widget/n;)V

    .line 594
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/m;->c(II)V

    goto :goto_1

    .line 597
    :pswitch_3
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/m;->b(Landroid/support/v7/widget/n;)V

    .line 598
    iget-object v3, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/m;

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    iget v0, v0, Landroid/support/v7/widget/n;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/m;->e(II)V

    goto :goto_1

    .line 605
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/l;->a(Ljava/util/List;)V

    .line 606
    return-void

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
