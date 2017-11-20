.class public Lcom/google/glass/widget/CropMarksView;
.super Landroid/view/View;
.source "CropMarksView.java"


# static fields
.field private static final ANIMATION_DURATION_MS:J = 0x1f4L

.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CROP_MARK_PAINT:Landroid/graphics/Paint;

.field private static final CROP_MARK_PATH:Landroid/graphics/Path;

.field private static final CROP_MARK_SIZE_PX:F = 25.0f

.field private static final INNER_MARGIN_PX:F = 37.5f

.field private static final OUTER_MARGIN_PX:F = 20.0f


# instance fields
.field private progress:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v2, 0x0

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/glass/widget/CropMarksView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    .line 43
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    .line 51
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 55
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method


# virtual methods
.method getProgress()F
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 131
    iget v0, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v8, 0x42160000    # 37.5f

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 79
    .local v3, "halfWidth":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 80
    .local v2, "halfHeight":F
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    sub-float v5, v3, v8

    sub-float v1, v5, v6

    .line 84
    .local v1, "adjustedWidth":F
    sub-float v5, v2, v8

    sub-float v0, v5, v6

    .line 85
    .local v0, "adjustedHeight":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget v5, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    neg-float v6, v5

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_0

    move v5, v1

    .line 88
    :goto_1
    mul-float/2addr v5, v6

    sub-float v6, v5, v8

    iget v5, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    neg-float v7, v5

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_1

    move v5, v0

    .line 89
    :goto_2
    mul-float/2addr v5, v7

    sub-float/2addr v5, v8

    .line 87
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    sget-object v5, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    sget-object v6, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v5, v0

    .line 88
    goto :goto_1

    :cond_1
    move v5, v1

    .line 89
    goto :goto_2

    .line 94
    :cond_2
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/CropMarksView;->play(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    return-void
.end method

.method play(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 105
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/CropMarksView;->setProgress(F)V

    .line 106
    invoke-virtual {p0}, Lcom/google/glass/widget/CropMarksView;->invalidate()V

    .line 109
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 110
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/glass/widget/CropMarksView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/CropMarksView$1;-><init>(Lcom/google/glass/widget/CropMarksView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    :cond_0
    sget-object v1, Lcom/google/glass/widget/CropMarksView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 123
    return-void

    .line 109
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    .line 127
    return-void
.end method
