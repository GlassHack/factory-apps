.class public final Lcom/google/android/maps/driveabout/model/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private volatile b:Lcom/google/android/maps/driveabout/model/am;

.field private volatile c:F


# direct methods
.method private constructor <init>([I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    .line 41
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ag;->c:F

    .line 42
    return-void
.end method

.method synthetic constructor <init>([ILcom/google/android/maps/driveabout/model/ah;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/model/ag;-><init>([I)V

    return-void
.end method

.method private a(FIIILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Z)I
    .locals 15

    .prologue
    .line 422
    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 423
    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 425
    const/4 v8, -0x1

    .line 427
    add-int v6, p3, p2

    move/from16 v5, p1

    :goto_0
    add-int/lit8 v4, p4, -0x1

    if-gt v6, v4, :cond_0

    .line 429
    move-object/from16 v0, p8

    invoke-virtual {p0, v6, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 430
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v4

    .line 432
    cmpl-float v7, v4, v5

    if-lez v7, :cond_3

    move v8, v6

    .line 428
    :goto_1
    add-int v6, v6, p2

    move v5, v4

    goto :goto_0

    .line 440
    :cond_0
    const/4 v4, 0x0

    .line 441
    if-ltz v8, :cond_2

    .line 442
    const/4 v4, 0x1

    .line 443
    const/4 v5, 0x1

    aput-boolean v5, p9, v8

    .line 444
    add-int/lit8 v5, p3, 0x1

    if-le v8, v5, :cond_1

    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 445
    invoke-direct/range {v4 .. v13}, Lcom/google/android/maps/driveabout/model/ag;->a(FIIILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 448
    :cond_1
    add-int/lit8 v5, p4, -0x1

    if-ge v8, v5, :cond_2

    move-object v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 449
    invoke-direct/range {v5 .. v14}, Lcom/google/android/maps/driveabout/model/ag;->a(FIIILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Z)I

    move-result v5

    add-int/2addr v4, v5

    .line 453
    :cond_2
    return v4

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ag;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a([II)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a([II)V

    .line 90
    new-instance v1, Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/model/ag;-><init>([I)V

    return-object v1
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ag;
    .locals 3

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 129
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    .line 130
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 131
    invoke-static {p0, p1, v2, v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;[II)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/model/ag;-><init>([I)V

    return-object v0
.end method

.method public static a([I)Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/model/ag;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/google/android/maps/driveabout/model/ab;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 263
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 266
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->c()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->d()F

    move-result v1

    mul-float/2addr v1, p1

    .line 270
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    .line 271
    :goto_1
    if-ge v1, v3, :cond_3

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v2

    .line 273
    cmpl-float v4, v2, v0

    if-ltz v4, :cond_2

    .line 274
    div-float v2, v0, v2

    .line 275
    new-instance v3, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 276
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 277
    invoke-virtual {p0, v1, v3}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 280
    invoke-static {v3, v0, v2, v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_0

    .line 283
    :cond_2
    sub-float v2, v0, v2

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 285
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->c()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/model/ab;
    .locals 5

    .prologue
    .line 182
    mul-int/lit8 v0, p1, 0x3

    .line 183
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    return-object v1
.end method

.method public final a()Lcom/google/android/maps/driveabout/model/am;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->b:Lcom/google/android/maps/driveabout/model/am;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 50
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ag;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->b:Lcom/google/android/maps/driveabout/model/am;

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->b:Lcom/google/android/maps/driveabout/model/am;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/model/am;

    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->b:Lcom/google/android/maps/driveabout/model/am;

    goto :goto_0
.end method

.method public final a(ILcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    .line 189
    mul-int/lit8 v0, p1, 0x3

    .line 190
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v1, v1, v0

    iput v1, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 191
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 192
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 193
    return-void
.end method

.method public final a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    .line 211
    mul-int/lit8 v0, p1, 0x3

    .line 212
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v1, v1, v0

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 213
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 214
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 215
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    .line 197
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v1, v1, v0

    iput v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 198
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 199
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 200
    return-void
.end method

.method public final a(FI)[Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    .line 381
    new-array v9, v0, [Z

    .line 382
    array-length v1, v9

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 384
    :goto_0
    array-length v0, v9

    if-ge v3, v0, :cond_1

    .line 385
    aput-boolean v4, v9, v3

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_0
    aput-boolean v4, v9, v3

    .line 389
    add-int/lit8 v1, v0, -0x1

    aput-boolean v4, v9, v1

    .line 390
    mul-float v1, p1, p1

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    new-instance v6, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v6}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    new-instance v7, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v7}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    new-instance v8, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/model/ag;->a(FIIILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Z)I

    .line 395
    :cond_1
    return-object v9
.end method

.method public final b(I)F
    .locals 6

    .prologue
    .line 233
    mul-int/lit8 v0, p1, 0x3

    .line 234
    add-int/lit8 v1, v0, 0x3

    .line 235
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 236
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 237
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v2, v3, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 238
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final b(F)Lcom/google/android/maps/driveabout/model/ag;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    array-length v0, v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-object p0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    array-length v0, v0

    div-int/lit8 v10, v0, 0x3

    .line 335
    new-array v9, v10, [Z

    .line 336
    aput-boolean v2, v9, v3

    .line 337
    add-int/lit8 v0, v10, -0x1

    aput-boolean v2, v9, v0

    .line 341
    mul-float v1, p1, p1

    add-int/lit8 v4, v10, -0x1

    new-instance v5, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    new-instance v6, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v6}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    new-instance v7, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v7}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    new-instance v8, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/model/ag;->a(FIIILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 344
    if-eq v0, v10, :cond_0

    .line 349
    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    move v0, v3

    .line 351
    :goto_1
    if-ge v3, v10, :cond_3

    .line 352
    aget-boolean v2, v9, v3

    if-eqz v2, :cond_2

    .line 353
    mul-int/lit8 v2, v3, 0x3

    .line 354
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v1, v0

    .line 355
    add-int/lit8 v2, v4, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    aput v0, v1, v4

    .line 356
    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v4, v4, v5

    aput v4, v1, v2

    .line 351
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    :cond_3
    new-instance p0, Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/model/ag;-><init>([I)V

    goto :goto_0
.end method

.method public final c(I)F
    .locals 4

    .prologue
    .line 626
    mul-int/lit8 v0, p1, 0x3

    .line 627
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/model/ae;->a(II)F

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/ab;
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    .line 204
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    return-object v1
.end method

.method public final d()F
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ag;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 221
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iput v1, p0, Lcom/google/android/maps/driveabout/model/ag;->c:F

    .line 226
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ag;->c:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 290
    if-ne p1, p0, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    .line 293
    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/model/ag;

    if-eqz v0, :cond_1

    .line 294
    check-cast p1, Lcom/google/android/maps/driveabout/model/ag;

    .line 295
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ag;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
