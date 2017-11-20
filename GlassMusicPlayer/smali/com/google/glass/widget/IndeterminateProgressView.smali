.class public Lcom/google/glass/widget/IndeterminateProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GAP_SIZE_PIXELS:I = 0x8

.field private static final MINIMUM_FRAME_DELAY_MS:I = 0x10

.field private static final NUM_GAPS:I = 0x3

.field private static final SPEED_PIXELS_MS:F = 0.4f

.field private static final WHITE_PAINT:Landroid/graphics/Paint;


# instance fields
.field final gaps:[I

.field private final height:F

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/glass/widget/IndeterminateProgressView;->WHITE_PAINT:Landroid/graphics/Paint;

    .line 37
    sget-object v0, Lcom/google/glass/widget/IndeterminateProgressView;->WHITE_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/IndeterminateProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/IndeterminateProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/widget/IndeterminateProgressView;->gaps:[I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/IndeterminateProgressView;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/IndeterminateProgressView;->height:F

    .line 63
    return-void
.end method

.method private connect(Landroid/graphics/Canvas;II)V
    .locals 1

    .prologue
    .line 112
    if-le p3, p2, :cond_0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/IndeterminateProgressView;->drawRect(Landroid/graphics/Canvas;II)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/IndeterminateProgressView;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/IndeterminateProgressView;->drawRect(Landroid/graphics/Canvas;II)V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/widget/IndeterminateProgressView;->drawRect(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method private drawRect(Landroid/graphics/Canvas;II)V
    .locals 6

    .prologue
    .line 121
    int-to-float v1, p2

    const/4 v2, 0x0

    int-to-float v3, p3

    iget v4, p0, Lcom/google/glass/widget/IndeterminateProgressView;->height:F

    sget-object v5, Lcom/google/glass/widget/IndeterminateProgressView;->WHITE_PAINT:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method private drawRects(Landroid/graphics/Canvas;[I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    move v2, v1

    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_1

    .line 101
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v3, v0, 0x1

    .line 102
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x2

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_0

    move v0, v1

    .line 103
    :goto_1
    aget v3, p2, v3

    aget v0, p2, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/google/glass/widget/IndeterminateProgressView;->connect(Landroid/graphics/Canvas;II)V

    .line 100
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 102
    :cond_0
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 105
    :cond_1
    return-void
.end method


# virtual methods
.method getProgress()I
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/glass/widget/IndeterminateProgressView;->getWidth()I

    move-result v1

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/widget/IndeterminateProgressView;->getProgress()I

    move-result v2

    .line 72
    div-int/lit8 v3, v1, 0x3

    .line 75
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 76
    mul-int v4, v0, v3

    add-int/2addr v4, v2

    .line 79
    add-int/lit8 v5, v1, 0x8

    rem-int/2addr v4, v5

    .line 82
    mul-int/2addr v4, v4

    add-int/lit8 v5, v1, 0x8

    div-int/2addr v4, v5

    .line 84
    iget-object v5, p0, Lcom/google/glass/widget/IndeterminateProgressView;->gaps:[I

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v7, v4, -0x8

    aput v7, v5, v6

    .line 85
    iget-object v5, p0, Lcom/google/glass/widget/IndeterminateProgressView;->gaps:[I

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aput v4, v5, v6

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/IndeterminateProgressView;->gaps:[I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/IndeterminateProgressView;->drawRects(Landroid/graphics/Canvas;[I)V

    .line 89
    iget-boolean v0, p0, Lcom/google/glass/widget/IndeterminateProgressView;->running:Z

    if-eqz v0, :cond_1

    .line 91
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/IndeterminateProgressView;->postInvalidateDelayed(J)V

    .line 93
    :cond_1
    return-void
.end method

.method public start()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/IndeterminateProgressView;->running:Z

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/widget/IndeterminateProgressView;->postInvalidate()V

    .line 138
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/IndeterminateProgressView;->running:Z

    .line 146
    return-void
.end method
