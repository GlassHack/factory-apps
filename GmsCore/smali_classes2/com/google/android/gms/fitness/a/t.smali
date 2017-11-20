.class final Lcom/google/android/gms/fitness/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/a/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 11

    .prologue
    .line 103
    const/high16 v5, 0x42b40000    # 90.0f

    .line 104
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 105
    const/high16 v3, 0x43340000    # 180.0f

    .line 106
    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 109
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 110
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v7

    .line 111
    cmpg-float v7, v7, v1

    if-gtz v7, :cond_4

    .line 112
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v7

    .line 113
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    .line 115
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 116
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 117
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 118
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_2
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 120
    goto :goto_1

    .line 108
    :cond_0
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v7, v6

    move v6, v1

    move v1, v0

    :goto_3
    if-ge v1, v8, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    sub-float v9, v0, v7

    add-int/lit8 v10, v1, 0x1

    int-to-float v10, v10

    div-float v10, v9, v10

    add-float/2addr v7, v10

    sub-float/2addr v0, v7

    mul-float/2addr v0, v9

    add-float/2addr v6, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v8, -0x1

    int-to-float v0, v0

    div-float v0, v6, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->ab:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    move v1, v0

    goto/16 :goto_0

    .line 121
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v3, 0x2

    aput v4, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 124
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v4

    .line 126
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 127
    return-object v1

    :cond_4
    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_2
.end method
