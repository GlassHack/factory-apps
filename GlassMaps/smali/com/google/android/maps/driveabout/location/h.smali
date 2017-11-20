.class final Lcom/google/android/maps/driveabout/location/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:D

.field b:D

.field c:D

.field d:Lcom/google/android/maps/driveabout/model/ab;

.field e:D

.field f:Z

.field g:D

.field h:D

.field i:Z

.field j:D

.field k:D

.field final l:Lcom/google/android/maps/driveabout/nav/w;

.field final m:Lcom/google/android/maps/driveabout/util/l;


# direct methods
.method constructor <init>(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/l;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 9

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p3, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/l;

    .line 616
    iput-object p4, p0, Lcom/google/android/maps/driveabout/location/h;->l:Lcom/google/android/maps/driveabout/nav/w;

    .line 617
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    .line 618
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->b:D

    .line 621
    if-nez p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->c:D

    .line 625
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v3, v0

    .line 631
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 630
    invoke-static {v0, v1, v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/model/ab;

    .line 632
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/l;

    .line 633
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->f()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->e:D

    .line 636
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    .line 638
    if-nez p2, :cond_2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    move-wide v5, v0

    .line 640
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    .line 641
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    double-to-float v5, v5

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    double-to-float v6, v6

    .line 642
    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/model/ae;->a(FF)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/l;

    .line 644
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/util/l;->g()I

    move-result v7

    int-to-double v7, v7

    .line 640
    invoke-static/range {v0 .. v8}, Lcom/google/android/maps/driveabout/location/h;->a(ZDDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    .line 646
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    :goto_3
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    .line 673
    :goto_4
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 674
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->c:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    .line 675
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 676
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 675
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    .line 689
    :goto_5
    return-void

    .line 621
    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->b:D

    iget-wide v2, p2, Lcom/google/android/maps/driveabout/location/h;->b:D

    sub-double/2addr v0, v2

    goto/16 :goto_0

    .line 627
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->a()F

    move-result v0

    float-to-double v3, v0

    goto/16 :goto_1

    .line 638
    :cond_2
    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->g:D

    move-wide v5, v0

    goto :goto_2

    .line 646
    :cond_3
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_3

    .line 649
    :cond_4
    if-eqz p2, :cond_6

    iget-boolean v0, p2, Lcom/google/android/maps/driveabout/location/h;->f:Z

    if-eqz v0, :cond_6

    .line 654
    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->g:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    .line 655
    iget-object v0, p2, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/model/ab;

    .line 656
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    div-double/2addr v0, v2

    .line 658
    iget-wide v2, p2, Lcom/google/android/maps/driveabout/location/h;->h:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    .line 661
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    :goto_6
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    goto :goto_4

    .line 661
    :cond_5
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_6

    .line 665
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    goto :goto_4

    .line 678
    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p2, Lcom/google/android/maps/driveabout/location/h;->i:Z

    if-eqz v0, :cond_8

    .line 682
    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->j:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    .line 683
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iget-wide v2, p2, Lcom/google/android/maps/driveabout/location/h;->k:D

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    goto :goto_5

    .line 687
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    goto :goto_5
.end method

.method private static a(ZDDDD)D
    .locals 10

    .prologue
    .line 799
    const-wide v0, 0x4046800000000000L    # 45.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    neg-double v4, p3

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr v4, v6

    .line 800
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    .line 804
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double v4, p5, v0

    .line 808
    const-wide/16 v0, 0x0

    .line 809
    if-eqz p0, :cond_0

    .line 810
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    neg-double v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 811
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 813
    :cond_0
    add-double/2addr v2, v4

    add-double/2addr v0, v2

    add-double v0, v0, p7

    return-wide v0
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/model/ab;D)D
    .locals 6

    .prologue
    .line 709
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/l;

    .line 710
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/l;->f()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 712
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->c()D

    move-result-wide v2

    double-to-float v2, v2

    double-to-float v3, p3

    .line 711
    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/model/ae;->a(FF)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/l;

    .line 713
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/l;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 714
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method final a()D
    .locals 2

    .prologue
    .line 853
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    return-wide v0
.end method

.method final a(D)D
    .locals 4

    .prologue
    .line 765
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    div-double/2addr v0, v2

    .line 766
    neg-double v2, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method final a(Lcom/google/android/maps/driveabout/model/ab;DLcom/google/android/maps/driveabout/model/ao;)D
    .locals 10

    .prologue
    const-wide v8, 0x400ccccccccccccdL    # 3.6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 722
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    float-to-double v0, v0

    .line 723
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    div-double v2, v0, v2

    .line 727
    const-wide v0, 0x3ffccccccccccccdL    # 1.8

    .line 728
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/model/ao;->i()Z

    move-result v4

    if-nez v4, :cond_1

    .line 729
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/model/ao;->g()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    .line 730
    add-double/2addr v0, v8

    .line 732
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/model/ao;->g()I

    move-result v4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_1

    .line 733
    add-double/2addr v0, v8

    .line 736
    :cond_1
    const-wide/16 v4, 0x0

    sub-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 740
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->e:D

    div-double/2addr v0, v2

    .line 741
    neg-double v2, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 746
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    if-eqz v0, :cond_2

    .line 747
    double-to-float v0, p2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    double-to-float v1, v4

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ae;->a(FF)F

    move-result v0

    .line 749
    float-to-double v0, v0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    div-double/2addr v0, v4

    .line 750
    neg-double v4, v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 755
    :goto_0
    mul-double/2addr v0, v2

    return-wide v0

    .line 752
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/model/ab;D)D
    .locals 2

    .prologue
    .line 698
    .line 699
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/location/h;->b(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/model/ab;D)D

    move-result-wide v0

    .line 698
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method final a(Lcom/google/android/maps/driveabout/model/ab;D)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 828
    const/4 v4, 0x0

    .line 829
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/h;->l:Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v1, :cond_0

    .line 830
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    mul-double/2addr v5, v7

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/l;

    .line 832
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/l;->f()I

    move-result v3

    int-to-double v7, v3

    add-double/2addr v5, v7

    mul-double/2addr v1, v5

    .line 834
    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/h;->l:Lcom/google/android/maps/driveabout/nav/w;

    .line 835
    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;DZ)[Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v6

    .line 839
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v5, v0

    .line 840
    :goto_0
    array-length v0, v6

    if-ge v5, v0, :cond_0

    .line 841
    aget-object v0, v6, v5

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/location/h;->b(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/model/ab;D)D

    move-result-wide v0

    .line 843
    cmpl-double v7, v0, v2

    if-lez v7, :cond_1

    .line 845
    aget-object v2, v6, v5

    .line 840
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move-wide v2, v0

    goto :goto_0

    .line 849
    :cond_0
    return-object v4

    :cond_1
    move-wide v0, v2

    move-object v2, v4

    goto :goto_1
.end method

.method final b(D)D
    .locals 4

    .prologue
    .line 774
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/l;

    .line 775
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->h()D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 858
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/h;->c:D

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->e:D

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    if-eqz v0, :cond_0

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    .line 863
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    .line 865
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v7, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    iget-wide v9, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, 0xf1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "LocationModel[mTimeSinceLastUpdate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPositionMean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPositionStdMeters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDistanceMeanMeters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDistanceStdMeters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingMeanDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingStdDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 863
    :cond_0
    const-string v0, "--"

    goto/16 :goto_0

    .line 865
    :cond_1
    const-string v0, "--"

    goto :goto_1
.end method
