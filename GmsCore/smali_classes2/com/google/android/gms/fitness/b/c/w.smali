.class public final Lcom/google/android/gms/fitness/b/c/w;
.super Lcom/google/android/gms/fitness/b/c/ad;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/b/c/x;J)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/b/c/ad;-><init>(Lcom/google/android/gms/fitness/b/c/ae;J)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/b/c/x;JB)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/b/c/w;-><init>(Lcom/google/android/gms/fitness/b/c/x;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;Ljava/util/List;)V
    .locals 19

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c/af;

    .line 39
    iget-object v5, v2, Lcom/google/android/gms/fitness/b/c/af;->a:Lcom/google/android/gms/fitness/b/b/u;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/b/b/w;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 40
    iget-object v2, v2, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    move v4, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    const-wide v10, -0x3fa9800000000000L    # -90.0

    .line 44
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 45
    const-wide v6, -0x3f99800000000000L    # -180.0

    .line 46
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 48
    const/4 v5, 0x4

    if-lt v4, v5, :cond_8

    .line 55
    new-array v6, v4, [D

    .line 56
    new-array v10, v4, [D

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c/af;

    .line 59
    iget-object v2, v2, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c;

    .line 60
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v3

    float-to-double v12, v3

    aput-wide v12, v6, v5

    .line 61
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v10, v5

    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    goto :goto_2

    :cond_1
    move v3, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {v6}, Ljava/util/Arrays;->sort([D)V

    .line 66
    invoke-static {v10}, Ljava/util/Arrays;->sort([D)V

    .line 70
    int-to-double v2, v4

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 71
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    int-to-double v12, v4

    mul-double/2addr v8, v12

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    add-int/lit8 v3, v3, -0x1

    .line 73
    rem-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_4

    .line 76
    aget-wide v4, v6, v2

    add-int/lit8 v7, v2, 0x1

    aget-wide v8, v6, v7

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v4, v8

    .line 77
    aget-wide v4, v6, v3

    add-int/lit8 v7, v3, 0x1

    aget-wide v6, v6, v7

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v4, v6

    .line 78
    aget-wide v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v12, v10, v2

    add-double/2addr v4, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v12

    .line 79
    aget-wide v12, v10, v3

    add-int/lit8 v2, v3, 0x1

    aget-wide v2, v10, v2

    add-double/2addr v2, v12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v10

    .line 88
    :goto_3
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    sub-double v12, v6, v8

    mul-double/2addr v10, v12

    .line 89
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    sub-double v14, v2, v4

    mul-double/2addr v12, v14

    .line 90
    sub-double/2addr v8, v10

    .line 91
    add-double/2addr v6, v10

    .line 92
    sub-double/2addr v4, v12

    .line 93
    add-double/2addr v2, v12

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    .line 96
    :goto_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c/af;

    .line 97
    iget-object v2, v2, Lcom/google/android/gms/fitness/b/c/af;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/fitness/b/c;

    .line 98
    invoke-interface {v8}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v2

    float-to-double v4, v2

    .line 99
    invoke-interface {v8}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v2

    float-to-double v2, v2

    .line 100
    cmpl-double v6, v4, v16

    if-ltz v6, :cond_6

    cmpg-double v4, v4, v14

    if-gtz v4, :cond_6

    .line 101
    cmpl-double v4, v2, v12

    if-ltz v4, :cond_5

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_5

    .line 102
    new-instance v3, Lcom/google/android/gms/fitness/b/c/g;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v2}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v2}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/b/c/g;-><init>(JJLcom/google/android/gms/fitness/b/c;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 81
    :cond_4
    aget-wide v8, v6, v2

    .line 82
    aget-wide v6, v6, v3

    .line 83
    aget-wide v4, v10, v2

    .line 84
    aget-wide v2, v10, v3

    goto/16 :goto_3

    .line 105
    :cond_5
    const-string v2, "Dropping outlier "

    invoke-static {v2, v8}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_5

    .line 108
    :cond_6
    const-string v2, "Dropping outlier "

    invoke-static {v2, v8}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_5

    .line 112
    :cond_7
    return-void

    :cond_8
    move-wide v12, v6

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide v10, v2

    goto/16 :goto_4
.end method
