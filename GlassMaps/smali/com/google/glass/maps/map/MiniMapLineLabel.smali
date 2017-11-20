.class public Lcom/google/glass/maps/map/MiniMapLineLabel;
.super Lcom/google/glass/maps/map/MiniMapLabel;
.source "SourceFile"


# static fields
.field private static final CANDIDATE_LINE_AT_END:I = 0x3

.field private static final CANDIDATE_LINE_AT_START:I = 0x2

.field private static final CANDIDATE_LINE_CENTER:I = 0x1

.field private static final CANDIDATE_LINE_NEAR_END:I = 0x5

.field private static final CANDIDATE_LINE_NEAR_START:I = 0x4

.field private static final CANDIDATE_SINGLE_SEGMENT:I = 0x0

.field private static final INDICES_PER_SEGMENT:I = 0x6

.field private static final MAX_CENTERLINE_BEND_ANGLE_DEG:I = 0x3c

.field private static final MAX_PIXEL_SIZE_RATIO:F = 1.25f

.field private static final MIN_CHARS_PER_SEGMENT:I = 0x3

.field private static final MIN_PIXEL_SIZE_RATIO:F = 0.9f

.field private static final NUM_CANDIDATES:I = 0x6

.field private static final SIMPLIFICATION_THRESHOLD:F = 0.35f

.field private static final VERTEX_SNAPPING_THRESHOLD:F = 1.0E-4f

.field private static final VERTICAL_PADDING_RATIO:F = 1.2f

.field private static final VERTICES_PER_SEGMENT:I = 0x4


# instance fields
.field private alpha:F

.field private animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

.field private bound:Lcom/google/android/maps/driveabout/model/an;

.field private candidate:I

.field private candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

.field private final fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

.field private indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

.field private initialized:Z

.field private lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private final pointPool:Lcom/google/glass/maps/map/PointPool;

.field private reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private final text:Ljava/lang/String;

.field private final textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

.field private final tmpBuffer:[F

.field private final unitSize:F

.field private vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/model/j;ILcom/google/android/maps/driveabout/model/ag;FLcom/google/glass/maps/map/TextTextureProvider;)V
    .locals 3

    .prologue
    .line 150
    const-string v1, "L|"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/google/glass/maps/map/MiniMapLabel;-><init>(Lcom/google/android/maps/driveabout/model/j;Ljava/lang/String;I)V

    .line 73
    invoke-static {}, Lcom/google/glass/maps/map/PointPool;->getInstance()Lcom/google/glass/maps/map/PointPool;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    .line 101
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->alpha:F

    .line 151
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->text:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    .line 153
    iput-object p6, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    .line 154
    iput p5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    .line 155
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static addCornerPair(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;)V
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(F)V

    .line 473
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(F)V

    .line 474
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(F)V

    .line 475
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(F)V

    .line 476
    return-void
.end method

