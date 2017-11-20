.class public Lcom/google/glass/maps/util/ScalableImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private mAscent:I

.field private mBottom:I

.field private mDescent:I

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageHeight:I

.field private mImageWidth:I

.field private final mScaleRatio:F

.field private mTextScaleX:F

.field private mTextSize:F

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 35
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    iput p2, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mScaleRatio:F

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 43
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mScaleRatio:F

    .line 48
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageWidth:I

    .line 49
    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageHeight:I

    .line 50
    return-void
.end method

.method private updateMetrics(Landroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTextSize:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTextScaleX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTextSize:F

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTextScaleX:F

    .line 85
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mScaleRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 86
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTextSize:F

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mScaleRatio:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageHeight:I

    .line 87
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTextScaleX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageWidth:I

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 94
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v1, v2

    .line 95
    iget v2, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageHeight:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDescent:I

    .line 96
    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDescent:I

    iget v2, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mAscent:I

    .line 97
    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mAscent:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTop:I

    .line 98
    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDescent:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mBottom:I

    goto :goto_0
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .prologue
    .line 70
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mAscent:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mAscent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 71
    :cond_0
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDescent:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDescent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 73
    :cond_1
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTop:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTop:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 74
    :cond_2
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mBottom:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mBottom:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 75
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    invoke-direct {p0, p9}, Lcom/google/glass/maps/util/ScalableImageSpan;->updateMetrics(Landroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageWidth:I

    iget v2, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mAscent:I

    add-int/2addr v0, p7

    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    instance-of v1, p1, Lcom/google/glass/maps/util/ScalableImageSpan;

    if-eqz v1, :cond_0

    .line 117
    check-cast p1, Lcom/google/glass/maps/util/ScalableImageSpan;

    .line 118
    iget-object v1, p1, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/glass/maps/util/ScalableImageSpan;->mScaleRatio:F

    iget v2, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mScaleRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/glass/maps/util/ScalableImageSpan;->updateMetrics(Landroid/graphics/Paint;)V

    .line 56
    if-eqz p5, :cond_0

    .line 57
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mAscent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 58
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDescent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 60
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mTop:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 61
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mBottom:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 64
    :cond_0
    iget v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mImageWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/util/ScalableImageSpan;->mScaleRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
