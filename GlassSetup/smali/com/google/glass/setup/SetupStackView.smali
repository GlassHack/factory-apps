.class public Lcom/google/glass/setup/SetupStackView;
.super Landroid/widget/FrameLayout;
.source "SetupStackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/SetupStackView$AnimationDoneListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0xc8

.field private static final FAR_SCALE:F = 0.7f

.field private static final NEAR_SCALE:F = 1.0f


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private final maxTranslation:I

.field private final viewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/glass/setup/SetupCardScrollView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/setup/SetupStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/glass/setup/SetupStackView;->maxTranslation:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/SetupStackView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method public getStackSize()I
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 124
    iget-object v0, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopView()Lcom/google/glass/setup/SetupCardScrollView;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 119
    iget-object v0, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupCardScrollView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popView()Lcom/google/glass/setup/SetupCardScrollView;
    .locals 9

    .prologue
    const-wide/16 v7, 0xc8

    const v6, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 85
    iget-object v2, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupCardScrollView;

    .line 87
    .local v0, "newTopView":Lcom/google/glass/setup/SetupCardScrollView;
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupCardScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/setup/SetupCardScrollView;->setVisibility(I)V

    .line 89
    invoke-virtual {v0, v5}, Lcom/google/glass/setup/SetupCardScrollView;->setAlpha(F)V

    .line 90
    invoke-virtual {v0, v6}, Lcom/google/glass/setup/SetupCardScrollView;->setScaleX(F)V

    .line 91
    invoke-virtual {v0, v6}, Lcom/google/glass/setup/SetupCardScrollView;->setScaleY(F)V

    .line 92
    invoke-virtual {v0, v5}, Lcom/google/glass/setup/SetupCardScrollView;->setTranslationY(F)V

    .line 93
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupCardScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 96
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 101
    .end local v0    # "newTopView":Lcom/google/glass/setup/SetupCardScrollView;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/setup/SetupCardScrollView;

    .line 102
    .local v1, "oldTopView":Lcom/google/glass/setup/SetupCardScrollView;
    invoke-virtual {v1}, Lcom/google/glass/setup/SetupCardScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 103
    invoke-virtual {v1}, Lcom/google/glass/setup/SetupCardScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/setup/SetupStackView;->maxTranslation:I

    int-to-float v3, v3

    .line 104
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 106
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/glass/setup/SetupStackView$2;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/setup/SetupStackView$2;-><init>(Lcom/google/glass/setup/SetupStackView;Lcom/google/glass/setup/SetupCardScrollView;)V

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 114
    return-object v1
.end method

.method public pushView()Lcom/google/glass/setup/SetupCardScrollView;
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, -0x1

    const v3, 0x3f333333    # 0.7f

    const/4 v4, 0x0

    .line 50
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v1

    .line 53
    .local v1, "oldTopView":Lcom/google/glass/setup/SetupCardScrollView;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/google/glass/setup/SetupCardScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 55
    invoke-virtual {v1}, Lcom/google/glass/setup/SetupCardScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/glass/setup/SetupStackView$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/setup/SetupStackView$1;-><init>(Lcom/google/glass/setup/SetupStackView;Lcom/google/glass/setup/SetupCardScrollView;)V

    .line 60
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 68
    :cond_0
    new-instance v0, Lcom/google/glass/setup/SetupCardScrollView;

    invoke-virtual {p0}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/setup/SetupCardScrollView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "newTopView":Lcom/google/glass/setup/SetupCardScrollView;
    iget-object v2, p0, Lcom/google/glass/setup/SetupStackView;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2}, Lcom/google/glass/setup/SetupCardScrollView;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 70
    iget v2, p0, Lcom/google/glass/setup/SetupStackView;->maxTranslation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/glass/setup/SetupCardScrollView;->setTranslationY(F)V

    .line 71
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupCardScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 74
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 76
    iget-object v2, p0, Lcom/google/glass/setup/SetupStackView;->viewStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, v0, v5, v5}, Lcom/google/glass/setup/SetupStackView;->addView(Landroid/view/View;II)V

    .line 78
    return-object v0
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/setup/SetupStackView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method
