.class public Lcom/google/glass/widget/DynamicSizeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final LAYOUT_CACHE_SIZE:I = 0x10

.field private static final LINE_SPACING_MULTIPLIER:F = 1.0f

.field private static final MAXIMUM_FLING_DISTANCE:I = 0x14

.field private static final MID_POINT_DENSITY:F = 1000.0f

.field private static final SIZING_CACHE_SIZE:I = 0x14

.field private static final USE_FONT_PADDING:Z

.field private static allowSizeTextOnBackgroundThread:Z

.field private static layoutCache:Ljava/util/Map;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sizingCache:Landroid/util/LruCache;


# instance fields
.field private final baselinePositions:Landroid/content/res/TypedArray;

.field private defaultTypeface:Landroid/graphics/Typeface;

.field private isForcedToSmallestSize:Z

.field private final lineSpacingExtras:Landroid/content/res/TypedArray;

.field private shouldUpdateTextSize:Z

.field private showEllipsis:Z

.field private sizeTextOnBackgroundThread:Z

.field private textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

.field private textSizeTask:Lcom/google/glass/deferredcontent/LoadingTask;

.field private final textSizes:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 184
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    .line 272
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    .line 288
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/glass/widget/DynamicSizeTextView;->allowSizeTextOnBackgroundThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 316
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/DynamicSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 323
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    iput-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    .line 326
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 327
    sget v1, Lcom/google/glass/common/R$array;->dynamic_text_sizes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    .line 328
    sget v1, Lcom/google/glass/common/R$array;->dynamic_text_baseline_positions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->baselinePositions:Landroid/content/res/TypedArray;

    .line 329
    sget v1, Lcom/google/glass/common/R$array;->dynamic_text_line_spacing_adjustments:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->lineSpacingExtras:Landroid/content/res/TypedArray;

    .line 332
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    .line 333
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 334
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    .line 338
    :cond_0
    iput-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/widget/DynamicSizeTextView;)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Lcom/google/glass/deferredcontent/LoadingTask;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    return-void
.end method

