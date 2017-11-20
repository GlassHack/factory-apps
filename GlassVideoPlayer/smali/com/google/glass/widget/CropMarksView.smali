.class public Lcom/google/glass/widget/CropMarksView;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 36
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/glass/widget/CropMarksView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    .line 44
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    .line 52
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method


# virtual methods
.method getProgress()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v6, 0x42160000    # 37.5f

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    .line 81
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    sub-float/2addr v0, v6

    sub-float v1, v0, v3

    .line 85
    sub-float v0, v2, v6

    sub-float v2, v0, v3

    .line 86
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    iget v0, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    neg-float v4, v0

    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    mul-float/2addr v0, v4

    sub-float v4, v0, v6

    iget v0, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    neg-float v5, v0

    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_1

    move v0, v2

    :goto_2
    mul-float/2addr v0, v5

    sub-float/2addr v0, v6

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    sget-object v0, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PATH:Landroid/graphics/Path;

    sget-object v4, Lcom/google/glass/widget/CropMarksView;->CROP_MARK_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 86
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 88
    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 95
    :cond_2
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/CropMarksView;->play(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    return-void
.end method

.method play(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/CropMarksView;->setProgress(F)V

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/widget/CropMarksView;->invalidate()V

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/google/glass/widget/CropMarksView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/CropMarksView$1;-><init>(Lcom/google/glass/widget/CropMarksView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    :cond_0
    sget-object v1, Lcom/google/glass/widget/CropMarksView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 123
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    return-void

    .line 110
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setProgress(F)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/google/glass/widget/CropMarksView;->progress:F

    .line 128
    return-void
.end method
