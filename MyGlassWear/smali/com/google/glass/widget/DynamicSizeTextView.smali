.class public Lcom/google/glass/widget/DynamicSizeTextView;
.super Landroid/widget/TextView;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;,
        Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;,
        Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;,
        Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;,
        Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    }
.end annotation


# static fields
.field private static final LAYOUT_CACHE_SIZE:I = 0x10

.field private static final LINE_SPACING_MULTIPLIER:F = 1.0f

.field private static final MAXIMUM_FLING_DISTANCE:I = 0x14

.field private static final MID_POINT_DENSITY:F = 1000.0f

.field private static final SIZING_CACHE_SIZE:I = 0x14

.field private static final USE_FONT_PADDING:Z

.field private static allowSizeTextOnBackgroundThread:Z

.field private static layoutCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sizingCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
            ">;"
        }
    .end annotation
.end field


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
            ">;"
        }
    .end annotation
.end field

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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/DynamicSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const/4 v3, 0x1

    .line 323
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    iput-boolean v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    .line 326
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 327
    .local v0, "resources":Landroid/content/res/Resources;
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

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->lineSpacingExtras:Landroid/content/res/TypedArray;

    .line 332
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    .line 333
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 334
    const-string v1, "sans-serif-light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    .line 338
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/DynamicSizeTextView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/text/Layout$Alignment;
    .param p4, "x4"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/widget/DynamicSizeTextView;)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/DynamicSizeTextView;

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
    .param p0, "x0"    # Lcom/google/glass/widget/DynamicSizeTextView;
    .param p1, "x1"    # Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    return-void
.end method