.method private applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 681
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 684
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 686
    iget v1, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unexpected textsize found. [SizingResult=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong size found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 700
    iget v0, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 703
    iget-object v0, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 706
    invoke-virtual {p0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setIncludeFontPadding(Z)V

    .line 721
    iget v0, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->baselineShift:F

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setTranslationY(F)V

    .line 724
    invoke-virtual {p0, v4, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->setLineSpacing(FF)V

    .line 727
    iget v0, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->lineSpacingExtra:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setLineSpacing(FF)V

    .line 730
    iget v0, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->numLines:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaxLines(I)V

    .line 731
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    if-eqz v0, :cond_2

    .line 732
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 738
    :goto_0
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 742
    iget v1, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 743
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    .line 744
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 743
    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;->onTextClipped(Ljava/lang/CharSequence;)V

    .line 747
    :cond_1
    return-void

    .line 734
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private calculateTextSize(Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 16

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v9, v2

    .line 508
    const/4 v3, 0x0

    .line 509
    const/4 v2, 0x0

    .line 511
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    if-nez v4, :cond_a

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v15

    .line 513
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 520
    mul-int v5, p2, v15

    int-to-float v5, v5

    int-to-float v4, v4

    div-float v4, v5, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 521
    const/4 v5, 0x0

    .line 522
    const/4 v4, 0x1

    move v12, v4

    move v13, v5

    move-object v10, v2

    move-object v11, v3

    .line 528
    :goto_0
    if-ltz v13, :cond_9

    if-gt v13, v14, :cond_9

    .line 530
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/util/Condition;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    const/4 v8, 0x0

    .line 622
    :goto_1
    return-object v8

    .line 525
    :cond_0
    const/4 v4, -0x1

    move v12, v4

    move v13, v14

    move-object v10, v2

    move-object v11, v3

    goto :goto_0

    .line 535
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v4, v2

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->lineSpacingExtras:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v7, v2

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->baselinePositions:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v8, v2

    .line 538
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->getTypefaceForSize(F)Landroid/graphics/Typeface;

    move-result-object v5

    .line 539
    new-instance v2, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/graphics/Typeface;Landroid/text/Layout$Alignment;FF)V

    .line 542
    if-eqz v10, :cond_2

    .line 543
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 544
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v5

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    .line 555
    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/text/DynamicLayout;

    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v3

    .line 557
    if-lt v3, v15, :cond_5

    .line 558
    const/4 v3, -0x1

    if-ne v12, v3, :cond_6

    move-object v10, v2

    move v4, v9

    move-object v9, v5

    .line 575
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->getTypefaceForSize(F)Landroid/graphics/Typeface;

    move-result-object v5

    .line 576
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->getLineSpacingExtraForSize(F)F

    move-result v7

    .line 577
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->getBaselinePositionsForSize(F)F

    move-result v8

    .line 580
    new-instance v2, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/graphics/Typeface;Landroid/text/Layout$Alignment;FF)V

    .line 582
    const/4 v3, 0x0

    .line 584
    if-eqz v10, :cond_3

    .line 585
    invoke-virtual {v2, v10}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v3, v9

    .line 591
    :cond_3
    :goto_3
    if-nez v3, :cond_4

    .line 597
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v3

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    :cond_4
    move-object v6, v3

    .line 601
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/text/DynamicLayout;

    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v9

    .line 606
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/text/DynamicLayout;

    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v10

    .line 607
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/text/DynamicLayout;

    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBottomPadding()I

    move-result v3

    .line 608
    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v9, v3

    div-int/2addr v3, v10

    .line 609
    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v11

    div-int v3, v11, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 610
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/text/DynamicLayout;

    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v3, v9}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v12

    .line 613
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 615
    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/text/DynamicLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/DynamicLayout;->getLineBaseline(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v14, v8, v2

    .line 617
    new-instance v8, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move v9, v4

    move-object v10, v5

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;-><init>(FLandroid/graphics/Typeface;IIFF)V

    .line 619
    new-instance v2, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 621
    sget-object v3, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 564
    :cond_5
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 565
    const/4 v4, 0x1

    if-ne v12, v4, :cond_7

    move-object v9, v5

    move-object v10, v2

    move v4, v3

    .line 568
    goto/16 :goto_2

    :cond_6
    move v3, v9

    .line 571
    :cond_7
    add-int v4, v13, v12

    move v13, v4

    move-object v10, v5

    move-object v11, v2

    move v9, v3

    .line 572
    goto/16 :goto_0

    .line 589
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    move v4, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_2

    :cond_a
    move-object v10, v3

    move v4, v9

    move-object v9, v2

    goto/16 :goto_2
.end method

.method private cancelTextSizeTask()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Lcom/google/glass/deferredcontent/LoadingTask;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Lcom/google/glass/deferredcontent/LoadingTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->cancel(Z)V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Lcom/google/glass/deferredcontent/LoadingTask;

    .line 394
    :cond_0
    return-void
.end method

.method private getBaselinePositionsForSize(F)F
    .locals 3

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getIndexForTextSize(F)I

    move-result v0

    .line 650
    if-gez v0, :cond_0

    .line 651
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->baselinePositions:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getIndexForTextSize(F)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 659
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 664
    :goto_1
    return v0

    .line 659
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;
    .locals 8

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 755
    if-nez v0, :cond_0

    .line 756
    new-instance v1, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    invoke-direct {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;-><init>()V

    .line 757
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 758
    iget v0, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 759
    new-instance v0, Landroid/text/DynamicLayout;

    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    iget-object v4, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 767
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 769
    :cond_0
    return-object v0
.end method

.method private getLineSpacingExtraForSize(F)F
    .locals 3

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getIndexForTextSize(F)I

    move-result v0

    .line 641
    if-gez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 645
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->lineSpacingExtras:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 3

    .prologue
    .line 776
    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    monitor-enter v1

    .line 777
    :try_start_0
    sget-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 778
    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 780
    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    return-object v0

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTypefaceForSize(F)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->large_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 627
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 628
    const-string v0, "sans-serif-thin"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->small_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 632
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 633
    const-string v0, "sans-serif"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 671
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    .line 672
    invoke-virtual {v0}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v2

    .line 673
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, p2, v4, v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->changeText(Ljava/lang/CharSequence;II)V

    .line 675
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/text/DynamicLayout;

    .line 676
    invoke-virtual {v0}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v3

    .line 675
    invoke-static {v1, v0, v4, v2, v3}, Lcom/google/android/glass/hidden/HiddenDynamicLayout;->reflow(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V

    .line 677
    return-void
.end method

.method public static setAllowSizeOnBackgroundThread(Z)V
    .locals 0

    .prologue
    .line 793
    sput-boolean p0, Lcom/google/glass/widget/DynamicSizeTextView;->allowSizeTextOnBackgroundThread:Z

    .line 794
    return-void
.end method

.method private setMaximumTextSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 408
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 411
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->cancelTextSizeTask()V

    .line 413
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getWidth()I

    move-result v2

    .line 420
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 423
    new-instance v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 425
    sget-object v4, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    invoke-virtual {v4, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .line 426
    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 428
    invoke-direct {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    .line 449
    :goto_0
    iput-boolean v6, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 451
    :cond_0
    return-void

    .line 432
    :cond_1
    sget-boolean v0, Lcom/google/glass/widget/DynamicSizeTextView;->allowSizeTextOnBackgroundThread:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    if-eqz v0, :cond_2

    .line 434
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 435
    invoke-direct {p0, v2, v1, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread(ILjava/lang/CharSequence;Landroid/text/Layout$Alignment;)V

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    .line 443
    invoke-direct {p0, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    goto :goto_0
.end method

.method private sizeTextOnBackgroundThread(ILjava/lang/CharSequence;Landroid/text/Layout$Alignment;)V
    .locals 6

    .prologue
    .line 456
    new-instance v0, Lcom/google/glass/widget/DynamicSizeTextView$1;

    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/widget/DynamicSizeTextView$1;-><init>(Lcom/google/glass/widget/DynamicSizeTextView;Landroid/content/Context;Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;)V

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Lcom/google/glass/deferredcontent/LoadingTask;

    .line 496
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 498
    return-void
.end method


# virtual methods
.method public getTextClipListenerForTest()Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .locals 1

    .prologue
    .line 798
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 799
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    return-object v0
.end method

.method isSizeTextOnBackgroundThread()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 398
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 400
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 402
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaximumTextSize()V

    .line 404
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 380
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->cancelTextSizeTask()V

    .line 382
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 384
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->requestLayout()V

    .line 386
    :cond_0
    return-void
.end method

.method public setForcedToSmallestSize(Z)V
    .locals 0

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    .line 344
    return-void
.end method

.method public setShowEllipsis(Z)V
    .locals 0

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    .line 349
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 362
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    if-nez v0, :cond_0

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->cancelTextSizeTask()V

    .line 369
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    if-nez v0, :cond_1

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 371
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->requestLayout()V

    .line 373
    :cond_1
    return-void
.end method

.method public setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    .line 354
    return-void
.end method
