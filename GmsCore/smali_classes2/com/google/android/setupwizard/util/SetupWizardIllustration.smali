.class public Lcom/google/android/setupwizard/util/SetupWizardIllustration;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->d:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->e:Landroid/graphics/Rect;

    .line 52
    iput v3, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->f:F

    .line 53
    iput v3, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->g:F

    .line 54
    iput v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->h:F

    .line 71
    if-eqz p2, :cond_0

    .line 72
    sget-object v0, Lcom/google/android/gms/e;->J:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->h:F

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->a:F

    .line 79
    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->setWillNotDraw(Z)V

    .line 80
    return-void
.end method

.method private a(IILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 6

    .prologue
    .line 181
    const/16 v0, 0x37

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 182
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->f:F

    .line 183
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->g:F

    .line 184
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->getLayoutDirection()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    iget-object v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    iget v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->f:F

    iget v2, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->g:F

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 152
    if-ne v0, v6, :cond_0

    iget-object v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 155
    iget-object v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 165
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 114
    sub-int v6, p4, p2

    .line 115
    sub-int v7, p5, p3

    .line 116
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 118
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 119
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->getLayoutDirection()I

    move-result v5

    .line 121
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    iget-object v3, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->e:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 124
    iget v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->h:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 127
    int-to-float v0, v1

    iget v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->f:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 128
    int-to-float v0, v2

    iget v2, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->f:F

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 129
    iget-object v3, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->e:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->b:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v6

    iget v2, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->f:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v2, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->g:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 141
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    iget v0, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 104
    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->h:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 105
    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->a:F

    rem-float/2addr v0, v2

    sub-float v0, v1, v0

    float-to-int v0, v0

    .line 106
    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->setPadding(IIII)V

    .line 108
    :cond_0
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 110
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->b:Landroid/graphics/drawable/Drawable;

    .line 89
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->c:Landroid/graphics/drawable/Drawable;

    .line 98
    return-void
.end method
