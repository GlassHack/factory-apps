.class Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
.super Ljava/lang/Object;
.source "VibrantColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/app/VibrantColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private final colorPopulations:Landroid/util/SparseIntArray;

.field private lowerIndex:I

.field private maxBlue:I

.field private maxGreen:I

.field private maxRed:I

.field private minBlue:I

.field private minGreen:I

.field private minRed:I

.field private final sortedValidColors:[I

.field final synthetic this$0:Lcom/google/android/wearable/app/VibrantColorExtractor;

.field private upperIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/wearable/app/VibrantColorExtractor;Landroid/util/SparseIntArray;[III)V
    .locals 0
    .param p2, "colorPopulations"    # Landroid/util/SparseIntArray;
    .param p3, "sortedValidColors"    # [I
    .param p4, "lowerIndex"    # I
    .param p5, "upperIndex"    # I

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->this$0:Lcom/google/android/wearable/app/VibrantColorExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->colorPopulations:Landroid/util/SparseIntArray;

    .line 380
    iput-object p3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    .line 381
    iput p4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    .line 382
    iput p5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    .line 383
    invoke-virtual {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->fitBox()V

    .line 384
    return-void
.end method

.method private modifySignificantOctet(III)V
    .locals 6
    .param p1, "dimension"    # I
    .param p2, "lowerIndex"    # I
    .param p3, "upperIndex"    # I

    .prologue
    .line 528
    packed-switch p1, :pswitch_data_0

    .line 549
    :cond_0
    :pswitch_0
    return-void

    .line 534
    :pswitch_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 535
    iget-object v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    aget v0, v2, v1

    .line 536
    .local v0, "color":I
    iget-object v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v0, 0xff

    .line 537
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v0    # "color":I
    .end local v1    # "i":I
    :pswitch_2
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    if-gt v1, p3, :cond_0

    .line 543
    iget-object v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    aget v0, v2, v1

    .line 544
    .restart local v0    # "color":I
    iget-object v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 545
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v1

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method canSplit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->getColorCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findSplitPoint()I
    .locals 7

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->getLongestColorDimension()I

    move-result v3

    .line 486
    .local v3, "longestDimension":I
    iget v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->modifySignificantOctet(III)V

    .line 489
    iget-object v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    iget v6, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->sort([III)V

    .line 492
    iget v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->modifySignificantOctet(III)V

    .line 494
    invoke-virtual {p0, v3}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->midPoint(I)I

    move-result v1

    .line 496
    .local v1, "dimensionMidPoint":I
    iget v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    if-gt v2, v4, :cond_1

    .line 497
    iget-object v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    aget v0, v4, v2

    .line 499
    .local v0, "color":I
    packed-switch v3, :pswitch_data_0

    .line 496
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    :pswitch_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 518
    .end local v0    # "color":I
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 506
    .restart local v0    # "color":I
    .restart local v2    # "i":I
    :pswitch_1
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    goto :goto_1

    .line 511
    :pswitch_2
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    if-le v4, v1, :cond_0

    goto :goto_1

    .line 518
    .end local v0    # "color":I
    :cond_1
    iget v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    goto :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method fitBox()V
    .locals 6

    .prologue
    .line 403
    const/16 v5, 0xff

    iput v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minBlue:I

    iput v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minGreen:I

    iput v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minRed:I

    .line 404
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxBlue:I

    iput v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxGreen:I

    iput v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxRed:I

    .line 406
    iget v3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    if-gt v3, v5, :cond_6

    .line 407
    iget-object v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    aget v1, v5, v3

    .line 408
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 409
    .local v4, "r":I
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 410
    .local v2, "g":I
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 411
    .local v0, "b":I
    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxRed:I

    if-le v4, v5, :cond_0

    .line 412
    iput v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxRed:I

    .line 414
    :cond_0
    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minRed:I

    if-ge v4, v5, :cond_1

    .line 415
    iput v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minRed:I

    .line 417
    :cond_1
    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxGreen:I

    if-le v2, v5, :cond_2

    .line 418
    iput v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxGreen:I

    .line 420
    :cond_2
    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minGreen:I

    if-ge v2, v5, :cond_3

    .line 421
    iput v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minGreen:I

    .line 423
    :cond_3
    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxBlue:I

    if-le v0, v5, :cond_4

    .line 424
    iput v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxBlue:I

    .line 426
    :cond_4
    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minBlue:I

    if-ge v0, v5, :cond_5

    .line 427
    iput v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minBlue:I

    .line 406
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "b":I
    .end local v1    # "color":I
    .end local v2    # "g":I
    .end local v4    # "r":I
    :cond_6
    return-void
.end method

.method getAverageColor()Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    const/4 v9, 0x0

    .line 554
    .local v9, "redSum":I
    const/4 v6, 0x0

    .line 555
    .local v6, "greenSum":I
    const/4 v2, 0x0

    .line 556
    .local v2, "blueSum":I
    const/4 v10, 0x0

    .line 558
    .local v10, "totalPopulation":I
    iget v7, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    .local v7, "i":I
    :goto_0
    iget v11, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    if-gt v7, v11, :cond_0

    .line 559
    iget-object v11, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    aget v3, v11, v7

    .line 560
    .local v3, "color":I
    iget-object v11, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->colorPopulations:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 562
    .local v4, "colorPopulation":I
    add-int/2addr v10, v4

    .line 563
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v9, v11

    .line 564
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v6, v11

    .line 565
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v2, v11

    .line 558
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 568
    .end local v3    # "color":I
    .end local v4    # "colorPopulation":I
    :cond_0
    int-to-float v11, v9

    int-to-float v12, v10

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 569
    .local v8, "redAverage":I
    int-to-float v11, v6

    int-to-float v12, v10

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 570
    .local v5, "greenAverage":I
    int-to-float v11, v2

    int-to-float v12, v10

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 571
    .local v1, "blueAverage":I
    invoke-static {v8, v5, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 573
    .local v0, "averageColor":I
    new-instance v11, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method getColorCount()I
    .locals 2

    .prologue
    .line 395
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    iget v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->lowerIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getLongestColorDimension()I
    .locals 5

    .prologue
    .line 458
    iget v3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxRed:I

    iget v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minRed:I

    sub-int v2, v3, v4

    .line 459
    .local v2, "redLength":I
    iget v3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxGreen:I

    iget v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minGreen:I

    sub-int v1, v3, v4

    .line 460
    .local v1, "greenLength":I
    iget v3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxBlue:I

    iget v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minBlue:I

    sub-int v0, v3, v4

    .line 462
    .local v0, "blueLength":I
    if-lt v2, v1, :cond_0

    if-lt v2, v0, :cond_0

    .line 463
    const/4 v3, -0x3

    .line 467
    :goto_0
    return v3

    .line 464
    :cond_0
    if-lt v1, v2, :cond_1

    if-lt v1, v0, :cond_1

    .line 465
    const/4 v3, -0x2

    goto :goto_0

    .line 467
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method getVolume()I
    .locals 3

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxRed:I

    iget v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxGreen:I

    iget v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxBlue:I

    iget v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method midPoint(I)I
    .locals 2
    .param p1, "dimension"    # I

    .prologue
    .line 580
    packed-switch p1, :pswitch_data_0

    .line 583
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minRed:I

    iget v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxRed:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 587
    :goto_0
    return v0

    .line 585
    :pswitch_0
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minGreen:I

    iget v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxGreen:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 587
    :pswitch_1
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->minBlue:I

    iget v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->maxBlue:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method splitBox()Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
    .locals 7

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->canSplit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can not split a box with only 1 color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->findSplitPoint()I

    move-result v6

    .line 445
    .local v6, "splitPoint":I
    new-instance v0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;

    iget-object v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->this$0:Lcom/google/android/wearable/app/VibrantColorExtractor;

    iget-object v2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->colorPopulations:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->sortedValidColors:[I

    add-int/lit8 v4, v6, 0x1

    iget v5, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;-><init>(Lcom/google/android/wearable/app/VibrantColorExtractor;Landroid/util/SparseIntArray;[III)V

    .line 448
    .local v0, "newBox":Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
    iput v6, p0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->upperIndex:I

    .line 449
    invoke-virtual {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->fitBox()V

    .line 451
    return-object v0
.end method
