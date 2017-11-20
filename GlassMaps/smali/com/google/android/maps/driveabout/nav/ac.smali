.class public final Lcom/google/android/maps/driveabout/nav/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[F

.field private static final c:[F


# instance fields
.field a:D

.field private final d:Lcom/google/android/maps/driveabout/nav/o;

.field private e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private f:D

.field private g:D

.field private h:Lcom/google/android/maps/driveabout/nav/aa;

.field private i:[Lcom/google/android/maps/driveabout/nav/i;

.field private j:I

.field private k:Z

.field private l:D

.field private volatile m:Lcom/google/android/maps/driveabout/nav/p;

.field private n:D

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    .line 123
    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/maps/driveabout/nav/ac;->c:[F

    .line 126
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    aput v4, v0, v5

    .line 127
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    const/high16 v1, 0x40400000    # 3.0f

    aput v1, v0, v6

    .line 128
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    const/high16 v1, 0x40d00000    # 6.5f

    aput v1, v0, v7

    .line 129
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    const/4 v1, 0x3

    const/high16 v2, 0x41f00000    # 30.0f

    aput v2, v0, v1

    .line 130
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 131
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->c:[F

    aput v3, v0, v5

    .line 132
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->c:[F

    const v1, 0x3f333333    # 0.7f

    aput v1, v0, v6

    .line 134
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->c:[F

    const v1, 0x3ecccccd    # 0.4f

    aput v1, v0, v7

    .line 135
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->c:[F

    const/4 v1, 0x3

    const v2, 0x3e19999a    # 0.15f

    aput v2, v0, v1

    .line 137
    sget-object v0, Lcom/google/android/maps/driveabout/nav/ac;->c:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 138
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/nav/o;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    .line 166
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    .line 195
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->l:D

    .line 207
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->n:D

    .line 225
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    .line 226
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    .line 227
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;I)V

    .line 229
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/i;)D
    .locals 4

    .prologue
    .line 957
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->b(Lcom/google/android/maps/driveabout/nav/ah;)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->b()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/aa;D[D)D
    .locals 13

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 485
    :cond_0
    const-wide/16 v0, 0x0

    .line 528
    :goto_0
    return-wide v0

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->q()Ljava/util/Collection;

    move-result-object v0

    .line 488
    if-nez v0, :cond_2

    .line 489
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 493
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 494
    const/4 v1, 0x0

    .line 495
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v3

    .line 496
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 497
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ab;

    .line 498
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/nav/ab;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    :goto_1
    if-nez v0, :cond_4

    .line 504
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 506
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v5

    .line 507
    const-wide/16 v1, 0x0

    .line 508
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v6

    .line 509
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/util/l;->r()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-double v6, v6

    mul-double/2addr v6, p2

    .line 512
    :cond_5
    :goto_2
    cmpg-double v8, v1, v6

    if-gez v8, :cond_7

    .line 513
    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v8

    float-to-double v8, v8

    .line 514
    add-double/2addr v1, v8

    .line 515
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/nav/ab;->a(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 516
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v10

    aget-wide v11, p4, v10

    add-double/2addr v8, v11

    aput-wide v8, p4, v10

    .line 518
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 519
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/nav/ab;->a(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 520
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 521
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ab;

    goto :goto_2

    :cond_7
    move-wide v0, v1

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)I
    .locals 3

    .prologue
    .line 424
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->b(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v1

    .line 426
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/aa;D)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/aa;D)I
    .locals 5

    .prologue
    .line 431
    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 433
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/aa;D[D)D

    move-result-wide v1

    .line 434
    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p2, p3}, Lcom/google/android/maps/driveabout/nav/ac;->a([DD)I

    move-result v0

    goto :goto_0
.end method

.method private static a([DD)I
    .locals 13

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x4

    .line 442
    move v0, v4

    move-wide v5, v2

    move-wide v7, v2

    .line 445
    :goto_0
    if-gt v0, v1, :cond_0

    .line 446
    aget-wide v9, p0, v0

    sget-object v11, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    aget v11, v11, v1

    sget-object v12, Lcom/google/android/maps/driveabout/nav/ac;->b:[F

    aget v12, v12, v0

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    .line 448
    aget-wide v9, p0, v0

    add-double/2addr v5, v9

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    div-double/2addr v7, v5

    .line 455
    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, p1

    .line 457
    const/4 v0, 0x1

    .line 458
    :goto_1
    if-ge v0, v1, :cond_2

    .line 459
    aget-wide v11, p0, v0

    add-double/2addr v2, v11

    .line 460
    cmpl-double v11, v2, v9

    if-lez v11, :cond_1

    sget-object v11, Lcom/google/android/maps/driveabout/nav/ac;->c:[F

    aget v11, v11, v0

    float-to-double v11, v11

    cmpl-double v11, v7, v11

    if-lez v11, :cond_1

    .line 471
    :goto_2
    return v0

    .line 458
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_2
    aget-wide v2, p0, v4

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v4, v5, v7

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    move v0, v1

    .line 469
    goto :goto_2

    .line 471
    :cond_3
    const/4 v0, 0x5

    goto :goto_2
.end method

.method private a(D)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/nav/ac;->c(D)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    .line 703
    if-eq v0, v1, :cond_2

    .line 706
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 707
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/nav/ac;->d(D)V

    .line 709
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 710
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->c()V

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    .line 714
    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    .line 717
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 718
    iget v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    goto :goto_0

    .line 720
    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    if-le v0, v2, :cond_4

    .line 721
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->k:Z

    .line 725
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 726
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/i;)D

    move-result-wide v1

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_4

    .line 727
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/nav/ac;->c(Lcom/google/android/maps/driveabout/nav/ah;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 728
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    double-to-int v2, v2

    sub-int/2addr v1, v2

    .line 729
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/i;I)V

    .line 734
    :cond_4
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 735
    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/nav/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 736
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->b()V

    .line 738
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->i()V

    .line 739
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->e()V

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 744
    :goto_1
    return-void

    .line 742
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/nav/ac;->b(D)V

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->e(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 310
    :cond_0
    return-void
.end method

.method private a([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;I)V
    .locals 12

    .prologue
    .line 1000
    const/4 v11, 0x0

    .line 1001
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->h()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v11

    .line 1004
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 1007
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/nav/p;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/nav/p;-><init>([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;IIIIZIZLcom/google/android/maps/driveabout/nav/w;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    .line 1050
    :goto_0
    return-void

    .line 1011
    :cond_2
    aget-object v2, p1, p2

    .line 1015
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v0

    .line 1014
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/nav/w;->c(I)D

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    sub-double/2addr v0, v3

    double-to-int v5, v0

    .line 1018
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->b(D)I

    move-result v7

    .line 1021
    int-to-float v1, v5

    .line 1022
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1023
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1025
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1029
    :cond_3
    const/4 v4, -0x1

    .line 1030
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    if-eqz v0, :cond_4

    .line 1031
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v4

    .line 1035
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 1036
    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    const/4 v8, 0x1

    .line 1041
    :goto_2
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1042
    aget-object v11, p1, p2

    .line 1045
    :cond_5
    new-instance v0, Lcom/google/android/maps/driveabout/nav/p;

    float-to-int v6, v1

    .line 1048
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->f()Z

    move-result v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/nav/p;-><init>([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;IIIIZIZLcom/google/android/maps/driveabout/nav/w;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    goto :goto_0

    .line 1036
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private a(DD)Z
    .locals 4

    .prologue
    .line 919
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/nav/ac;->b(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    const/4 v2, 0x0

    .line 539
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->g()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 584
    :goto_0
    return v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    .line 545
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->i()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 551
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->n:D

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    div-double/2addr v0, v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v0, v4

    .line 556
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    :cond_1
    add-double/2addr v0, v6

    .line 559
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->i()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/model/m;)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v0, v4, v0

    if-gez v0, :cond_3

    move v0, v2

    .line 560
    goto :goto_0

    .line 564
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 567
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v2

    .line 568
    goto :goto_0

    .line 573
    :cond_4
    if-eqz v3, :cond_5

    .line 574
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    mul-double/2addr v0, v6

    .line 576
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v3

    .line 578
    if-eqz v3, :cond_5

    .line 579
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v3

    cmpg-double v0, v3, v0

    if-gtz v0, :cond_5

    move v0, v2

    .line 580
    goto :goto_0

    .line 584
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/ah;D)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 819
    if-nez p1, :cond_0

    .line 837
    :goto_0
    return v3

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v4

    .line 831
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 832
    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 833
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v5, v4, :cond_3

    .line 834
    cmpl-double v0, p2, v0

    if-ltz v0, :cond_2

    move v0, v2

    :goto_2
    move v3, v0

    goto :goto_0

    .line 832
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->b(Lcom/google/android/maps/driveabout/nav/ah;)D

    move-result-wide v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 834
    goto :goto_2

    .line 836
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->b(Lcom/google/android/maps/driveabout/nav/ah;)D

    move-result-wide v4

    .line 837
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_4

    cmpl-double v0, v4, p2

    if-lez v0, :cond_4

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;)[Lcom/google/android/maps/driveabout/nav/i;
    .locals 3

    .prologue
    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 622
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v2

    .line 623
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/i;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/i;

    return-object v0
.end method

.method private b(DD)D
    .locals 9

    .prologue
    .line 928
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    if-nez v0, :cond_0

    .line 929
    const-wide/16 v0, 0x0

    .line 948
    :goto_0
    return-wide v0

    .line 931
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 932
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    goto :goto_0

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    aget-object v0, v0, v1

    .line 935
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/i;)D

    move-result-wide v1

    .line 936
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->d()I

    move-result v3

    int-to-double v3, v3

    .line 937
    iget-wide v5, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    mul-double/2addr v5, p3

    .line 938
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->c()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    .line 939
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 941
    sub-double v0, v1, v3

    .line 942
    sub-double/2addr v0, p1

    .line 943
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    .line 944
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 945
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_3

    .line 946
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    mul-double/2addr v2, p3

    div-double/2addr v0, v2

    goto :goto_0

    .line 948
    :cond_3
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/ah;)D
    .locals 4

    .prologue
    .line 845
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v0

    if-nez v0, :cond_0

    .line 846
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->d(Lcom/google/android/maps/driveabout/nav/ah;)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 849
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method private static b(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 1

    .prologue
    .line 687
    instance-of v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 688
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i()Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 7

    .prologue
    .line 664
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v1

    .line 665
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ac;->b(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->a()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 678
    :goto_0
    return-object v0

    .line 674
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 675
    const-wide v3, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    goto :goto_0
.end method

.method private b(D)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 750
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->k:Z

    if-eqz v0, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    aget-object v0, v0, v1

    .line 757
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v1

    if-eqz v1, :cond_2

    .line 760
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/nav/o;->b(Lcom/google/android/maps/driveabout/nav/i;I)V

    .line 761
    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/nav/ac;->k:Z

    goto :goto_0

    .line 763
    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    .line 769
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/maps/driveabout/nav/ac;->b(DD)D

    move-result-wide v3

    .line 771
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/nav/ac;->c(Lcom/google/android/maps/driveabout/nav/ah;)D

    move-result-wide v5

    .line 773
    iget-wide v7, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    mul-double/2addr v1, v3

    add-double/2addr v1, v7

    sub-double v1, v5, v1

    .line 775
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    .line 776
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    double-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/maps/driveabout/nav/o;->b(Lcom/google/android/maps/driveabout/nav/i;I)V

    .line 778
    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/nav/ac;->k:Z

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    .line 986
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->l()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 985
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;I)V

    .line 988
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/nav/ah;)D
    .locals 2

    .prologue
    .line 857
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v0

    if-nez v0, :cond_0

    .line 858
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->d(Lcom/google/android/maps/driveabout/nav/ah;)D

    move-result-wide v0

    .line 861
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->c(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method private c(D)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 4

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 791
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    :goto_0
    return-object v0

    .line 796
    :cond_0
    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    .line 804
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 805
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    .line 806
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;D)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 807
    goto :goto_0

    .line 804
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 810
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/google/android/maps/driveabout/nav/ah;)D
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->o:Z

    if-eqz v1, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 885
    const/high16 v0, 0x41a00000    # 20.0f

    .line 886
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 885
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    .line 888
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->l:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->l:D

    sub-double/2addr v0, v2

    const-wide v2, 0x407f400000000000L    # 500.0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->l:D

    .line 409
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->b()V

    goto :goto_0
.end method

.method private d(D)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 899
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    .line 900
    iput v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    :goto_0
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 902
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/i;)D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-lez v1, :cond_2

    .line 907
    :cond_0
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    if-eq v0, v1, :cond_1

    .line 908
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->k:Z

    .line 910
    :cond_1
    return-void

    .line 901
    :cond_2
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    goto :goto_0
.end method

.method private e()I
    .locals 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/aa;D)I

    move-result v0

    return v0
.end method

.method private e(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    .line 975
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->l()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    .line 976
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/p;->j()I

    move-result v2

    .line 974
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;I)V

    .line 977
    return-void
.end method

.method private f()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 591
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v2, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v1

    .line 595
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 596
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v2

    .line 597
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->s()D

    move-result-wide v2

    .line 598
    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k()D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 602
    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    .line 604
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    div-double/2addr v2, v4

    .line 605
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 606
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getAccuracy()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    .line 605
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 607
    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private g()V
    .locals 8

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 635
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    .line 639
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ac;->b(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    .line 641
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->a()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 642
    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    .line 649
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    .line 651
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/nav/w;->c(I)D

    move-result-wide v2

    .line 652
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    .line 653
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    .line 654
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->n:D

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->n:D

    .line 659
    :goto_1
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 645
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 646
    const-wide v2, 0x40c3880000000000L    # 10000.0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->a:D

    mul-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    goto :goto_0

    .line 656
    :cond_1
    iput-wide v6, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    .line 657
    iput-wide v6, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    goto :goto_1
.end method

.method private h()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->e(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 966
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/nav/p;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    return-object v0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 7

    .prologue
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 326
    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 333
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 334
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    .line 335
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->i()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    .line 336
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->i()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/model/m;)F

    move-result v0

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    move v0, v1

    .line 343
    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->g()V

    .line 344
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->f()Z

    move-result v3

    .line 345
    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {p0, v4}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->k:Z

    .line 349
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    .line 350
    iput-wide v5, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    .line 351
    iput-wide v5, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    move v0, v1

    .line 357
    :cond_0
    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v4

    .line 367
    const/16 v0, 0x64

    .line 368
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 369
    const/16 v0, 0xa

    .line 374
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/model/m;)F

    move-result v5

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_7

    .line 377
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 376
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/maps/driveabout/nav/ac;->a(D)V

    .line 384
    :goto_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 387
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a(D)V

    .line 390
    :cond_3
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->h()V

    .line 393
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 394
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->d()V

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->d()V

    .line 397
    return-void

    .line 370
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 371
    const/16 v0, 0x1e

    goto :goto_1

    .line 381
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->o:Z

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/w;IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 243
    iput-object v6, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    .line 244
    iput-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    .line 245
    iput-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    .line 246
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->l:D

    .line 247
    iput v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    .line 248
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->k:Z

    .line 249
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->n:D

    .line 250
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->o:Z

    .line 253
    invoke-direct {p0, p1, p2, v6, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;I)V

    .line 255
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/nav/ac;->c(D)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->i()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->i()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->i()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v4

    .line 262
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 264
    invoke-static {v4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 263
    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v1

    float-to-double v4, v1

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/nav/ac;->n:D

    .line 268
    :cond_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/w;)[Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    .line 271
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->g()V

    .line 273
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/nav/ac;->c(D)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 274
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ac;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(I)Z

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->d:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->a()V

    .line 279
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 280
    if-eqz p3, :cond_3

    .line 284
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 285
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    .line 288
    :goto_1
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 289
    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->j:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 250
    goto/16 :goto_0

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ac;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v0

    if-nez v0, :cond_5

    .line 294
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/nav/ac;->a(D)V

    .line 299
    :cond_4
    :goto_2
    return-void

    .line 297
    :cond_5
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/nav/ac;->d(D)V

    goto :goto_2

    :cond_6
    move-wide v0, v2

    goto :goto_1
.end method

.method final a(I)Z
    .locals 4

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->j()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1059
    const-string v1, "RouteGuider"

    const-string v2, "Changing traffic status to: "

    sget-object v0, Lcom/google/android/maps/driveabout/nav/w;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->b(I)V

    .line 1062
    const/4 v0, 0x1

    .line 1064
    :goto_1
    return v0

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->m:Lcom/google/android/maps/driveabout/nav/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/4 v2, 0x0

    .line 1071
    iput-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->h:Lcom/google/android/maps/driveabout/nav/aa;

    .line 1072
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->g:D

    .line 1073
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->f:D

    .line 1074
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/ac;->l:D

    .line 1075
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;I)V

    .line 1076
    iput-object v2, p0, Lcom/google/android/maps/driveabout/nav/ac;->i:[Lcom/google/android/maps/driveabout/nav/i;

    .line 1077
    return-void
.end method
