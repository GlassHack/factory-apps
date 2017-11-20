.class final Landroid/support/v4/view/ci;
.super Landroid/support/v4/view/cg;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Landroid/support/v4/view/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/cq;)V
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/cn;

    invoke-direct {v1, p2, p1}, Landroid/support/v4/view/cn;-><init>(Landroid/support/v4/view/cq;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 586
    return-void
.end method
