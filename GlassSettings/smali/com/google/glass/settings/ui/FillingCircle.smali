.class public Lcom/google/glass/settings/ui/FillingCircle;
.super Landroid/view/View;
.source "FillingCircle.java"


# static fields
.field private static final CIRCLE_COLOR:I = -0x1

.field private static final STROKE_WIDTH_PX:I = 0x5

.field private static final TARGET_RADIUS:I = 0x32


# instance fields
.field private fillCirclePaint:Landroid/graphics/Paint;

.field private openCirclePaint:Landroid/graphics/Paint;

.field private radius:F

.field private radiusAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/FillingCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/FillingCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->openCirclePaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->openCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->openCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->openCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->openCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->fillCirclePaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->fillCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->fillCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->fillCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    const-string v0, "radius"

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radiusAnimator:Landroid/animation/ObjectAnimator;

    .line 55
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radiusAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    return-void
.end method

.method private cancelRadiusAnimation()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radiusAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radiusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radius:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 77
    .local v0, "centerX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 80
    .local v1, "centerY":F
    const/high16 v2, 0x42480000    # 50.0f

    iget-object v3, p0, Lcom/google/glass/settings/ui/FillingCircle;->openCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    iget v2, p0, Lcom/google/glass/settings/ui/FillingCircle;->radius:F

    iget-object v3, p0, Lcom/google/glass/settings/ui/FillingCircle;->fillCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 91
    iput p1, p0, Lcom/google/glass/settings/ui/FillingCircle;->radius:F

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/FillingCircle;->invalidate()V

    .line 93
    return-void
.end method

.method public startFilling(J)V
    .locals 4
    .param p1, "duration"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/settings/ui/FillingCircle;->cancelRadiusAnimation()V

    .line 67
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radiusAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/FillingCircle;->getRadius()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radiusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    iget-object v0, p0, Lcom/google/glass/settings/ui/FillingCircle;->radiusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 70
    return-void
.end method
