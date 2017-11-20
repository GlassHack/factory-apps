.class Landroid/support/v4/view/be;
.super Landroid/support/v4/view/bd;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 906
    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 975
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 976
    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 921
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 922
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 925
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 926
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 930
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 941
    const/4 p2, 0x2

    .line 943
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 944
    return-void
.end method

.method public final c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 917
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 918
    return-void
.end method

.method public final e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 933
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public final m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 965
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 970
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method
