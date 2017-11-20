.class public Lcom/google/glass/videoplayer/widget/TimeBarView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TEXT_SIZE_IN_DP:I = 0xf

.field private static final TIMEBAR_HEIGHT:I = 0xc

.field private static width:I


# instance fields
.field private final bufferedBar:Landroid/graphics/Rect;

.field private final bufferedPaint:Landroid/graphics/Paint;

.field private bufferedPercent:I

.field private currentTime:J

.field private height:I

.field private final playedBar:Landroid/graphics/Rect;

.field private final playedPaint:Landroid/graphics/Paint;

.field private final progressBar:Landroid/graphics/Rect;

.field private final progressPaint:Landroid/graphics/Paint;

.field private scrubbing:Z

.field private showBuffered:Z

.field private final timeBounds:Landroid/graphics/Rect;

.field private final timeTextPaint:Landroid/graphics/Paint;

.field private totalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/videoplayer/widget/TimeBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v3, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->showBuffered:Z

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedBar:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedBar:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedPaint:Landroid/graphics/Paint;

    const v1, -0x7f7f7f78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeTextPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeTextPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-light"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeBounds:Landroid/graphics/Rect;

    .line 81
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeTextPaint:Landroid/graphics/Paint;

    const-string v1, "0:00:00"

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/google/glass/videoplayer/widget/TimeBarView;->setVisibility(I)V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->currentTime:J

    .line 86
    return-void
.end method

.method public static convertPositionDeltaToTimestampDelta(FI)I
    .locals 2

    .prologue
    .line 150
    int-to-float v0, p1

    mul-float/2addr v0, p0

    sget v1, Lcom/google/glass/videoplayer/widget/TimeBarView;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static convertTimestampToPosition(II)I
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/google/glass/videoplayer/widget/TimeBarView;->width:I

    mul-int/2addr v0, p0

    div-int/2addr v0, p1

    return v0
.end method

.method private update()V
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 101
    iget-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->totalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedPercent:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 103
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->currentTime:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->totalTime:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->postInvalidate()V

    .line 110
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 107
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private updateScrubberState()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->totalTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 114
    :goto_0
    iget-boolean v2, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->scrubbing:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->scrubbing:Z

    .line 116
    invoke-direct {p0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->update()V

    .line 119
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 142
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->showBuffered:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 146
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 90
    sput p1, Lcom/google/glass/videoplayer/widget/TimeBarView;->width:I

    .line 91
    iput p2, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->height:I

    .line 93
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->progressBar:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->height:I

    add-int/lit8 v2, v2, -0xc

    sget v3, Lcom/google/glass/videoplayer/widget/TimeBarView;->width:I

    iget v4, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    invoke-direct {p0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->update()V

    .line 95
    return-void
.end method

.method public setTime(III)V
    .locals 4

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->currentTime:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->totalTime:J

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedPercent:I

    if-eq v0, p3, :cond_2

    .line 126
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->totalTime:J

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 127
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->totalTime:J

    .line 128
    invoke-direct {p0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->updateScrubberState()V

    .line 130
    :cond_1
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->totalTime:J

    .line 131
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->currentTime:J

    .line 132
    iput p3, p0, Lcom/google/glass/videoplayer/widget/TimeBarView;->bufferedPercent:I

    .line 133
    invoke-direct {p0}, Lcom/google/glass/videoplayer/widget/TimeBarView;->update()V

    .line 135
    :cond_2
    return-void
.end method
