.class public final Lcom/google/android/location/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method public static a(Ljava/util/List;)F
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 45
    if-gt v3, v5, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    move v2, v0

    move v1, v0

    .line 49
    :goto_1
    if-ge v2, v3, :cond_1

    .line 50
    if-lt v2, v5, :cond_2

    .line 51
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 49
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 54
    :cond_1
    int-to-float v0, v1

    add-int/lit8 v1, v3, -0x3

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/util/List;Z)F
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x2

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    move v8, v2

    move v4, v2

    move v5, v7

    .line 69
    :goto_0
    if-ge v8, v9, :cond_5

    .line 70
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-lt v8, v0, :cond_8

    .line 71
    :cond_0
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v13}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :cond_1
    add-float/2addr v1, v5

    .line 72
    add-int/lit8 v0, v4, 0x1

    .line 69
    :goto_1
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v5, v1

    move v4, v0

    goto :goto_0

    .line 71
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_2
    invoke-virtual {v0, v13}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v6

    if-ge v1, v6, :cond_3

    invoke-virtual {v0, v13, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v6

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v6, v2

    move v1, v7

    :goto_3
    if-ge v6, v11, :cond_1

    if-nez v6, :cond_4

    add-int/lit8 v0, v11, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v12, v0

    sub-float v0, v3, v0

    :goto_4
    cmpl-float v12, v0, v1

    if-lez v12, :cond_7

    :goto_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_3

    :cond_4
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-int/lit8 v0, v6, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v12, v0

    goto :goto_4

    .line 75
    :cond_5
    if-nez v4, :cond_6

    .line 78
    :goto_6
    return v3

    :cond_6
    int-to-float v0, v4

    div-float v3, v5, v0

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v4

    move v1, v5

    goto :goto_1
.end method

.method public static d(Ljava/util/List;)F
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v2, 0x0

    const/high16 v12, 0x41900000    # 18.0f

    const/4 v11, 0x2

    const/4 v4, 0x0

    .line 175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    .line 176
    if-gt v8, v13, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v7, v2

    move v5, v4

    move v6, v4

    .line 181
    :goto_1
    if-ge v7, v8, :cond_4

    .line 182
    if-lt v7, v13, :cond_5

    .line 184
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    move v1, v2

    move v3, v4

    .line 185
    :goto_2
    invoke-virtual {v0, v11}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 186
    invoke-virtual {v0, v11, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v9

    .line 187
    invoke-virtual {v9, v11}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v9

    .line 188
    cmpl-float v10, v9, v12

    if-lez v10, :cond_2

    .line 189
    sub-float/2addr v9, v12

    add-float/2addr v3, v9

    .line 185
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 192
    :cond_3
    cmpl-float v0, v3, v4

    if-lez v0, :cond_5

    .line 193
    add-float v1, v6, v3

    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    .line 181
    :goto_3
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v5, v0

    move v6, v1

    goto :goto_1

    .line 198
    :cond_4
    cmpl-float v0, v5, v4

    if-eqz v0, :cond_0

    .line 201
    div-float v4, v6, v5

    goto :goto_0

    :cond_5
    move v0, v5

    move v1, v6

    goto :goto_3
.end method

.method public static e(Ljava/util/List;)F
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 212
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    .line 213
    if-gt v9, v13, :cond_0

    .line 233
    :goto_0
    return v4

    :cond_0
    move v8, v2

    move v6, v2

    move v7, v4

    .line 218
    :goto_1
    if-ge v8, v9, :cond_3

    .line 219
    if-lt v8, v13, :cond_4

    .line 220
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    move v1, v2

    move v3, v4

    .line 222
    :goto_2
    invoke-virtual {v0, v12}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 223
    invoke-virtual {v0, v12, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v10

    .line 224
    invoke-virtual {v10, v13}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v5

    .line 225
    invoke-virtual {v10, v12}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v10

    const/high16 v11, 0x41900000    # 18.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    cmpl-float v10, v5, v3

    if-lez v10, :cond_1

    move v3, v5

    .line 222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    :cond_2
    add-float v1, v7, v3

    .line 230
    add-int/lit8 v0, v6, 0x1

    .line 218
    :goto_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 233
    :cond_3
    int-to-float v0, v6

    div-float v4, v7, v0

    goto :goto_0

    :cond_4
    move v0, v6

    move v1, v7

    goto :goto_3
.end method


# virtual methods
.method public final b(Ljava/util/List;)F
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 90
    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    .line 92
    const/high16 v0, 0x43b40000    # 360.0f

    .line 104
    :goto_0
    return v0

    .line 94
    :cond_0
    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v0, v0

    .line 95
    const-wide/16 v4, 0x2

    div-long v4, v0, v4

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 98
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-gtz v0, :cond_1

    .line 99
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 104
    :cond_1
    invoke-static {v3, v8}, Lcom/google/android/location/z;->a(Ljava/util/List;Z)F

    move-result v0

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)F
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 116
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 118
    const/high16 v0, 0x43b40000    # 360.0f

    .line 131
    :goto_0
    return v0

    .line 120
    :cond_0
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v2, v0

    .line 121
    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 131
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/google/android/location/z;->a(Ljava/util/List;Z)F

    move-result v0

    goto :goto_0
.end method
