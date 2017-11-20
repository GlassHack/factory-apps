.class public final Lcom/google/android/maps/driveabout/model/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 63
    iput p2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 64
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 68
    iput p2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 69
    iput p3, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 70
    return-void
.end method

.method public static a(D)D
    .locals 4

    .prologue
    .line 174
    const-wide v0, 0x41731680b1202bfeL    # 2.0015115070354454E7

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, p0

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 176
    const-wide/high16 v2, 0x41c0000000000000L    # 5.36870912E8

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)D
    .locals 5

    .prologue
    .line 604
    invoke-virtual {p1, p0}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 605
    iget v1, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-double v1, v1

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    .line 607
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    .line 608
    :cond_0
    return-wide v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZLcom/google/android/maps/driveabout/model/ab;)V

    .line 744
    invoke-virtual {p2, p3}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    return v0
.end method

.method public static a(DD)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 116
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/model/ab;->b(DD)V

    .line 117
    return-object v0
.end method

.method public static a(II)Lcom/google/android/maps/driveabout/model/ab;
    .locals 6

    .prologue
    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 85
    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 3

    .prologue
    .line 197
    iget v0, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    if-gez v0, :cond_0

    .line 198
    iget v0, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    neg-int v0, v0

    .line 199
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shr-int/2addr v1, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/model/aw;->a:I

    add-int/2addr v1, v2

    .line 200
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shr-int v0, v2, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/model/aw;->b:I

    add-int/2addr v2, v0

    .line 201
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 206
    :goto_0
    return-object v0

    .line 203
    :cond_0
    iget v0, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    .line 204
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shl-int/2addr v1, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/model/aw;->a:I

    add-int/2addr v1, v2

    .line 205
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shl-int v0, v2, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/model/aw;->b:I

    add-int/2addr v2, v0

    .line 206
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 553
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 554
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 555
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 664
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 665
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 666
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 667
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 520
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 521
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 522
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 523
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZLcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 710
    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    .line 712
    if-eqz p3, :cond_2

    .line 715
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 716
    invoke-virtual {p4, p0}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 725
    :goto_0
    return-void

    .line 717
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 718
    invoke-virtual {p4, p1}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_0

    .line 720
    :cond_1
    invoke-static {p0, p1, v0, p4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_0

    .line 723
    :cond_2
    invoke-static {p0, p1, v0, p4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_0
.end method

.method static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;[II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 285
    mul-int/lit8 v0, p3, 0x3

    .line 286
    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    if-gez v1, :cond_0

    .line 287
    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    neg-int v1, v1

    .line 288
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/model/aw;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 289
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int v1, v3, v1

    iget v3, p1, Lcom/google/android/maps/driveabout/model/aw;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    .line 290
    aput v5, p2, v0

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_0
    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    .line 293
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/model/aw;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 294
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int v1, v3, v1

    iget v3, p1, Lcom/google/android/maps/driveabout/model/aw;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    .line 295
    aput v5, p2, v0

    goto :goto_0
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F
    .locals 4

    .prologue
    .line 615
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v0, v0

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 616
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v1, v1

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 617
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 618
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZLcom/google/android/maps/driveabout/model/ab;)V

    .line 754
    invoke-virtual {p2, p3}, Lcom/google/android/maps/driveabout/model/ab;->d(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    return v0
.end method

.method public static b(II)Lcom/google/android/maps/driveabout/model/ab;
    .locals 6

    .prologue
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 95
    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->i()F

    move-result v0

    .line 586
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 587
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 588
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 589
    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 537
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 538
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 539
    return-void
.end method

.method static b(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;[II)V
    .locals 5

    .prologue
    .line 309
    mul-int/lit8 v0, p3, 0x3

    .line 310
    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    if-gez v1, :cond_0

    .line 311
    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    neg-int v1, v1

    .line 312
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/model/aw;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 313
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/model/aw;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 314
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shr-int v1, v2, v1

    aput v1, p2, v0

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->c:I

    .line 317
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/model/aw;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    .line 318
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/model/aw;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 319
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shl-int v1, v2, v1

    aput v1, p2, v0

    goto :goto_0
.end method

.method public static c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F
    .locals 7

    .prologue
    .line 690
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 691
    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 692
    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 693
    iget v3, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 694
    iget v4, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v5, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 695
    iget v5, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v6, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 697
    mul-float/2addr v3, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    div-float v0, v3, v0

    return v0
.end method

.method public static c(II)Lcom/google/android/maps/driveabout/model/ab;
    .locals 6

    .prologue
    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 105
    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 17

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-long v1, v1

    .line 636
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-long v3, v3

    .line 637
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-long v5, v5

    .line 638
    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-long v7, v7

    .line 639
    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-long v9, v9

    .line 640
    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-long v11, v11

    .line 641
    mul-long v13, v3, v11

    mul-long v15, v5, v9

    sub-long/2addr v13, v15

    long-to-int v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 642
    mul-long/2addr v5, v7

    mul-long/2addr v11, v1

    sub-long/2addr v5, v11

    long-to-int v5, v5

    move-object/from16 v0, p2

    iput v5, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 643
    mul-long/2addr v1, v9

    mul-long/2addr v3, v7

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p2

    iput v1, v0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 644
    return-void
.end method

.method private j(Lcom/google/android/maps/driveabout/model/ab;)I
    .locals 2

    .prologue
    .line 865
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-ne v0, v1, :cond_1

    .line 866
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-ne v0, v1, :cond_0

    .line 867
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v0, v1

    .line 871
    :goto_0
    return v0

    .line 869
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 871
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;F)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 675
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 676
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 677
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 410
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 411
    return-void
.end method

.method public final a([II)V
    .locals 3

    .prologue
    .line 382
    mul-int/lit8 v0, p2, 0x3

    .line 383
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    aput v1, p1, v0

    .line 384
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    aput v2, p1, v1

    .line 385
    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    aput v1, p1, v0

    .line 386
    return-void
.end method

.method public final b()D
    .locals 6

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L    # 5.8516723170686385E-9

    mul-double/2addr v0, v2

    .line 144
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    .line 145
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(DD)V
    .locals 8

    .prologue
    const-wide v6, 0x41a45f306dc9c883L    # 1.708913188941079E8

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 443
    mul-double v0, p1, v2

    .line 444
    mul-double/2addr v2, p3

    .line 445
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 446
    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 447
    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 448
    invoke-virtual {p0, v2, v0}, Lcom/google/android/maps/driveabout/model/ab;->d(II)V

    .line 449
    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 404
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 405
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 406
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 407
    return-void
.end method

.method public final c(Lcom/google/android/maps/driveabout/model/ab;)F
    .locals 4

    .prologue
    .line 493
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 494
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 495
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 496
    mul-float/2addr v0, v0

    .line 497
    mul-float/2addr v1, v1

    .line 498
    mul-float/2addr v2, v2

    .line 499
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final c()I
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->d()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/model/ab;->j(Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v0

    return v0
.end method

.method public final d()D
    .locals 6

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 160
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L    # 5.8516723170686385E-9

    mul-double/2addr v0, v2

    .line 161
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    .line 162
    :goto_0
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 163
    sub-double/2addr v0, v4

    goto :goto_0

    .line 165
    :cond_0
    :goto_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 166
    add-double/2addr v0, v4

    goto :goto_1

    .line 168
    :cond_1
    return-wide v0
.end method

.method public final d(Lcom/google/android/maps/driveabout/model/ab;)F
    .locals 4

    .prologue
    .line 507
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 508
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 509
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 510
    mul-float/2addr v0, v0

    .line 511
    mul-float/2addr v1, v1

    .line 512
    mul-float/2addr v2, v2

    .line 513
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 425
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 426
    iput p2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 428
    return-void
.end method

.method public final e()D
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 5

    .prologue
    .line 529
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v4, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 840
    instance-of v1, p1, Lcom/google/android/maps/driveabout/model/ab;

    if-eqz v1, :cond_0

    .line 841
    check-cast p1, Lcom/google/android/maps/driveabout/model/ab;

    .line 842
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 844
    :cond_0
    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    return v0
.end method

.method public final f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 5

    .prologue
    .line 545
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iget v4, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    return v0
.end method

.method public final g(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 653
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 654
    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/model/ab;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 655
    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    return v0
.end method

.method public final h(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 796
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 797
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 798
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 799
    :goto_0
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    const/high16 v1, -0x20000000

    if-ge v0, v1, :cond_0

    .line 800
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    goto :goto_0

    .line 802
    :cond_0
    :goto_1
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    const/high16 v1, 0x20000000

    if-lt v0, v1, :cond_1

    .line 803
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    goto :goto_1

    .line 805
    :cond_1
    return-void
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 849
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 850
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 851
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 852
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xd

    xor-int/2addr v0, v3

    .line 853
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x8

    xor-int/2addr v1, v3

    .line 854
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0xd

    xor-int/2addr v2, v3

    .line 855
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    .line 856
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x10

    xor-int/2addr v1, v3

    .line 857
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    .line 858
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0x3

    xor-int/2addr v0, v3

    .line 859
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0xa

    xor-int/2addr v1, v3

    .line 860
    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    .line 861
    return v0
.end method

.method public final i()F
    .locals 4

    .prologue
    .line 472
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 473
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 474
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 475
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final i(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 4

    .prologue
    const/high16 v3, 0x20000000

    const v2, 0x1fffffff

    const/high16 v1, -0x20000000

    .line 812
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-ge v0, v1, :cond_0

    .line 813
    iput v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 819
    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-ge v0, v1, :cond_2

    .line 820
    iput v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 826
    :goto_1
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 827
    return-void

    .line 814
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-lt v0, v3, :cond_1

    .line 815
    iput v2, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    goto :goto_0

    .line 817
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    goto :goto_0

    .line 821
    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-lt v0, v3, :cond_3

    .line 822
    iput v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    goto :goto_1

    .line 824
    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iput v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    goto :goto_1
.end method

.method public final j()Ljava/lang/String;
    .locals 6

    .prologue
    .line 835
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->d()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 831
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
