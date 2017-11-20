.class Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
.super Landroid/view/View;
.source "FrameLayoutWithShadows.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/FrameLayoutWithShadows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShadowView"
.end annotation


# instance fields
.field private mAlpha:F

.field private mDrawableBottom:Landroid/graphics/drawable/Drawable;

.field private shadowedView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->setWillNotDraw(Z)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->shadowedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->shadowedView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public getAlpha()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    return v0
.end method

.method init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->shadowedView:Landroid/view/View;

    .line 53
    iput-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 72
    iget v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_2

    .line 73
    iput p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    .line 74
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 76
    .local v0, "alphaMulitplied":I
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->invalidate()V

    .line 84
    .end local v0    # "alphaMulitplied":I
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    if-eqz p1, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 66
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 68
    :cond_0
    return-void
.end method

.method public setDrawableBottom(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 99
    iget v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->mAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->invalidate()V

    .line 103
    return-void
.end method
