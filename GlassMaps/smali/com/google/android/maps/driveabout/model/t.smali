.class public final Lcom/google/android/maps/driveabout/model/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:F

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/maps/driveabout/model/aq;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:F


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;F)V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p1, p0, Lcom/google/android/maps/driveabout/model/t;->a:I

    .line 260
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    .line 261
    iput p3, p0, Lcom/google/android/maps/driveabout/model/t;->c:I

    .line 262
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/model/t;->d:F

    .line 263
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    .line 264
    iput-object p5, p0, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    .line 265
    iput p6, p0, Lcom/google/android/maps/driveabout/model/t;->g:I

    .line 266
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/t;->h:Ljava/lang/String;

    .line 267
    iput p8, p0, Lcom/google/android/maps/driveabout/model/t;->i:F

    .line 268
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    .prologue
    .line 294
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 295
    const/4 v2, 0x0

    .line 296
    const/4 v3, 0x1

    .line 297
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 302
    :cond_0
    const/4 v4, 0x0

    .line 303
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/t;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    :cond_1
    const/4 v5, 0x0

    .line 311
    const/4 v6, -0x1

    .line 312
    const/4 v0, 0x0

    .line 313
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/t;->d(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 314
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 315
    invoke-virtual {p2, v5}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v5

    .line 316
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 317
    invoke-static {v6, p3}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 318
    aget-object v0, p3, v6

    :cond_2
    move-object v7, v0

    .line 328
    :goto_0
    const/4 v8, 0x0

    .line 329
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/t;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/z;->a(I)F

    move-result v8

    .line 335
    :cond_3
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    if-eq v1, v0, :cond_5

    .line 337
    new-instance v0, Lcom/google/android/maps/driveabout/model/t;

    xor-int/lit8 v1, v1, 0x8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/model/t;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v0, Lcom/google/android/maps/driveabout/model/t;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/model/t;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :goto_1
    return-void

    .line 320
    :cond_4
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/t;->a(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, p5

    move-object v5, p4

    .line 324
    goto :goto_0

    .line 342
    :cond_5
    new-instance v0, Lcom/google/android/maps/driveabout/model/t;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/model/t;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v7, v0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 374
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/t;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/t;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static d(I)Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .locals 1

    .prologue
    .line 407
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .locals 1

    .prologue
    .line 415
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/google/android/maps/driveabout/model/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/t;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/google/android/maps/driveabout/model/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/t;->b(I)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/maps/driveabout/model/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/t;->c(I)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/maps/driveabout/model/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/t;->f(I)Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 499
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 482
    check-cast p1, Lcom/google/android/maps/driveabout/model/t;

    .line 483
    iget v2, p0, Lcom/google/android/maps/driveabout/model/t;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/t;->a:I

    if-ne v2, v3, :cond_0

    .line 484
    iget v2, p0, Lcom/google/android/maps/driveabout/model/t;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/t;->i:F

    .line 485
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 486
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 487
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 489
    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    if-nez v2, :cond_6

    .line 490
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    if-nez v2, :cond_0

    .line 492
    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->h:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 493
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/t;->h:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 497
    :cond_4
    iget v2, p0, Lcom/google/android/maps/driveabout/model/t;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/t;->c:I

    int-to-float v3, v3

    .line 498
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 499
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    if-nez v2, :cond_8

    :goto_1
    move v1, v0

    goto :goto_0

    .line 488
    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 491
    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/aq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 494
    :cond_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/t;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_8
    move v0, v1

    .line 499
    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 465
    .line 467
    iget v0, p0, Lcom/google/android/maps/driveabout/model/t;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 468
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/t;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 469
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 470
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 471
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 472
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/t;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 473
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 474
    return v0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->f:Lcom/google/android/maps/driveabout/model/aq;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aq;->hashCode()I

    move-result v0

    goto :goto_1

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 473
    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/t;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
