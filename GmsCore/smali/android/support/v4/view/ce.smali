.class Landroid/support/v4/view/ce;
.super Landroid/support/v4/view/cc;
.source "SourceFile"


# instance fields
.field e:Ljava/util/WeakHashMap;

.field f:Landroid/support/v4/view/co;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/support/v4/view/cc;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ce;->e:Ljava/util/WeakHashMap;

    .line 508
    new-instance v0, Landroid/support/v4/view/cf;

    invoke-direct {v0, p0}, Landroid/support/v4/view/cf;-><init>(Landroid/support/v4/view/ce;)V

    iput-object v0, p0, Landroid/support/v4/view/ce;->f:Landroid/support/v4/view/co;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 435
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 345
    return-void
.end method

.method public final a(Landroid/view/View;J)V
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 340
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v4/view/co;)V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Landroid/support/v4/view/ce;->f:Landroid/support/v4/view/co;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/support/v4/view/cl;

    invoke-direct {v2, v0, p1}, Landroid/support/v4/view/cl;-><init>(Landroid/support/v4/view/co;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 365
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 470
    return-void
.end method

.method public final b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 350
    return-void
.end method

.method public final c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 355
    return-void
.end method

.method public final d(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 425
    return-void
.end method
