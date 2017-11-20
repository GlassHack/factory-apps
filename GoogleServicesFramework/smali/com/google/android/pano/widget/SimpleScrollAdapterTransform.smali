.class public Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;
.super Ljava/lang/Object;
.source "SimpleScrollAdapterTransform.java"

# interfaces
.implements Lcom/google/android/pano/widget/ScrollAdapterTransform;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHighItemTransform:Landroid/animation/Animator;

.field private mLowItemTransform:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 31
    return-void
.end method

.method private applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V
    .locals 7
    .param p1, "distanceFromCenter"    # I
    .param p2, "animator"    # Landroid/animation/Animator;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 48
    instance-of v5, p2, Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    .line 49
    check-cast p2, Landroid/animation/AnimatorSet;

    .end local p2    # "animator":Landroid/animation/Animator;
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-direct {p0, p1, v5, p3}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V

    .line 50
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 53
    .end local v0    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    .restart local p2    # "animator":Landroid/animation/Animator;
    :cond_0
    instance-of v5, p2, Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    move-object v4, p2

    .line 54
    check-cast v4, Landroid/animation/ValueAnimator;

    .line 55
    .local v4, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, p3}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    .line 57
    .local v1, "duration":J
    int-to-long v5, p1

    cmp-long v5, v5, v1

    if-gez v5, :cond_2

    .line 58
    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 63
    .end local v1    # "duration":J
    .end local v4    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local p2    # "animator":Landroid/animation/Animator;
    :cond_1
    :goto_1
    return-void

    .line 60
    .restart local v1    # "duration":J
    .restart local v4    # "valueAnim":Landroid/animation/ValueAnimator;
    .restart local p2    # "animator":Landroid/animation/Animator;
    :cond_2
    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1
.end method

.method private initializeTransformationRecursive(Landroid/animation/Animator;J)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "defaultDuration"    # J

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    .line 67
    .local v1, "duration":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    .line 68
    move-wide v1, p2

    .line 70
    :cond_0
    instance-of v5, p1, Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    .line 71
    check-cast p1, Landroid/animation/AnimatorSet;

    .end local p1    # "animator":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-direct {p0, v5, v1, v2}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->initializeTransformationRecursive(Landroid/animation/Animator;J)V

    .line 72
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 75
    .end local v0    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    .restart local p1    # "animator":Landroid/animation/Animator;
    :cond_1
    instance-of v5, p1, Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 76
    check-cast v4, Landroid/animation/ValueAnimator;

    .line 78
    .local v4, "valueAnim":Landroid/animation/ValueAnimator;
    const/4 v5, 0x1

    long-to-float v6, v1

    iget-object v7, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    .end local v4    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local p1    # "animator":Landroid/animation/Animator;
    :cond_2
    return-void
.end method


# virtual methods
.method public setHighItemTransform(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "highItemTransform"    # Landroid/animation/Animator;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mHighItemTransform:Landroid/animation/Animator;

    .line 89
    iget-object v0, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mHighItemTransform:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->initializeTransformationRecursive(Landroid/animation/Animator;J)V

    .line 90
    return-void
.end method

.method public setLowItemTransform(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "lowItemTransform"    # Landroid/animation/Animator;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mLowItemTransform:Landroid/animation/Animator;

    .line 98
    iget-object v0, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mLowItemTransform:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->initializeTransformationRecursive(Landroid/animation/Animator;J)V

    .line 99
    return-void
.end method

.method public transform(Landroid/view/View;II)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "distanceFromCenter"    # I
    .param p3, "distanceFromCenter2ndAxis"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mLowItemTransform:Landroid/animation/Animator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mHighItemTransform:Landroid/animation/Animator;

    if-nez v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v0, v1, v2

    .line 39
    .local v0, "absDistance":I
    if-gez p2, :cond_1

    .line 40
    iget-object v1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mLowItemTransform:Landroid/animation/Animator;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mHighItemTransform:Landroid/animation/Animator;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V

    goto :goto_0
.end method