.method private constructCenterlineForCurrentCandidate()Lcom/google/android/maps/driveabout/model/ag;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 504
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->constructCenterlineGeometry()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v2

    .line 506
    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 508
    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-object v0

    .line 512
    :cond_1
    invoke-static {v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->containsSharpTurn(Lcom/google/android/maps/driveabout/model/ag;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 516
    goto :goto_0
.end method

.method private constructCenterlineGeometry()Lcom/google/android/maps/driveabout/model/ag;
    .locals 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v8, 0x3e800000    # 0.25f

    .line 521
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextTextureProvider;->getDataWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    mul-float/2addr v1, v0

    .line 522
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    .line 523
    add-int/lit8 v2, v0, -0x1

    .line 527
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    if-nez v0, :cond_2

    .line 528
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 529
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v3

    .line 530
    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    .line 531
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v2, v2, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 532
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v4, v4, Lcom/google/glass/maps/map/PointPool;->A1:Lcom/google/android/maps/driveabout/model/ab;

    .line 533
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v5, v5, Lcom/google/glass/maps/map/PointPool;->A2:Lcom/google/android/maps/driveabout/model/ab;

    .line 534
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v6, v6, Lcom/google/glass/maps/map/PointPool;->A3:Lcom/google/android/maps/driveabout/model/ab;

    .line 535
    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v7, v0, v5}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 536
    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0, v6}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 541
    sub-float v0, v3, v1

    div-float/2addr v0, v3

    .line 542
    mul-float v1, v0, v8

    invoke-static {v5, v6, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 543
    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    invoke-static {v6, v5, v0, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 544
    invoke-static {v2, v4}, Lcom/google/android/maps/driveabout/model/ag;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    .line 594
    :goto_1
    return-object v0

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->d()F

    move-result v0

    .line 553
    iget v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    packed-switch v2, :pswitch_data_0

    .line 594
    const/4 v0, 0x0

    goto :goto_1

    .line 559
    :pswitch_0
    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    .line 560
    add-float/2addr v1, v0

    .line 561
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getSubline(Lcom/google/android/maps/driveabout/model/ag;FF)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    goto :goto_1

    .line 567
    :pswitch_1
    iget v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v3}, Lcom/google/glass/maps/map/TextTextureProvider;->getTextSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 569
    add-float/2addr v1, v0

    .line 570
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getSubline(Lcom/google/android/maps/driveabout/model/ag;FF)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    goto :goto_1

    .line 576
    :pswitch_2
    const/4 v2, 0x0

    sub-float/2addr v0, v1

    iget v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    .line 577
    invoke-virtual {v4}, Lcom/google/glass/maps/map/TextTextureProvider;->getTextSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 576
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 578
    add-float/2addr v1, v0

    .line 579
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getSubline(Lcom/google/android/maps/driveabout/model/ag;FF)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    goto :goto_1

    .line 583
    :pswitch_3
    sub-float/2addr v0, v1

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v2

    .line 584
    add-float/2addr v1, v0

    .line 585
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getSubline(Lcom/google/android/maps/driveabout/model/ag;FF)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    goto :goto_1

    .line 589
    :pswitch_4
    sub-float/2addr v0, v1

    const v2, 0x3f2b851f    # 0.67f

    mul-float/2addr v0, v2

    .line 590
    add-float/2addr v1, v0

    .line 591
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getSubline(Lcom/google/android/maps/driveabout/model/ag;FF)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    goto :goto_1

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static containsSharpTurn(Lcom/google/android/maps/driveabout/model/ag;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 730
    const/4 v2, 0x2

    if-ge v3, v2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 734
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/ag;->c(I)F

    move-result v4

    move v2, v1

    .line 735
    :goto_1
    if-ge v2, v3, :cond_0

    .line 736
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/model/ag;->c(I)F

    move-result v5

    .line 737
    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 738
    const/high16 v6, 0x42700000    # 60.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v6, 0x43960000    # 300.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v0, v1

    .line 740
    goto :goto_0

    .line 735
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static findNearest(F[FI)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 637
    .line 638
    aget v0, p1, p2

    sub-float v0, p0, v0

    .line 639
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_2

    .line 654
    :cond_0
    :goto_0
    return p2

    .line 652
    :cond_1
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    .line 642
    :cond_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_3

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_3

    .line 643
    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float v1, p0, v1

    .line 644
    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1

    .line 645
    neg-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 646
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 654
    :cond_3
    array-length v0, p1

    add-int/lit8 p2, v0, -0x1

    goto :goto_0
.end method

.method public static forRoad(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/android/maps/driveabout/model/ao;Ljava/lang/String;Lcom/google/android/maps/driveabout/model/ag;Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/map/MiniMapTheme;Lcom/google/glass/maps/map/TextGenerator;)Lcom/google/glass/maps/map/MiniMapLineLabel;
    .locals 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object v3, p5, Lcom/google/glass/maps/map/MiniMapTheme;->roadLabels:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    .line 127
    invoke-virtual {p4}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v6

    move-object v0, p0

    move-object v1, p6

    move v5, v4

    .line 126
    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/map/TextTextureProvider;->create(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/TextGenerator;Ljava/lang/String;Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;FFF)Lcom/google/glass/maps/map/TextTextureProvider;

    move-result-object v7

    .line 130
    invoke-virtual {p4}, Lcom/google/glass/maps/map/Camera;->getPixelSize()F

    move-result v6

    .line 131
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 132
    invoke-virtual {v7}, Lcom/google/glass/maps/map/TextTextureProvider;->getTextSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 133
    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/model/ag;->b(F)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v5

    .line 136
    :goto_0
    new-instance v1, Lcom/google/glass/maps/map/MiniMapLineLabel;

    .line 137
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ao;->d()I

    move-result v4

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/maps/map/MiniMapLineLabel;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/model/j;ILcom/google/android/maps/driveabout/model/ag;FLcom/google/glass/maps/map/TextTextureProvider;)V

    .line 138
    invoke-direct {v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->selectNextValidCandidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object v5, p3

    goto :goto_0
.end method

.method private generateBound()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 600
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v2, v0, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 601
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v3, v0, Lcom/google/glass/maps/map/PointPool;->A1:Lcom/google/android/maps/driveabout/model/ab;

    .line 602
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v4, v0, Lcom/google/glass/maps/map/PointPool;->A2:Lcom/google/android/maps/driveabout/model/ab;

    .line 603
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v5, v0, Lcom/google/glass/maps/map/PointPool;->A3:Lcom/google/android/maps/driveabout/model/ab;

    .line 605
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v6

    .line 606
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v7}, Lcom/google/glass/maps/map/TextTextureProvider;->getTextSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v0, v7

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v0, v7

    .line 607
    mul-int/lit8 v0, v6, 0x2

    new-array v8, v0, [Lcom/google/android/maps/driveabout/model/ab;

    .line 609
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0, v11, v5}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    move v0, v1

    .line 610
    :goto_0
    if-ge v0, v6, :cond_1

    .line 611
    iget-object v9, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v9, v0, v4}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 616
    invoke-static {v4, v5, v2}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 617
    invoke-static {v2, v7, v3}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 618
    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v9

    aput-object v9, v8, v0

    .line 619
    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/model/ab;->e(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v10

    aput-object v10, v8, v9

    .line 621
    if-ne v0, v1, :cond_0

    .line 623
    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v9

    aput-object v9, v8, v11

    .line 624
    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/model/ab;->e(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v10

    aput-object v10, v8, v9

    .line 626
    :cond_0
    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/model/af;

    invoke-direct {v0, v8}, Lcom/google/android/maps/driveabout/model/af;-><init>([Lcom/google/android/maps/driveabout/model/ab;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->bound:Lcom/google/android/maps/driveabout/model/an;

    .line 629
    return-void
.end method

.method private generateGLGeometry()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 322
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextTextureProvider;->getDataHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 324
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 326
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v1, v1, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 327
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v2, v2, Lcom/google/glass/maps/map/PointPool;->A1:Lcom/google/android/maps/driveabout/model/ab;

    .line 328
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v3, v3, Lcom/google/glass/maps/map/PointPool;->A2:Lcom/google/android/maps/driveabout/model/ab;

    .line 329
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v4, v9, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 330
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v4, v8, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 331
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getOrthoVector(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 333
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v7, v5}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 334
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v7, v5}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 335
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v7, v5}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 336
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Short;

    const/4 v4, 0x6

    invoke-direct {v0, v8, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Short;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

    .line 338
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextTextureProvider;->getMaxTexX()F

    move-result v0

    .line 339
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v4}, Lcom/google/glass/maps/map/TextTextureProvider;->getMaxTexY()F

    move-result v4

    .line 340
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v5, v6, v6}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 341
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v5, v6, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 342
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v5, v0, v6}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 343
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v5, v0, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 344
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v5, v0, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 345
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v5, v0, v6}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 346
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0, v6, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 347
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0, v6, v6}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 349
    const/high16 v0, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    div-float/2addr v0, v4

    .line 350
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-static {v1, v3, v1, v0, v4}, Lcom/google/glass/maps/map/MiniMapLineLabel;->addCornerPair(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;)V

    .line 351
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/glass/maps/map/MiniMapLineLabel;->addCornerPair(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;)V

    .line 353
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

    const/4 v1, 0x3

    invoke-virtual {v0, v9, v8, v7, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Short;->addQuadIndices(IIII)V

    .line 355
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 356
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 357
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 358
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Short;->finish()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->generateGLGeometryMultiSegment(Lcom/google/android/maps/driveabout/model/ag;F)V

    goto :goto_0
.end method

.method private generateGLGeometryMultiSegment(Lcom/google/android/maps/driveabout/model/ag;F)V
    .locals 17

    .prologue
    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v6, v2, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v5, v2, Lcom/google/glass/maps/map/PointPool;->A1:Lcom/google/android/maps/driveabout/model/ab;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v4, v2, Lcom/google/glass/maps/map/PointPool;->A2:Lcom/google/android/maps/driveabout/model/ab;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v7, v2, Lcom/google/glass/maps/map/PointPool;->A3:Lcom/google/android/maps/driveabout/model/ab;

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v8

    .line 373
    add-int/lit8 v9, v8, -0x1

    .line 374
    mul-int/lit8 v2, v9, 0x4

    .line 375
    mul-int/lit8 v3, v9, 0x6

    .line 376
    new-instance v10, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 377
    new-instance v10, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 378
    new-instance v10, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 379
    new-instance v2, Lcom/google/glass/maps/opengl/GLBuffer$Short;

    const/4 v10, 0x1

    invoke-direct {v2, v10, v3}, Lcom/google/glass/maps/opengl/GLBuffer$Short;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

    .line 383
    new-array v10, v8, [F

    .line 384
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v10, v2

    .line 385
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 386
    invoke-virtual {v6, v5}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 387
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    div-float v11, v2, v3

    .line 388
    const/4 v3, 0x0

    .line 389
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_0

    .line 390
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 391
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v4, v1, v7}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getOrthoVector(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-static {v5, v7, v6, v11, v12}, Lcom/google/glass/maps/map/MiniMapLineLabel;->addCornerPair(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-static {v4, v7, v6, v11, v12}, Lcom/google/glass/maps/map/MiniMapLineLabel;->addCornerPair(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

    add-int/lit8 v13, v3, 0x1

    add-int/lit8 v14, v3, 0x2

    add-int/lit8 v15, v3, 0x3

    invoke-virtual {v12, v3, v13, v14, v15}, Lcom/google/glass/maps/opengl/GLBuffer$Short;->addQuadIndices(IIII)V

    .line 396
    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v12

    .line 397
    add-int/lit8 v13, v2, 0x1

    aget v14, v10, v2

    add-float/2addr v12, v14

    aput v12, v10, v13

    .line 402
    add-int/lit8 v3, v3, 0x4

    .line 389
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto :goto_0

    .line 406
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/TextTextureProvider;->getTextGenerator()Lcom/google/glass/maps/map/TextGenerator;

    move-result-object v2

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v4}, Lcom/google/glass/maps/map/TextTextureProvider;->getTheme()Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    move-result-object v4

    iget-object v4, v4, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->typeface:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    .line 408
    invoke-virtual {v5}, Lcom/google/glass/maps/map/TextTextureProvider;->getTextSize()I

    move-result v5

    .line 407
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/maps/map/TextGenerator;->getAdvanceToCharacters(Ljava/lang/String;Landroid/graphics/Typeface;I)[F

    move-result-object v5

    .line 409
    const/high16 v2, 0x3f800000    # 1.0f

    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    aget v3, v5, v3

    div-float v3, v2, v3

    .line 410
    const/4 v2, 0x0

    :goto_1
    array-length v4, v5

    if-ge v2, v4, :cond_1

    .line 411
    aget v4, v5, v2

    mul-float/2addr v4, v3

    aput v4, v5, v2

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    aget v3, v10, v3

    div-float v3, v2, v3

    .line 417
    new-array v6, v8, [F

    .line 418
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    .line 419
    aget v4, v10, v2

    mul-float/2addr v4, v3

    aput v4, v10, v2

    .line 420
    add-int/lit8 v4, v8, -0x1

    sub-int/2addr v4, v2

    const/high16 v7, 0x3f800000    # 1.0f

    aget v9, v10, v2

    sub-float/2addr v7, v9

    aput v7, v6, v4

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 425
    :cond_2
    const/4 v4, 0x0

    .line 426
    const/4 v3, 0x0

    .line 427
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_3

    .line 428
    aget v7, v10, v2

    invoke-static {v7, v5, v4}, Lcom/google/glass/maps/map/MiniMapLineLabel;->findNearest(F[FI)I

    move-result v4

    .line 429
    aget v7, v5, v4

    aput v7, v10, v2

    .line 430
    aget v7, v6, v2

    invoke-static {v7, v5, v3}, Lcom/google/glass/maps/map/MiniMapLineLabel;->findNearest(F[FI)I

    move-result v3

    .line 432
    aget v7, v5, v3

    aput v7, v6, v2

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 438
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/TextTextureProvider;->getMaxTexX()F

    move-result v3

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/TextTextureProvider;->getMaxTexY()F

    move-result v4

    .line 440
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_5

    .line 441
    aget v5, v10, v2

    mul-float/2addr v5, v3

    .line 442
    sub-int v7, v8, v2

    add-int/lit8 v7, v7, -0x1

    aget v7, v6, v7

    mul-float/2addr v7, v3

    .line 443
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 444
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v9, v5, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v9, v7, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 446
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 447
    if-lez v2, :cond_4

    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_4

    .line 449
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 450
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v9, v5, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v5, v7, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 452
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 440
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 455
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/GLBuffer$Short;->finish()V

    .line 459
    return-void
.end method

.method private getOnScreenLabelVector(Lcom/google/glass/maps/map/Camera;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v0, v0, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 485
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v1, v1, Lcom/google/glass/maps/map/PointPool;->A1:Lcom/google/android/maps/driveabout/model/ab;

    .line 486
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v2, v4, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 487
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 489
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/maps/map/Camera;->getScreenCoordinatesWithBuffer(Lcom/google/android/maps/driveabout/model/ab;[F)V

    .line 490
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    aget v0, v0, v4

    .line 491
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    aget v2, v2, v5

    .line 493
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    invoke-virtual {p1, v1, v3}, Lcom/google/glass/maps/map/Camera;->getScreenCoordinatesWithBuffer(Lcom/google/android/maps/driveabout/model/ab;[F)V

    .line 494
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    aget v3, v1, v4

    sub-float v0, v3, v0

    aput v0, v1, v4

    .line 495
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    aget v1, v0, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 496
    return-void
.end method

.method private getOrthoVector(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v0, v0, Lcom/google/glass/maps/map/PointPool;->B0:Lcom/google/android/maps/driveabout/model/ab;

    .line 464
    invoke-static {p2, p1, v0}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 465
    invoke-static {v0, p4}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 466
    invoke-static {p4, p3, p4}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 467
    return-void
.end method

.method private getSubline(Lcom/google/android/maps/driveabout/model/ag;FF)Lcom/google/android/maps/driveabout/model/ag;
    .locals 12

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v6, v0, Lcom/google/glass/maps/map/PointPool;->B0:Lcom/google/android/maps/driveabout/model/ab;

    .line 660
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v7, v0, Lcom/google/glass/maps/map/PointPool;->B1:Lcom/google/android/maps/driveabout/model/ab;

    .line 661
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v8, v0, Lcom/google/glass/maps/map/PointPool;->B2:Lcom/google/android/maps/driveabout/model/ab;

    .line 662
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v9, v0, Lcom/google/glass/maps/map/PointPool;->B3:Lcom/google/android/maps/driveabout/model/ab;

    .line 663
    const/4 v0, 0x0

    .line 664
    const/4 v1, 0x0

    .line 666
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v2

    .line 667
    add-int/lit8 v10, v2, -0x1

    .line 672
    const/4 v2, 0x0

    move v3, p3

    :goto_0
    if-ge v2, v10, :cond_0

    .line 673
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v4

    .line 674
    sub-float/2addr p2, v4

    .line 675
    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_1

    .line 677
    const v5, -0x472e48e9    # -1.0E-4f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    .line 678
    const/4 v0, 0x1

    .line 679
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, p2, v4

    add-float/2addr v4, v5

    .line 680
    invoke-virtual {p1, v2, v9}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 681
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5, v8}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 682
    invoke-static {v9, v8, v4, v6}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    :cond_0
    move v4, v2

    .line 690
    :goto_1
    if-ge v4, v10, :cond_8

    .line 691
    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v11

    .line 692
    sub-float v5, v3, v11

    .line 693
    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_2

    .line 695
    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v5, v3

    if-gez v3, :cond_8

    .line 696
    const/4 v1, 0x1

    .line 697
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v5, v11

    add-float/2addr v3, v5

    .line 698
    invoke-virtual {p1, v4, v9}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 699
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5, v8}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 700
    invoke-static {v9, v8, v3, v7}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    move v3, v1

    .line 707
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 709
    sub-int v1, v4, v2

    add-int/lit8 v5, v1, 0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_3
    add-int/2addr v5, v1

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :goto_4
    add-int/2addr v1, v5

    .line 712
    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [I

    .line 713
    const/4 v1, 0x0

    .line 714
    if-eqz v0, :cond_7

    .line 715
    const/4 v0, 0x1

    invoke-virtual {v6, v5, v1}, Lcom/google/android/maps/driveabout/model/ab;->a([II)V

    :goto_5
    move v1, v0

    move v0, v2

    .line 717
    :goto_6
    if-gt v0, v4, :cond_5

    .line 718
    invoke-virtual {p1, v0, v8}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 719
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v5, v1}, Lcom/google/android/maps/driveabout/model/ab;->a([II)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_6

    .line 686
    :cond_1
    sub-float/2addr v3, v4

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    .line 709
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 721
    :cond_5
    if-eqz v3, :cond_6

    .line 722
    invoke-virtual {v7, v5, v1}, Lcom/google/android/maps/driveabout/model/ab;->a([II)V

    .line 724
    :cond_6
    invoke-static {v5}, Lcom/google/android/maps/driveabout/model/ag;->a([I)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v3, v1

    goto :goto_2
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->generateGLGeometry()V

    .line 310
    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    invoke-direct {v0}, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    .line 313
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->initialized:Z

    .line 314
    return-void
.end method

.method public static preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 239
    const-string v0, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getMVPMatrix()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 240
    const-string v0, "scale"

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 241
    const-string v0, "displacement"

    sget-object v1, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 242
    return-void
.end method

.method private selectNextValidCandidate()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/TextTextureProvider;->getDataWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    mul-float/2addr v2, v3

    .line 186
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->fullCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ag;->d()F

    move-result v3

    .line 187
    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    iget v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    :cond_2
    iget v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 192
    iget v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    if-le v4, v1, :cond_3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 198
    :cond_3
    iget v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->constructCenterlineForCurrentCandidate()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    .line 205
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    if-eqz v4, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->generateBound()V

    move v0, v1

    .line 207
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextTextureProvider;->destroy()V

    .line 160
    return-void
.end method

.method public draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 246
    iget-boolean v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->initialized:Z

    if-nez v2, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->initialize()V

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getViewingAngle()F

    move-result v2

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getBearing()F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    .line 251
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->getOnScreenLabelVector(Lcom/google/glass/maps/map/Camera;)V

    .line 252
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    aget v2, v2, v7

    .line 253
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->tmpBuffer:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 254
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    .line 255
    cmpl-float v2, v2, v6

    if-ltz v2, :cond_6

    move v2, v1

    .line 256
    :goto_0
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_2

    move v0, v1

    .line 257
    :cond_2
    mul-float/2addr v3, v0

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    .line 264
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    if-nez v3, :cond_3

    .line 265
    cmpl-float v0, v0, v6

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    :goto_1
    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    if-ne v0, v3, :cond_9

    .line 268
    const v0, 0x3a83126f    # 0.001f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    :goto_2
    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 275
    :cond_4
    :goto_3
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->alpha:F

    .line 276
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    if-eqz v2, :cond_5

    .line 279
    iget v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->alpha:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_b

    .line 280
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->getOpacity(J)F

    move-result v0

    .line 284
    :goto_4
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->isDone()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    .line 290
    :cond_5
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v2, v2, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 291
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v3, v3, Lcom/google/glass/maps/map/PointPool;->A1:Lcom/google/android/maps/driveabout/model/ab;

    .line 292
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->pointPool:Lcom/google/glass/maps/map/PointPool;

    iget-object v4, v4, Lcom/google/glass/maps/map/PointPool;->A2:Lcom/google/android/maps/driveabout/model/ab;

    .line 293
    invoke-virtual {p1, v4}, Lcom/google/glass/maps/map/Camera;->getCenter(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 294
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidateCenterline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v5, v7, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 295
    invoke-static {v2, v4, v3}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 296
    iget v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    div-float/2addr v1, v2

    invoke-static {v3, v1, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 298
    const-string v1, "scale"

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v2

    iget v4, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    mul-float/2addr v2, v4

    invoke-virtual {p2, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 299
    const-string v1, "origin"

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 300
    const-string v1, "alpha"

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 301
    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 302
    const-string v0, "texCoord"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 303
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->textureProvider:Lcom/google/glass/maps/map/TextTextureProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextTextureProvider;->getTexture()Lcom/google/glass/maps/opengl/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 304
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Short;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Short;->drawElements(I)V

    .line 305
    return-void

    :cond_6
    move v2, v0

    .line 255
    goto/16 :goto_0

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    goto/16 :goto_1

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    goto/16 :goto_2

    .line 270
    :cond_9
    const v0, -0x457ced91    # -0.001f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->reverseTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    :goto_5
    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->lastTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    goto :goto_5

    .line 282
    :cond_b
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    invoke-virtual {v2, p3, p4}, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->getOpacity(J)F

    move-result v2

    mul-float/2addr v0, v2

    goto/16 :goto_4
.end method

.method public getBound()Lcom/google/android/maps/driveabout/model/an;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->bound:Lcom/google/android/maps/driveabout/model/an;

    return-object v0
.end method

.method public getRank()I
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/google/glass/maps/map/MiniMapLabel;->getRank()I

    move-result v1

    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->alpha:F

    .line 176
    return-void
.end method

.method public tryAlternateCandidate(Lcom/google/glass/maps/map/Camera;)Z
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->candidate:I

    .line 170
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapLineLabel;->selectNextValidCandidate()Z

    move-result v0

    return v0
.end method

.method public updateCamera(Lcom/google/glass/maps/map/Camera;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getPixelSize()F

    move-result v1

    iget v2, p0, Lcom/google/glass/maps/map/MiniMapLineLabel;->unitSize:F

    div-float/2addr v1, v2

    .line 220
    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3fa00000    # 1.25f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 221
    const/4 v0, 0x1

    goto :goto_0
.end method
