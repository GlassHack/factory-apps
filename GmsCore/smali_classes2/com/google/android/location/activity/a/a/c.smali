.class public final Lcom/google/android/location/activity/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([D)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 115
    array-length v0, p0

    if-nez v0, :cond_0

    .line 116
    const-wide/16 v0, 0x0

    .line 128
    :goto_0
    return-wide v0

    .line 118
    :cond_0
    aget-wide v4, p0, v1

    .line 119
    aget-wide v2, p0, v1

    .line 120
    const/4 v0, 0x1

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 121
    aget-wide v6, p0, v0

    cmpl-double v1, v6, v4

    if-lez v1, :cond_1

    .line 122
    aget-wide v4, p0, v0

    .line 124
    :cond_1
    aget-wide v6, p0, v0

    cmpg-double v1, v6, v2

    if-gez v1, :cond_2

    .line 125
    aget-wide v2, p0, v0

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_3
    sub-double v0, v4, v2

    goto :goto_0
.end method

.method private static a([DD)D
    .locals 7

    .prologue
    .line 137
    const-wide/16 v2, 0x0

    .line 138
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    .line 139
    sub-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/location/activity/a/a/d;
    .locals 34

    .prologue
    .line 25
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/location/activity/a/y;->a(Ljava/util/List;D)[[D

    move-result-object v5

    .line 26
    const/4 v2, 0x0

    aget-object v3, v5, v2

    .line 27
    const/4 v2, 0x1

    aget-object v4, v5, v2

    .line 28
    const/4 v2, 0x2

    aget-object v6, v5, v2

    .line 29
    array-length v7, v3

    .line 32
    new-array v8, v7, [D

    .line 33
    new-array v9, v7, [D

    .line 34
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    .line 35
    aget-wide v10, v3, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    aget-wide v12, v4, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    aget-wide v12, v6, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    aput-wide v10, v8, v2

    .line 36
    aget-wide v10, v3, v2

    aget-wide v12, v3, v2

    mul-double/2addr v10, v12

    aget-wide v12, v4, v2

    aget-wide v14, v4, v2

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aget-wide v12, v6, v2

    aget-wide v14, v6, v2

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    aput-wide v10, v9, v2

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance v7, Lcom/google/android/location/activity/a/a/d;

    invoke-direct {v7}, Lcom/google/android/location/activity/a/a/d;-><init>()V

    .line 40
    invoke-static {v3}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v10

    .line 41
    invoke-static {v4}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v12

    .line 42
    invoke-static {v6}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v14

    .line 43
    invoke-static {v8}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v16

    .line 44
    invoke-static {v9}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v18

    .line 45
    double-to-float v2, v10

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->a:F

    .line 46
    double-to-float v2, v12

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->b:F

    .line 47
    double-to-float v2, v14

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->c:F

    .line 48
    move-wide/from16 v0, v16

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->d:F

    .line 49
    move-wide/from16 v0, v18

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->e:F

    .line 52
    invoke-static {v3}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v20

    mul-double v22, v10, v10

    sub-double v20, v20, v22

    .line 53
    invoke-static {v4}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v22

    mul-double v24, v12, v12

    sub-double v22, v22, v24

    .line 54
    invoke-static {v6}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v24

    mul-double v26, v14, v14

    sub-double v24, v24, v26

    .line 55
    invoke-static {v9}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v26

    mul-double v28, v18, v18

    sub-double v26, v26, v28

    .line 56
    const-wide v28, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v26, v28

    if-gez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->G:F

    .line 57
    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v26, v20

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->H:F

    .line 58
    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v26, v20

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->I:F

    .line 61
    invoke-static {v3, v10, v11}, Lcom/google/android/location/activity/a/a/c;->a([DD)D

    move-result-wide v20

    .line 62
    invoke-static {v4, v12, v13}, Lcom/google/android/location/activity/a/a/c;->a([DD)D

    move-result-wide v22

    .line 63
    invoke-static {v6, v14, v15}, Lcom/google/android/location/activity/a/a/c;->a([DD)D

    move-result-wide v24

    .line 64
    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1}, Lcom/google/android/location/activity/a/a/c;->a([DD)D

    move-result-wide v26

    .line 65
    move-wide/from16 v0, v18

    invoke-static {v9, v0, v1}, Lcom/google/android/location/activity/a/a/c;->a([DD)D

    move-result-wide v28

    .line 66
    move-wide/from16 v0, v20

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->u:F

    .line 67
    move-wide/from16 v0, v22

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->v:F

    .line 68
    move-wide/from16 v0, v24

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->w:F

    .line 69
    move-wide/from16 v0, v26

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->x:F

    .line 70
    move-wide/from16 v0, v28

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->y:F

    .line 71
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v30, v32

    if-gez v2, :cond_4

    const/4 v2, 0x0

    :goto_4
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->z:F

    .line 72
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v30, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v20, v30

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :goto_5
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->A:F

    .line 73
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v20, v22

    if-gez v2, :cond_6

    const/4 v2, 0x0

    :goto_6
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->B:F

    .line 74
    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v16, v20

    if-gez v2, :cond_7

    const/4 v2, 0x0

    :goto_7
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->C:F

    .line 75
    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v18, v20

    if-gez v2, :cond_8

    const/4 v2, 0x0

    :goto_8
    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->D:F

    .line 78
    invoke-static {v3}, Lcom/google/android/location/activity/a/a/c;->a([D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->p:F

    .line 79
    invoke-static {v4}, Lcom/google/android/location/activity/a/a/c;->a([D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->q:F

    .line 80
    invoke-static {v6}, Lcom/google/android/location/activity/a/a/c;->a([D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->r:F

    .line 81
    invoke-static {v8}, Lcom/google/android/location/activity/a/a/c;->a([D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->s:F

    .line 82
    invoke-static {v9}, Lcom/google/android/location/activity/a/a/c;->a([D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v2, v0

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->t:F

    .line 85
    invoke-static {v3}, Lcom/google/android/location/activity/a/a/c;->b([D)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->k:F

    .line 86
    invoke-static {v4}, Lcom/google/android/location/activity/a/a/c;->b([D)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->l:F

    .line 87
    invoke-static {v6}, Lcom/google/android/location/activity/a/a/c;->b([D)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->m:F

    .line 88
    invoke-static {v8}, Lcom/google/android/location/activity/a/a/c;->b([D)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->n:F

    .line 89
    invoke-static {v9}, Lcom/google/android/location/activity/a/a/c;->b([D)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->o:F

    .line 92
    invoke-static {v3, v10, v11}, Lcom/google/android/location/activity/a/a/c;->b([DD)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->f:F

    .line 93
    invoke-static {v4, v12, v13}, Lcom/google/android/location/activity/a/a/c;->b([DD)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->g:F

    .line 94
    invoke-static {v6, v14, v15}, Lcom/google/android/location/activity/a/a/c;->b([DD)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->h:F

    .line 95
    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1}, Lcom/google/android/location/activity/a/a/c;->b([DD)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->i:F

    .line 96
    move-wide/from16 v0, v18

    invoke-static {v9, v0, v1}, Lcom/google/android/location/activity/a/a/c;->b([DD)F

    move-result v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->j:F

    .line 99
    array-length v6, v5

    const/4 v2, 0x0

    aget-object v2, v5, v2

    array-length v2, v2

    rem-int/lit8 v8, v2, 0x5

    sub-int/2addr v2, v8

    div-int/lit8 v9, v2, 0x5

    filled-new-array {v9, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v9, :cond_a

    new-array v10, v6, [D

    mul-int/lit8 v3, v4, 0x5

    add-int v11, v3, v8

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v6, :cond_9

    const/4 v12, 0x5

    new-array v12, v12, [D

    aget-object v13, v5, v3

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-static {v13, v11, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v12

    aput-wide v12, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 56
    :cond_1
    div-double v20, v20, v26

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_1

    .line 57
    :cond_2
    div-double v20, v22, v26

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_2

    .line 58
    :cond_3
    div-double v20, v24, v26

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_3

    .line 71
    :cond_4
    div-double v20, v20, v10

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_4

    .line 72
    :cond_5
    div-double v20, v22, v12

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_5

    .line 73
    :cond_6
    div-double v20, v24, v14

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_6

    .line 74
    :cond_7
    div-double v20, v26, v16

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_7

    .line 75
    :cond_8
    div-double v20, v28, v18

    move-wide/from16 v0, v20

    double-to-float v2, v0

    goto/16 :goto_8

    .line 99
    :cond_9
    const/4 v3, 0x0

    aget-object v11, v2, v4

    const/4 v12, 0x0

    invoke-static {v10, v3, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_9

    .line 100
    :cond_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    new-array v8, v3, [D

    .line 101
    const/4 v3, 0x0

    move v6, v3

    :goto_b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_c

    .line 102
    aget-object v9, v2, v6

    add-int/lit8 v3, v6, 0x1

    aget-object v10, v2, v3

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_c
    array-length v11, v9

    if-ge v3, v11, :cond_b

    aget-wide v12, v9, v3

    aget-wide v14, v10, v3

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_b
    invoke-static {v9}, Lcom/google/android/location/activity/a/y;->d([D)D

    move-result-wide v12

    invoke-static {v10}, Lcom/google/android/location/activity/a/y;->d([D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v4, v10

    aput-wide v4, v8, v6

    .line 101
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_b

    .line 104
    :cond_c
    invoke-static {v8}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v2

    .line 105
    double-to-float v4, v2

    iput v4, v7, Lcom/google/android/location/activity/a/a/d;->E:F

    .line 106
    invoke-static {v8}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v4

    mul-double/2addr v2, v2

    sub-double v2, v4, v2

    double-to-float v2, v2

    iput v2, v7, Lcom/google/android/location/activity/a/a/d;->F:F

    .line 107
    return-object v7
.end method

.method private static b([D)F
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 149
    array-length v0, p0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    move v0, v1

    move v2, v3

    .line 153
    :goto_1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_4

    .line 154
    add-int/lit8 v4, v0, -0x1

    aget-wide v4, p0, v4

    aget-wide v6, p0, v0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move v4, v1

    :goto_2
    aget-wide v6, p0, v0

    add-int/lit8 v5, v0, 0x1

    aget-wide v8, p0, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_3

    move v5, v1

    :goto_3
    if-eq v4, v5, :cond_1

    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 154
    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_3

    .line 158
    :cond_4
    int-to-float v0, v2

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private static b([DD)F
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 168
    array-length v0, p0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 172
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 173
    aget-wide v6, p0, v0

    cmpl-double v3, v6, p1

    if-ltz v3, :cond_2

    move v3, v4

    :goto_2
    add-int/lit8 v5, v0, 0x1

    aget-wide v6, p0, v5

    cmpl-double v5, v6, p1

    if-ltz v5, :cond_3

    move v5, v4

    :goto_3
    if-eq v3, v5, :cond_1

    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    .line 173
    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    .line 177
    :cond_4
    int-to-float v0, v2

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
