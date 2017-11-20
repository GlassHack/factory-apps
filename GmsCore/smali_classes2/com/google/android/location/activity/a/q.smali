.class public Lcom/google/android/location/activity/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/android/location/activity/a/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/location/activity/a/q;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([D)F
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 354
    move v0, v1

    move v2, v3

    move v4, v3

    move v5, v3

    .line 357
    :goto_0
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_4

    .line 358
    add-int/lit8 v6, v0, -0x1

    aget-wide v6, p0, v6

    aget-wide v8, p0, v0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    move v6, v1

    :goto_1
    aget-wide v8, p0, v0

    add-int/lit8 v7, v0, 0x1

    aget-wide v10, p0, v7

    cmpg-double v7, v8, v10

    if-gez v7, :cond_3

    move v7, v1

    :goto_2
    if-eq v6, v7, :cond_1

    .line 359
    if-nez v2, :cond_0

    move v5, v0

    .line 363
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    .line 357
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v6, v3

    .line 358
    goto :goto_1

    :cond_3
    move v7, v3

    goto :goto_2

    .line 366
    :cond_4
    if-gt v2, v1, :cond_5

    .line 367
    int-to-float v0, v2

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 369
    :goto_3
    return v0

    :cond_5
    add-int/lit8 v0, v2, -0x1

    int-to-float v0, v0

    sub-int v1, v4, v5

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_3
.end method

.method public static a(Ljava/util/List;Z)Lcom/google/android/location/activity/a/r;
    .locals 14

    .prologue
    .line 27
    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    invoke-static {p0, v0, v1}, Lcom/google/android/location/activity/a/y;->a(Ljava/util/List;D)[[D

    move-result-object v1

    .line 34
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 35
    aget-object v2, v1, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v2, v4, v5}, Lcom/google/android/location/activity/a/y;->a([DD)[D

    move-result-object v2

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    sget-boolean v0, Lcom/google/android/location/activity/a/q;->a:Z

    if-nez v0, :cond_1

    array-length v0, v1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, v1, v0

    array-length v4, v0

    sget-boolean v0, Lcom/google/android/location/activity/a/q;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    array-length v0, v0

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/google/android/location/activity/a/q;->a:Z

    if-nez v0, :cond_3

    const/4 v0, 0x2

    aget-object v0, v1, v0

    array-length v0, v0

    if-eq v0, v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    const/4 v0, 0x3

    new-array v2, v0, [D

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_4

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v6

    aput-wide v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    aget-wide v6, v2, v0

    const/4 v0, 0x0

    aget-wide v8, v2, v0

    mul-double/2addr v6, v8

    const/4 v0, 0x1

    aget-wide v8, v2, v0

    const/4 v0, 0x1

    aget-wide v10, v2, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const/4 v0, 0x2

    aget-wide v8, v2, v0

    const/4 v0, 0x2

    aget-wide v10, v2, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-nez v0, :cond_5

    move-object v0, v1

    .line 45
    :goto_2
    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 46
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 47
    const/4 v1, 0x2

    aget-object v3, v0, v1

    .line 50
    invoke-static {v3}, Lcom/google/android/location/activity/a/q;->b([D)V

    .line 52
    new-instance v1, Lcom/google/android/location/activity/a/r;

    invoke-direct {v1}, Lcom/google/android/location/activity/a/r;-><init>()V

    .line 55
    invoke-static {v8}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v10

    .line 56
    invoke-static {v2}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v4

    .line 57
    invoke-static {v3}, Lcom/google/android/location/activity/a/y;->c([D)D

    move-result-wide v6

    .line 58
    add-double/2addr v10, v4

    add-double/2addr v10, v6

    double-to-float v9, v10

    iput v9, v1, Lcom/google/android/location/activity/a/r;->a:F

    .line 59
    double-to-float v9, v4

    iput v9, v1, Lcom/google/android/location/activity/a/r;->t:F

    .line 60
    double-to-float v9, v6

    iput v9, v1, Lcom/google/android/location/activity/a/r;->c:F

    .line 63
    invoke-static {p1, v1, v0}, Lcom/google/android/location/activity/a/q;->a(ZLcom/google/android/location/activity/a/r;[[D)V

    .line 66
    invoke-static {v3}, Lcom/google/android/location/activity/a/q;->e([D)F

    move-result v0

    iput v0, v1, Lcom/google/android/location/activity/a/r;->k:F

    .line 71
    invoke-static {v2}, Lcom/google/android/location/activity/a/q;->e([D)F

    move-result v0

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v1, Lcom/google/android/location/activity/a/r;->l:F

    .line 73
    invoke-static/range {v1 .. v7}, Lcom/google/android/location/activity/a/q;->a(Lcom/google/android/location/activity/a/r;[D[DDD)V

    .line 76
    invoke-static {v1, v8, v2}, Lcom/google/android/location/activity/a/q;->a(Lcom/google/android/location/activity/a/r;[D[D)V

    .line 77
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v3}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Lcom/google/android/location/activity/a/r;->d:F

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v4, v5, v3}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Lcom/google/android/location/activity/a/r;->e:F

    const-wide v4, 0x3fedc28f5c28f5c3L    # 0.93

    invoke-static {v4, v5, v3}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Lcom/google/android/location/activity/a/r;->f:F

    const-wide v4, 0x3fc0a3d70a3d70a4L    # 0.13

    invoke-static {v4, v5, v3}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Lcom/google/android/location/activity/a/r;->g:F

    const-wide v4, 0x3fe999999999999aL    # 0.8

    invoke-static {v4, v5, v3}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Lcom/google/android/location/activity/a/r;->h:F

    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    invoke-static {v4, v5, v3}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Lcom/google/android/location/activity/a/r;->i:F

    const-wide v4, 0x3fe3d70a3d70a3d7L    # 0.62

    invoke-static {v4, v5, v3}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, v1, Lcom/google/android/location/activity/a/r;->j:F

    .line 79
    return-object v1

    .line 44
    :cond_5
    const/4 v0, 0x3

    new-array v5, v0, [D

    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x3

    if-ge v0, v3, :cond_6

    aget-wide v8, v2, v0

    div-double/2addr v8, v6

    aput-wide v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-array v6, v4, [D

    const/4 v0, 0x3

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_8

    const/4 v2, 0x0

    aget-wide v8, v5, v2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    aget-wide v10, v2, v3

    mul-double/2addr v8, v10

    const/4 v2, 0x1

    aget-wide v10, v5, v2

    const/4 v2, 0x1

    aget-object v2, v1, v2

    aget-wide v12, v2, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const/4 v2, 0x2

    aget-wide v10, v5, v2

    const/4 v2, 0x2

    aget-object v2, v1, v2

    aget-wide v12, v2, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v6, v3

    const/4 v2, 0x0

    :goto_5
    const/4 v7, 0x3

    if-ge v2, v7, :cond_7

    aget-object v7, v0, v2

    aget-object v8, v1, v2

    aget-wide v8, v8, v3

    aget-wide v10, v6, v3

    aget-wide v12, v5, v2

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_8
    invoke-static {v5}, Lcom/google/android/location/activity/a/q;->c([D)[D

    move-result-object v2

    const/4 v1, 0x3

    new-array v3, v1, [D

    const/4 v1, 0x0

    const/4 v7, 0x1

    aget-wide v8, v5, v7

    const/4 v7, 0x2

    aget-wide v10, v2, v7

    mul-double/2addr v8, v10

    const/4 v7, 0x2

    aget-wide v10, v5, v7

    const/4 v7, 0x1

    aget-wide v12, v2, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v3, v1

    const/4 v1, 0x1

    const/4 v7, 0x2

    aget-wide v8, v5, v7

    const/4 v7, 0x0

    aget-wide v10, v2, v7

    mul-double/2addr v8, v10

    const/4 v7, 0x0

    aget-wide v10, v5, v7

    const/4 v7, 0x2

    aget-wide v12, v2, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v3, v1

    const/4 v1, 0x2

    const/4 v7, 0x0

    aget-wide v8, v5, v7

    const/4 v7, 0x1

    aget-wide v10, v2, v7

    mul-double/2addr v8, v10

    const/4 v7, 0x1

    aget-wide v10, v5, v7

    const/4 v5, 0x0

    aget-wide v12, v2, v5

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v3, v1

    new-array v5, v4, [D

    new-array v7, v4, [D

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v4, :cond_9

    const/4 v8, 0x0

    aget-object v8, v0, v8

    aget-wide v8, v8, v1

    const/4 v10, 0x0

    aget-wide v10, v2, v10

    mul-double/2addr v8, v10

    const/4 v10, 0x1

    aget-object v10, v0, v10

    aget-wide v10, v10, v1

    const/4 v12, 0x1

    aget-wide v12, v2, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-object v10, v0, v10

    aget-wide v10, v10, v1

    const/4 v12, 0x2

    aget-wide v12, v2, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v5, v1

    const/4 v8, 0x0

    aget-object v8, v0, v8

    aget-wide v8, v8, v1

    const/4 v10, 0x0

    aget-wide v10, v3, v10

    mul-double/2addr v8, v10

    const/4 v10, 0x1

    aget-object v10, v0, v10

    aget-wide v10, v10, v1

    const/4 v12, 0x1

    aget-wide v12, v3, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-object v10, v0, v10

    aget-wide v10, v10, v1

    const/4 v12, 0x2

    aget-wide v12, v3, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    invoke-static {v5, v7}, Lcom/google/android/location/activity/a/q;->a([D[D)[[D

    move-result-object v1

    new-array v2, v4, [D

    new-array v3, v4, [D

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v4, :cond_a

    aget-wide v8, v5, v0

    const/4 v10, 0x0

    aget-object v10, v1, v10

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    aget-wide v10, v7, v0

    const/4 v12, 0x0

    aget-object v12, v1, v12

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v2, v0

    aget-wide v8, v5, v0

    const/4 v10, 0x1

    aget-object v10, v1, v10

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    aget-wide v10, v7, v0

    const/4 v12, 0x1

    aget-object v12, v1, v12

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x3

    new-array v0, v0, [[D

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    goto/16 :goto_2
.end method

.method private static a(Lcom/google/android/location/activity/a/r;[D[D)V
    .locals 10

    .prologue
    .line 137
    array-length v1, p1

    .line 138
    new-array v2, v1, [D

    .line 139
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 140
    aget-wide v4, p1, v0

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    aget-wide v6, p2, v0

    aget-wide v8, p2, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([D)V

    .line 143
    const-wide v0, 0x3fee147ae147ae14L    # 0.94

    invoke-static {v0, v1, v2}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/location/activity/a/r;->u:F

    .line 144
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1, v2}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/location/activity/a/r;->v:F

    .line 145
    const-wide v0, 0x3fdc28f5c28f5c29L    # 0.44

    invoke-static {v0, v1, v2}, Lcom/google/android/location/activity/a/y;->a(D[D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/location/activity/a/r;->w:F

    .line 146
    return-void
.end method

.method private static a(Lcom/google/android/location/activity/a/r;[D[DDD)V
    .locals 17

    .prologue
    .line 177
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    const/4 v2, 0x4

    if-ge v8, v2, :cond_7

    .line 178
    const/4 v2, 0x1

    shl-int/2addr v2, v8

    int-to-double v2, v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v2, v4

    .line 179
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/location/activity/a/y;->a([DD)[D

    move-result-object v9

    .line 180
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/android/location/activity/a/y;->a([DD)[D

    move-result-object v10

    .line 181
    invoke-static {v9}, Lcom/google/android/location/activity/a/y;->b([D)D

    move-result-wide v2

    .line 182
    invoke-static {v10}, Lcom/google/android/location/activity/a/y;->b([D)D

    move-result-wide v4

    .line 184
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/activity/a/r;->m:[F

    div-double v4, v4, p5

    double-to-float v4, v4

    aput v4, v6, v8

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/activity/a/r;->n:[F

    div-double v2, v2, p3

    double-to-float v2, v2

    aput v2, v4, v8

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/activity/a/r;->o:[F

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v6, v10

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    aget-wide v6, v10, v2

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v7, v2, 0x1

    aget-wide v12, v10, v7

    const-wide/16 v14, 0x0

    cmpl-double v7, v12, v14

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    if-eq v6, v7, :cond_1

    if-nez v3, :cond_0

    move v5, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    if-gt v3, v2, :cond_6

    int-to-float v2, v3

    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    :goto_4
    aput v2, v11, v8

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/a/r;->p:[F

    invoke-static {v10}, Lcom/google/android/location/activity/a/q;->a([D)F

    move-result v3

    aput v3, v2, v8

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/a/r;->q:[F

    invoke-static {v9}, Lcom/google/android/location/activity/a/q;->a([D)F

    move-result v3

    aput v3, v2, v8

    .line 194
    const/4 v2, 0x1

    if-ne v8, v2, :cond_5

    .line 196
    invoke-static {v10}, Lcom/google/android/location/activity/a/q;->d([D)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/location/activity/a/r;->r:F

    .line 197
    invoke-static {v10}, Lcom/google/android/location/activity/a/q;->d([D)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/location/activity/a/r;->s:F

    .line 177
    :cond_5
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    .line 187
    :cond_6
    add-int/lit8 v2, v3, -0x1

    int-to-float v2, v2

    sub-int v3, v4, v5

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_4

    .line 200
    :cond_7
    return-void
.end method

.method private static a(ZLcom/google/android/location/activity/a/r;[[D)V
    .locals 25

    .prologue
    .line 94
    const/4 v2, 0x0

    aget-object v2, p2, v2

    array-length v15, v2

    .line 95
    const/4 v2, 0x3

    add-int/lit8 v3, v15, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 96
    const/4 v3, 0x3

    add-int/lit8 v4, v15, 0x1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 97
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v4, 0x3

    if-ge v5, v4, :cond_1

    .line 98
    const-wide/16 v8, 0x0

    .line 99
    const-wide/16 v6, 0x0

    .line 100
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_0

    .line 101
    aget-object v10, v2, v5

    aput-wide v8, v10, v4

    .line 102
    aget-object v10, p2, v5

    aget-wide v10, v10, v4

    add-double/2addr v8, v10

    .line 103
    aget-object v10, v3, v5

    aput-wide v6, v10, v4

    .line 104
    aget-object v10, p2, v5

    aget-wide v10, v10, v4

    aget-object v12, p2, v5

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    :cond_0
    aget-object v4, v2, v5

    aput-wide v8, v4, v15

    .line 107
    aget-object v4, v3, v5

    aput-wide v6, v4, v15

    .line 97
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 109
    :cond_1
    if-eqz p0, :cond_2

    const/4 v4, 0x4

    :goto_2
    div-int v16, v15, v4

    .line 111
    const-wide/16 v8, 0x0

    .line 112
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 113
    const/4 v4, 0x0

    move v14, v4

    :goto_3
    sub-int v4, v15, v16

    if-ge v14, v4, :cond_5

    .line 114
    const-wide/16 v10, 0x0

    .line 115
    const/4 v4, 0x0

    move/from16 v24, v4

    move-wide v4, v10

    move/from16 v10, v24

    :goto_4
    const/4 v11, 0x3

    if-ge v10, v11, :cond_3

    .line 116
    aget-object v11, v2, v10

    add-int v12, v14, v16

    aget-wide v12, v11, v12

    aget-object v11, v2, v10

    aget-wide v18, v11, v14

    sub-double v12, v12, v18

    .line 117
    aget-object v11, v3, v10

    add-int v17, v14, v16

    aget-wide v18, v11, v17

    aget-object v11, v3, v10

    aget-wide v20, v11, v14

    sub-double v18, v18, v20

    .line 118
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v20, v12, v20

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v12, v22

    mul-double v12, v12, v20

    sub-double v12, v18, v12

    add-double/2addr v12, v4

    .line 115
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v4, v12

    goto :goto_4

    .line 109
    :cond_2
    const/4 v4, 0x3

    goto :goto_2

    .line 121
    :cond_3
    cmpl-double v10, v4, v8

    if-lez v10, :cond_4

    move-wide v8, v4

    .line 124
    :cond_4
    cmpg-double v10, v4, v6

    if-gez v10, :cond_6

    .line 113
    :goto_5
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    move-wide v6, v4

    goto :goto_3

    .line 128
    :cond_5
    div-double v2, v6, v8

    double-to-float v2, v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/google/android/location/activity/a/r;->b:F

    .line 129
    return-void

    :cond_6
    move-wide v4, v6

    goto :goto_5
.end method

.method private static a([D[D)[[D
    .locals 18

    .prologue
    .line 409
    move-object/from16 v0, p0

    array-length v3, v0

    .line 410
    sget-boolean v2, Lcom/google/android/location/activity/a/q;->a:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 412
    :cond_0
    const-wide/16 v8, 0x0

    .line 413
    const-wide/16 v6, 0x0

    .line 414
    const-wide/16 v4, 0x0

    .line 415
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 416
    aget-wide v10, p0, v2

    aget-wide v12, p0, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 417
    aget-wide v10, p0, v2

    aget-wide v12, p1, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 418
    aget-wide v10, p1, v2

    aget-wide v12, p1, v2

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :cond_1
    const/4 v2, 0x2

    new-array v10, v2, [D

    .line 424
    const/4 v2, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v4

    sub-double v14, v8, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    aput-wide v12, v10, v2

    .line 425
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v12, v10, v3

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v12, v14

    aput-wide v12, v10, v2

    .line 426
    const/4 v2, 0x2

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 427
    const/4 v3, 0x2

    new-array v11, v3, [D

    .line 428
    const/4 v3, 0x0

    :goto_1
    const/4 v12, 0x2

    if-ge v3, v12, :cond_2

    .line 429
    aget-object v12, v2, v3

    const/4 v13, 0x0

    aget-wide v14, v10, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 430
    aget-object v12, v2, v3

    const/4 v13, 0x1

    aget-wide v14, v10, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 431
    const/4 v12, 0x2

    new-array v12, v12, [D

    .line 432
    const/4 v13, 0x0

    aget-object v14, v2, v3

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    mul-double/2addr v14, v8

    aget-object v16, v2, v3

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    mul-double v16, v16, v4

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 433
    const/4 v13, 0x1

    aget-object v14, v2, v3

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    mul-double/2addr v14, v4

    aget-object v16, v2, v3

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    mul-double v16, v16, v6

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 434
    const/4 v13, 0x0

    aget-wide v14, v12, v13

    const/4 v13, 0x0

    aget-wide v16, v12, v13

    mul-double v14, v14, v16

    const/4 v13, 0x1

    aget-wide v16, v12, v13

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    mul-double v12, v12, v16

    add-double/2addr v12, v14

    aput-wide v12, v11, v3

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 437
    :cond_2
    const/4 v3, 0x0

    aget-wide v4, v11, v3

    const/4 v3, 0x1

    aget-wide v6, v11, v3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 440
    :goto_2
    return-object v2

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [[D

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, v2, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget-object v2, v2, v5

    aput-object v2, v3, v4

    move-object v2, v3

    goto :goto_2
.end method

.method private static b([D)V
    .locals 6

    .prologue
    .line 203
    invoke-static {p0}, Lcom/google/android/location/activity/a/y;->a([D)D

    move-result-wide v2

    .line 204
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 205
    aget-wide v4, p0, v0

    sub-double/2addr v4, v2

    aput-wide v4, p0, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private static c([D)[D
    .locals 14

    .prologue
    const/4 v11, 0x3

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 296
    :cond_0
    new-array v2, v11, [D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v4, v12

    aput-wide v4, v2, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v4, v12

    aput-wide v4, v2, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v4, v12

    aput-wide v4, v2, v10

    .line 298
    aget-wide v4, p0, v0

    aget-wide v6, v2, v0

    mul-double/2addr v4, v6

    aget-wide v6, p0, v3

    aget-wide v8, v2, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aget-wide v6, p0, v10

    aget-wide v8, v2, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move v1, v0

    .line 299
    :goto_0
    if-ge v1, v11, :cond_1

    .line 300
    aget-wide v6, v2, v1

    aget-wide v8, p0, v1

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    aput-wide v6, v2, v1

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    aget-wide v4, v2, v0

    aget-wide v6, v2, v0

    mul-double/2addr v4, v6

    aget-wide v6, v2, v3

    aget-wide v8, v2, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aget-wide v6, v2, v10

    aget-wide v8, v2, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 305
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    .line 307
    :goto_1
    if-ge v0, v11, :cond_2

    .line 308
    aget-wide v6, v2, v0

    div-double/2addr v6, v4

    aput-wide v6, v2, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_2
    return-object v2
.end method

.method private static d([D)F
    .locals 9

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    array-length v2, p0

    .line 324
    const/4 v0, 0x1

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v2, :cond_1

    .line 325
    aget-wide v4, p0, v1

    add-int/lit8 v3, v1, -0x1

    aget-wide v6, p0, v3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 324
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    int-to-float v0, v0

    add-int/lit8 v1, v2, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static e([D)F
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 339
    array-length v2, p0

    move v1, v0

    .line 341
    :goto_0
    if-ge v1, v2, :cond_1

    .line 342
    aget-wide v4, p0, v1

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 343
    add-int/lit8 v0, v0, 0x1

    .line 341
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_1
    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method
