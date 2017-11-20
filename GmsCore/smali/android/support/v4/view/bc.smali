.class Landroid/support/v4/view/bc;
.super Landroid/support/v4/view/bb;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Landroid/support/v4/view/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)I
    .locals 1

    .prologue
    .line 751
    invoke-static {p1, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method final a()J
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 735
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 736
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/bc;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 748
    return-void
.end method

.method public final b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 775
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 776
    return-void
.end method

.method public final c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 779
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 780
    return-void
.end method

.method public final d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 783
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 784
    return-void
.end method

.method public final e(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 812
    return-void
.end method

.method public final f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public final j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public final k(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public final l(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method
