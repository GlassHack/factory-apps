.class public final Lcom/google/android/maps/driveabout/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/f/b;

.field private final b:Lcom/google/android/maps/driveabout/util/m;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/util/m;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/e;->a:Lcom/google/android/maps/driveabout/f/b;

    .line 88
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 89
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/f/e;I)D
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 374
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 373
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/ag;I)D
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 369
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/nav/w;II)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 293
    int-to-double v0, p3

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;DZ)[Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v6

    .line 296
    const/4 v3, 0x0

    .line 297
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 298
    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v6, v5

    .line 299
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_4

    .line 301
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v0

    .line 298
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_0

    .line 304
    :cond_0
    if-eqz v3, :cond_1

    .line 307
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v7

    double-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 306
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Search radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/lang/String;)V

    .line 316
    array-length v7, v6

    move v0, v4

    move-object v2, v3

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_2

    aget-object v1, v6, v3

    .line 317
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v4

    .line 318
    if-lt v4, v0, :cond_3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v4, v8, v10

    if-gez v4, :cond_3

    .line 320
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v0

    .line 316
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 324
    :cond_2
    return-object v2

    :cond_3
    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;DDDDD)Ljava/util/List;
    .locals 24

    .prologue
    .line 227
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 230
    const-wide/16 v2, 0x0

    sub-double v4, p1, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 232
    add-double v14, p1, p5

    .line 233
    move-wide/from16 v0, p7

    neg-double v5, v0

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v16

    .line 238
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v17

    .line 239
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v4

    .line 241
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v2

    add-int/lit8 v3, v17, -0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 242
    add-int/lit8 v2, v18, 0x1

    .line 243
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/nav/w;->b(D)I

    move-result v19

    .line 245
    new-instance v20, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 246
    new-instance v21, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 247
    :goto_0
    move/from16 v0, v18

    if-gt v4, v0, :cond_3

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v9

    .line 249
    cmpl-double v2, v9, v12

    if-ltz v2, :cond_0

    cmpg-double v2, v9, v14

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move v7, v2

    .line 251
    :goto_1
    sub-double v2, v9, v5

    cmpg-double v2, v2, p7

    if-gez v2, :cond_1

    const/4 v2, 0x1

    .line 254
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v22, v0

    cmpg-double v3, v22, p9

    if-gez v3, :cond_2

    const/4 v3, 0x1

    .line 255
    :goto_3
    if-eqz v7, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 257
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 258
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 265
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/google/android/maps/driveabout/nav/w;->b(D)I

    move-result v2

    sub-int v8, v2, v19

    .line 266
    new-instance v2, Lcom/google/android/maps/driveabout/e/f;

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;F)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 267
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/e/e;->a(Lcom/google/android/maps/driveabout/model/ag;I)D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/maps/driveabout/e/f;-><init>(Lcom/google/android/maps/driveabout/model/ab;IDZI)V

    .line 266
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v9

    .line 247
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v2

    goto :goto_0

    .line 249
    :cond_0
    const/4 v2, 0x0

    move v7, v2

    goto :goto_1

    .line 251
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 254
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 271
    :cond_3
    add-int/lit8 v2, v17, -0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 272
    new-instance v2, Lcom/google/android/maps/driveabout/e/f;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/model/ag;->c()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    add-int/lit8 v4, v17, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/maps/driveabout/e/f;-><init>(Lcom/google/android/maps/driveabout/model/ab;IDZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_4
    return-object v11

    :cond_5
    move-wide v2, v5

    goto :goto_4
.end method

.method private static a(ZLcom/google/android/maps/driveabout/model/ab;Ljava/util/Iterator;DIIDI)Ljava/util/List;
    .locals 17

    .prologue
    .line 347
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 348
    mul-double v14, p7, p7

    .line 349
    new-instance v16, Lcom/google/android/maps/driveabout/e/g;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/maps/driveabout/e/g;-><init>()V

    .line 350
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/maps/driveabout/f/e;

    .line 352
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1}, Lcom/google/android/maps/driveabout/e/e;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/e/g;)V

    .line 353
    const/16 v3, 0x168

    move/from16 v0, p5

    if-eq v0, v3, :cond_1

    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/android/maps/driveabout/e/g;->b:I

    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v6, v3, v2}, Lcom/google/android/maps/driveabout/e/e;->a(DLcom/google/android/maps/driveabout/f/e;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    :cond_1
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/android/maps/driveabout/e/g;->c:F

    float-to-double v3, v3

    cmpg-double v3, v3, v14

    if-gez v3, :cond_0

    .line 359
    new-instance v3, Lcom/google/android/maps/driveabout/e/d;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/android/maps/driveabout/e/g;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    move-object/from16 v0, v16

    iget v7, v0, Lcom/google/android/maps/driveabout/e/g;->b:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/google/android/maps/driveabout/e/g;->c:F

    float-to-double v8, v4

    .line 361
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move/from16 v4, p0

    move/from16 v8, p9

    move-object/from16 v9, p1

    move/from16 v12, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/maps/driveabout/e/d;-><init>(ZLcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/f/e;IILcom/google/android/maps/driveabout/model/ab;DI)V

    .line 359
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_2
    return-object v13
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/e/g;)V
    .locals 7

    .prologue
    .line 401
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 402
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 403
    new-instance v3, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 404
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p2, Lcom/google/android/maps/driveabout/e/g;->c:F

    .line 405
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/e;->e()I

    move-result v4

    .line 406
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-ge v0, v5, :cond_1

    .line 407
    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/f/e;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 408
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v2}, Lcom/google/android/maps/driveabout/f/e;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 409
    invoke-static {v1, v2, p0, v3}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v5

    .line 411
    iget v6, p2, Lcom/google/android/maps/driveabout/e/g;->c:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    .line 412
    iput v5, p2, Lcom/google/android/maps/driveabout/e/g;->c:F

    .line 413
    iput v0, p2, Lcom/google/android/maps/driveabout/e/g;->b:I

    .line 414
    iget-object v5, p2, Lcom/google/android/maps/driveabout/e/g;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 406
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 560
    const-string v0, "EndpointFinder"

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 449
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 453
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    .line 454
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/e/d;

    .line 456
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    const-string v0, "More than 2 endpoints. Dropping all."

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/lang/String;)V

    .line 463
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v3, v0, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    .line 470
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 472
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 475
    :cond_4
    const-string v0, "Endpoints don\'t line up. Dropping all."

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/lang/String;)V

    .line 477
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;D)V
    .locals 5

    .prologue
    .line 430
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 431
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    .line 433
    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/e/d;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, v0, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/e/d;->a:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, v0, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    const/4 v4, 0x0

    .line 434
    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 435
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 436
    :cond_3
    iget-wide v2, v0, Lcom/google/android/maps/driveabout/e/d;->g:D

    cmpl-double v0, v2, p1

    if-lez v0, :cond_0

    .line 437
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 440
    :cond_4
    return-void