.method private applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 7
    .param p1, "sizingResult"    # Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 681
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 684
    iget-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    iget-object v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v1, v2

    .line 686
    .local v1, "smallestTextSize":F
    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 687
    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unexpected textsize found. [SizingResult=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong size found."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 697
    .end local v1    # "smallestTextSize":F
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 700
    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    invoke-virtual {p0, v5, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 703
    iget-object v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 706
    invoke-virtual {p0, v5}, Lcom/google/glass/widget/DynamicSizeTextView;->setIncludeFontPadding(Z)V

    .line 721
    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->baselineShift:F

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setTranslationY(F)V

    .line 724
    invoke-virtual {p0, v6, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->setLineSpacing(FF)V

    .line 727
    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->lineSpacingExtra:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setLineSpacing(FF)V

    .line 730
    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->numLines:I

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaxLines(I)V

    .line 731
    iget-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    if-eqz v2, :cond_2

    .line 732
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 738
    :goto_0
    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    if-eqz v2, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 742
    .local v0, "originalText":Ljava/lang/CharSequence;
    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 743
    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    .line 744
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 743
    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;->onTextClipped(Ljava/lang/CharSequence;)V

    .line 747
    .end local v0    # "originalText":Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 734
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private calculateTextSize(Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 32
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "width"    # I
    .param p3, "alignment"    # Landroid/text/Layout$Alignment;
    .param p4, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 504
    const/16 v30, 0x0

    .line 505
    .local v30, "startIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    add-int/lit8 v19, v4, -0x1

    .line 506
    .local v19, "endIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v12, v4

    .line 508
    .local v12, "largestSizeThatFits":F
    const/16 v23, 0x0

    .line 509
    .local v23, "lastReflowLayoutKey":Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    const/16 v22, 0x0

    .line 511
    .local v22, "lastReflowLayout":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    if-nez v4, :cond_3

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v20

    .line 513
    .local v20, "height":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v31

    .line 520
    .local v31, "textLength":I
    mul-int v4, p2, v20

    int-to-float v4, v4

    move/from16 v0, v31

    int-to-float v7, v0

    div-float/2addr v4, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    .line 521
    const/16 v21, 0x0

    .line 522
    .local v21, "index":I
    const/16 v27, 0x1

    .line 528
    .local v27, "perLoopDiff":I
    :goto_0
    if-ltz v21, :cond_3

    move/from16 v0, v21

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 530
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/google/glass/util/Condition;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    const/4 v11, 0x0

    .line 622
    .end local v20    # "height":I
    .end local v21    # "index":I
    .end local v27    # "perLoopDiff":I
    .end local v31    # "textLength":I
    :goto_1
    return-object v11

    .line 524
    .restart local v20    # "height":I
    .restart local v31    # "textLength":I
    :cond_0
    move/from16 v21, v19

    .line 525
    .restart local v21    # "index":I
    const/16 v27, -0x1

    .restart local v27    # "perLoopDiff":I
    goto :goto_0

    .line 535
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v5, v4

    .line 536
    .local v5, "textSizePx":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->lineSpacingExtras:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v8, v4

    .line 537
    .local v8, "lineSpacingExtra":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->baselinePositions:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v9, v4

    .line 538
    .local v9, "baselinePosition":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/glass/widget/DynamicSizeTextView;->getTypefaceForSize(F)Landroid/graphics/Typeface;

    move-result-object v6

    .line 539
    .local v6, "typeface":Landroid/graphics/Typeface;
    new-instance v3, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/graphics/Typeface;Landroid/text/Layout$Alignment;FF)V

    .line 542
    .local v3, "key":Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    if-eqz v22, :cond_2

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 544
    const/16 v22, 0x0

    .line 545
    const/16 v23, 0x0

    .line 548
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v24

    .line 551
    .local v24, "layout":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    .line 553
    move-object/from16 v23, v3

    .line 554
    move-object/from16 v22, v24

    .line 555
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v25

    .line 557
    .local v25, "layoutHeight":I
    move/from16 v0, v25

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 558
    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_7

    .line 575
    .end local v3    # "key":Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    .end local v5    # "textSizePx":F
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    .end local v8    # "lineSpacingExtra":F
    .end local v9    # "baselinePosition":F
    .end local v20    # "height":I
    .end local v21    # "index":I
    .end local v24    # "layout":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    .end local v25    # "layoutHeight":I
    .end local v27    # "perLoopDiff":I
    .end local v31    # "textLength":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/widget/DynamicSizeTextView;->getTypefaceForSize(F)Landroid/graphics/Typeface;

    move-result-object v6

    .line 576
    .restart local v6    # "typeface":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/widget/DynamicSizeTextView;->getLineSpacingExtraForSize(F)F

    move-result v8

    .line 577
    .restart local v8    # "lineSpacingExtra":F
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/widget/DynamicSizeTextView;->getBaselinePositionsForSize(F)F

    move-result v9

    .line 580
    .restart local v9    # "baselinePosition":F
    new-instance v3, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move-object v10, v3

    move/from16 v11, p2

    move-object v13, v6

    move-object/from16 v14, p3

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/graphics/Typeface;Landroid/text/Layout$Alignment;FF)V

    .line 582
    .restart local v3    # "key":Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    const/16 v24, 0x0

    .line 584
    .restart local v24    # "layout":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    if-eqz v23, :cond_4

    .line 585
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 586
    move-object/from16 v24, v22

    .line 591
    :goto_2
    const/16 v22, 0x0

    .line 592
    const/16 v23, 0x0

    .line 595
    :cond_4
    if-nez v24, :cond_5

    .line 597
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v24

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    .line 601
    :cond_5
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v25

    .line 606
    .restart local v25    # "layoutHeight":I
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v18

    .line 607
    .local v18, "allLines":I
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBottomPadding()I

    move-result v26

    .line 608
    .local v26, "pad":I
    mul-int/lit8 v4, v26, 0x2

    sub-int v4, v25, v4

    div-int v28, v4, v18

    .line 609
    .local v28, "pixelsPerLine":I
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v7

    div-int v7, v7, v28

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 610
    .local v14, "numVisibleLines":I
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v4, v7}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v15

    .line 613
    .local v15, "textEnd":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 615
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/DynamicLayout;->getLineBaseline(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v17, v9, v4

    .line 617
    .local v17, "baselineShift":F
    new-instance v11, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-object v13, v6

    move/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;-><init>(FLandroid/graphics/Typeface;IIFF)V

    .line 619
    .local v11, "result":Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    new-instance v29, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 621
    .local v29, "sizingCacheKey":Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    sget-object v4, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 564
    .end local v11    # "result":Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .end local v14    # "numVisibleLines":I
    .end local v15    # "textEnd":I
    .end local v17    # "baselineShift":F
    .end local v18    # "allLines":I
    .end local v26    # "pad":I
    .end local v28    # "pixelsPerLine":I
    .end local v29    # "sizingCacheKey":Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    .restart local v5    # "textSizePx":F
    .restart local v20    # "height":I
    .restart local v21    # "index":I
    .restart local v27    # "perLoopDiff":I
    .restart local v31    # "textLength":I
    :cond_6
    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 565
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_3

    .line 571
    :cond_7
    add-int v21, v21, v27

    .line 572
    goto/16 :goto_0

    .line 589
    .end local v5    # "textSizePx":F
    .end local v20    # "height":I
    .end local v21    # "index":I
    .end local v25    # "layoutHeight":I
    .end local v27    # "perLoopDiff":I
    .end local v31    # "textLength":I
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

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
    .param p1, "textSizePx"    # F

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getIndexForTextSize(F)I

    move-result v0

    .line 650
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 651
    const/4 v1, 0x0

    .line 654
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->baselinePositions:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method private getIndexForTextSize(F)I
    .locals 3
    .param p1, "textSizePx"    # F

    .prologue
    .line 659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 664
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 659
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;
    .locals 10
    .param p1, "key"    # Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v9

    .line 754
    .local v9, "pool":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 755
    .local v8, "cachedLayout":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    if-nez v8, :cond_0

    .line 756
    new-instance v1, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    invoke-direct {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;-><init>()V

    .line 757
    .local v1, "textContainer":Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 758
    .local v2, "paint":Landroid/text/TextPaint;
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 759
    new-instance v0, Landroid/text/DynamicLayout;

    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    iget-object v4, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 767
    .local v0, "layout":Landroid/text/DynamicLayout;
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 769
    .end local v0    # "layout":Landroid/text/DynamicLayout;
    .end local v1    # "textContainer":Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_0
    return-object v8
.end method

.method private getLineSpacingExtraForSize(F)F
    .locals 3
    .param p1, "textSizePx"    # F

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getIndexForTextSize(F)I

    move-result v0

    .line 641
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 642
    const/4 v1, 0x0

    .line 645
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->lineSpacingExtras:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method private getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 3
    .param p1, "key"    # Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            ")",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 776
    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    monitor-enter v2

    .line 777
    :try_start_0
    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 778
    .local v0, "pool":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v0    # "pool":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 780
    .restart local v0    # "pool":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_0
    monitor-exit v2

    .line 783
    return-object v0

    .line 782
    .end local v0    # "pool":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTypefaceForSize(F)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "textSizePx"    # F

    .prologue
    const/4 v4, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$dimen;->large_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 627
    .local v0, "largeTextSize":F
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_0

    .line 628
    const-string v2, "sans-serif-thin"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 636
    :goto_0
    return-object v2

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$dimen;->small_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 632
    .local v1, "smallestTextSize":F
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1

    .line 633
    const-string v2, "sans-serif"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0

    .line 636
    :cond_1
    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->defaultTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V
    .locals 5
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "layout":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    const/4 v4, 0x0

    .line 671
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    .line 672
    .local v1, "textContainer":Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v0

    .line 673
    .local v0, "lengthBeforeChange":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, p2, v4, v2}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->changeText(Ljava/lang/CharSequence;II)V

    .line 675
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/text/DynamicLayout;

    .line 676
    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v3

    .line 675
    invoke-static {v2, v1, v4, v0, v3}, Lcom/google/android/glass/hidden/HiddenDynamicLayout;->reflow(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V

    .line 677
    return-void
.end method

.method public static setAllowSizeOnBackgroundThread(Z)V
    .locals 0
    .param p0, "allowSizeTextOnBackgroundThread"    # Z

    .prologue
    .line 793
    sput-boolean p0, Lcom/google/glass/widget/DynamicSizeTextView;->allowSizeTextOnBackgroundThread:Z

    .line 794
    return-void
.end method

.method private setMaximumTextSize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 408
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 411
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->cancelTextSizeTask()V

    .line 413
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 416
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getWidth()I

    move-result v5

    .line 420
    .local v5, "width":I
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 423
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    new-instance v3, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 425
    .local v3, "sizingCacheKey":Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    sget-object v6, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    invoke-virtual {v6, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .line 426
    .local v1, "cached":Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {p0, v8}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 428
    invoke-direct {p0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    .line 449
    :goto_0
    iput-boolean v8, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 451
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .end local v1    # "cached":Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .end local v3    # "sizingCacheKey":Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    .end local v5    # "width":I
    :cond_0
    return-void

    .line 432
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    .restart local v1    # "cached":Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .restart local v3    # "sizingCacheKey":Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    .restart local v5    # "width":I
    :cond_1
    sget-boolean v6, Lcom/google/glass/widget/DynamicSizeTextView;->allowSizeTextOnBackgroundThread:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    if-eqz v6, :cond_2

    .line 434
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 435
    invoke-direct {p0, v5, v4, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread(ILjava/lang/CharSequence;Landroid/text/Layout$Alignment;)V

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p0, v8}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 442
    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v2

    .line 443
    .local v2, "result":Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    invoke-direct {p0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    goto :goto_0
.end method

.method private sizeTextOnBackgroundThread(ILjava/lang/CharSequence;Landroid/text/Layout$Alignment;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "alignment"    # Landroid/text/Layout$Alignment;

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
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 799
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    return-object v0
.end method

.method isSizeTextOnBackgroundThread()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

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
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

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
    .param p1, "isForcedToSmallestSize"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    .line 344
    return-void
.end method

.method public setShowEllipsis(Z)V
    .locals 0
    .param p1, "showEllipsis"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    .line 349
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

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
    .param p1, "textClipListener"    # Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    .line 354
    return-void
.end method
