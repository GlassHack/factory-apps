.class public final Lcom/google/i/a/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 14
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lcom/google/i/a/b/t;->a:[I

    .line 15
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lcom/google/i/a/b/t;->b:[I

    .line 16
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/i/a/b/t;->c:[I

    .line 17
    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v8

    sput-object v1, Lcom/google/i/a/b/t;->d:[[I

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/google/i/a/b/t;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v6

    move v4, v0

    move v5, v6

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/google/i/a/b/t;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v7

    move v4, v0

    move v5, v7

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/google/i/a/b/t;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v8

    move v4, v0

    move v5, v8

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/google/i/a/b/t;->a(IIIIII)V

    .line 26
    return-void

    .line 16
    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x3
    .end array-data

    .line 17
    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x2
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x1
        0x0
        0x2
    .end array-data
.end method

.method private static final a(D)J
    .locals 4

    .prologue
    .line 75
    const-wide v0, 0x41dad27480000000L    # 1.8E9

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(JI)J
    .locals 4

    .prologue
    .line 49
    neg-long v0, p0

    and-long/2addr v0, p0

    const/4 v2, 0x2

    ushr-long/2addr v0, v2

    .line 50
    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x4

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final a(IIIIII)V
    .locals 10

    .prologue
    .line 165
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 166
    shl-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    .line 167
    sget-object v1, Lcom/google/i/a/b/t;->a:[I

    shl-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v3, p4, 0x2

    add-int/2addr v3, p5

    aput v3, v1, v2

    .line 168
    sget-object v1, Lcom/google/i/a/b/t;->b:[I

    shl-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    aput v0, v1, v2

    .line 185
    :cond_0
    return-void

    .line 170
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .line 171
    shl-int/lit8 v7, p1, 0x1

    .line 172
    shl-int/lit8 v8, p2, 0x1

    .line 173
    shl-int/lit8 v9, p4, 0x2

    .line 174
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v6, v1, :cond_0

    .line 175
    sget-object v1, Lcom/google/i/a/b/t;->d:[[I

    aget-object v1, v1, p5

    aget v2, v1, v6

    .line 176
    sget-object v1, Lcom/google/i/a/b/t;->c:[I

    aget v3, v1, v6

    .line 177
    ushr-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v7

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v8

    add-int v4, v9, v6

    xor-int v5, p5, v3

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/i/a/b/t;->a(IIIIII)V

    .line 174
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0
.end method

.method public static final a(J)[J
    .locals 10

    .prologue
    .line 68
    const/16 v0, 0x3d

    ushr-long v0, p0, v0

    long-to-int v5, v0

    and-int/lit8 v3, v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x7

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    :goto_1
    mul-int/lit8 v6, v1, 0x2

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x1

    ushr-long v6, p0, v6

    long-to-int v6, v6

    const/4 v7, 0x1

    mul-int/lit8 v0, v0, 0x2

    shl-int v0, v7, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    sget-object v4, Lcom/google/i/a/b/t;->b:[I

    aget v0, v4, v0

    shr-int/lit8 v4, v0, 0x6

    mul-int/lit8 v6, v1, 0x4

    shl-int/2addr v4, v6

    add-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0xf

    mul-int/lit8 v6, v1, 0x4

    shl-int/2addr v4, v6

    add-int/2addr v2, v4

    and-int/lit8 v4, v0, 0x3

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput v5, v1, v0

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    const/4 v2, 0x3

    new-array v2, v2, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-long v4, v4

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v1, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-long v4, v4

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v1, v1, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-long v0, v0

    aput-wide v0, v2, v3

    const/4 v0, 0x0

    aget-wide v0, v2, v0

    long-to-int v0, v0

    const/4 v1, 0x1

    aget-wide v4, v2, v1

    const/4 v1, 0x2

    aget-wide v2, v2, v1

    const-wide/high16 v6, 0x3e00000000000000L    # 4.6566128730773926E-10

    long-to-double v4, v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/i/a/b/t;->b(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3e00000000000000L    # 4.6566128730773926E-10

    long-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Lcom/google/i/a/b/t;->b(D)D

    move-result-wide v2

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    aput-wide v2, v0, v1

    :goto_4
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    mul-double/2addr v2, v4

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v1, 0x2

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    mul-double/2addr v6, v2

    aput-wide v6, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    mul-double/2addr v6, v2

    aput-wide v6, v1, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-wide v6, v0, v5

    mul-double/2addr v2, v6

    aput-wide v2, v1, v4

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x2

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    const/4 v3, 0x1

    aget-wide v8, v1, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Lcom/google/i/a/b/t;->a(D)J

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Lcom/google/i/a/b/t;->a(D)J

    move-result-wide v4

    aput-wide v4, v1, v2

    return-object v1

    .line 68
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x1

    aget v0, v1, v0

    long-to-int v2, p0

    ushr-int/lit8 v2, v2, 0x2

    xor-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    goto/16 :goto_4

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    neg-double v4, v4

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    goto/16 :goto_4

    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    neg-double v4, v4

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    neg-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    goto/16 :goto_4

    :pswitch_3
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    aput-wide v6, v0, v1

    const/4 v1, 0x1

    neg-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    neg-double v2, v4

    aput-wide v2, v0, v1

    goto/16 :goto_4

    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    neg-double v2, v4

    aput-wide v2, v0, v1

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static final b(D)D
    .locals 8

    .prologue
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const-wide v6, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 153
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 154
    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    sub-double/2addr v0, v4

    mul-double/2addr v0, v6

    .line 156
    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, v4, p0

    mul-double/2addr v0, v2

    sub-double v2, v4, p0

    mul-double/2addr v0, v2

    sub-double v0, v4, v0

    mul-double/2addr v0, v6

    goto :goto_0
.end method