.end method

.method private static a(DLcom/google/android/maps/driveabout/f/e;II)Z
    .locals 4

    .prologue
    .line 384
    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/e/e;->a(Lcom/google/android/maps/driveabout/f/e;I)D

    move-result-wide v0

    .line 385
    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 386
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 387
    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double v0, v2, v0

    .line 389
    :cond_0
    int-to-double v2, p4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Ljava/util/Collection;
    .locals 13

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/m;->f()I

    move-result v0

    int-to-double v4, v0

    mul-double v7, v2, v4

    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/e;->a:Lcom/google/android/maps/driveabout/f/b;

    invoke-virtual {v0, v1, v7, v8}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/model/ab;D)Ljava/util/Iterator;

    move-result-object v2

    .line 104
    const/16 v5, 0x168

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getBearing()F

    move-result v0

    .line 108
    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/m;->d()I

    move-result v5

    move v3, v0

    .line 110
    :goto_0
    const/4 v0, 0x1

    float-to-double v3, v3

    const/4 v6, 0x0

    const/4 v9, -0x1

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/e/e;->a(ZLcom/google/android/maps/driveabout/model/ab;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v10

    .line 112
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 113
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    .line 114
    iget-wide v5, v0, Lcom/google/android/maps/driveabout/e/d;->g:D

    cmpg-double v5, v5, v2

    if-gez v5, :cond_0

    .line 115
    iget-wide v2, v0, Lcom/google/android/maps/driveabout/e/d;->g:D

    goto :goto_1

    .line 118
    :cond_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 119
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/m;->g()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    .line 118
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v10, v0, v1}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/util/List;D)V

    .line 125
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 126
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/maps/driveabout/e/d;

    .line 129
    iget-object v0, v9, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/e;->a:Lcom/google/android/maps/driveabout/f/b;

    iget-object v1, v9, Lcom/google/android/maps/driveabout/e/d;->c:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/f/e;)Lcom/google/android/maps/driveabout/f/e;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_3

    .line 132
    new-instance v0, Lcom/google/android/maps/driveabout/e/d;

    iget-boolean v1, v9, Lcom/google/android/maps/driveabout/e/d;->a:Z

    iget-object v2, v9, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v4, v9, Lcom/google/android/maps/driveabout/e/d;->d:I

    iget v5, v9, Lcom/google/android/maps/driveabout/e/d;->e:I

    iget-object v6, v9, Lcom/google/android/maps/driveabout/e/d;->f:Lcom/google/android/maps/driveabout/model/ab;

    iget-wide v7, v9, Lcom/google/android/maps/driveabout/e/d;->g:D

    iget v9, v9, Lcom/google/android/maps/driveabout/e/d;->h:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/e/d;-><init>(ZLcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/f/e;IILcom/google/android/maps/driveabout/model/ab;DI)V

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 140
    :cond_4
    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    return-object v10

    :cond_5
    move v3, v0

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)Ljava/util/Collection;
    .locals 17

    .prologue
    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v12

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 155
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/m;->b()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v12

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 157
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/m;->c()I

    move-result v4

    int-to-double v4, v4

    mul-double v14, v12, v4

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 159
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/m;->h()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v12

    .line 160
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 161
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/util/m;->i()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v12

    .line 162
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 163
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/util/m;->j()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v12

    .line 164
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 165
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/util/m;->k()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    .line 166
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 167
    double-to-int v2, v2

    double-to-int v3, v14

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/e/e;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/nav/w;II)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_3

    .line 171
    const-string v3, "Projection: "

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aa;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v2

    move-object/from16 v1, p2

    .line 174
    invoke-static/range {v1 .. v11}, Lcom/google/android/maps/driveabout/e/e;->a(Lcom/google/android/maps/driveabout/nav/w;DDDDD)Ljava/util/List;

    move-result-object v1

    .line 177
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v8, v12, v2

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/maps/driveabout/e/f;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/e/e;->a:Lcom/google/android/maps/driveabout/f/b;

    iget-object v2, v11, Lcom/google/android/maps/driveabout/e/f;->a:Lcom/google/android/maps/driveabout/model/ab;

    .line 181
    invoke-virtual {v1, v2, v8, v9}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/model/ab;D)Ljava/util/Iterator;

    move-result-object v3

    .line 182
    iget-boolean v1, v11, Lcom/google/android/maps/driveabout/e/f;->d:Z

    if-eqz v1, :cond_1

    const/16 v6, 0x168

    .line 184
    :goto_2
    const/4 v1, 0x0

    iget-object v2, v11, Lcom/google/android/maps/driveabout/e/f;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget-wide v4, v11, Lcom/google/android/maps/driveabout/e/f;->c:D

    iget v7, v11, Lcom/google/android/maps/driveabout/e/f;->e:I

    iget v10, v11, Lcom/google/android/maps/driveabout/e/f;->b:I

    invoke-static/range {v1 .. v10}, Lcom/google/android/maps/driveabout/e/e;->a(ZLcom/google/android/maps/driveabout/model/ab;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v1

    .line 188
    iget-boolean v2, v11, Lcom/google/android/maps/driveabout/e/f;->d:Z

    if-eqz v2, :cond_2

    .line 189
    invoke-static {v1, v8, v9}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/util/List;D)V

    .line 193
    :goto_3
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/util/m;

    .line 183
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/m;->e()I

    move-result v6

    goto :goto_2

    .line 191
    :cond_2
    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/util/List;)V

    goto :goto_3

    .line 200
    :cond_3
    return-object v16
.end method
