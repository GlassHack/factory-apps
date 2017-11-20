.class final Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExpandedView"
.end annotation


# instance fields
.field expandedView:Landroid/view/View;

.field grow_anim:Landroid/animation/Animator;

.field index:I

.field progress:F

.field shrink_anim:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

.field viewType:I


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/view/View;II)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "t"    # I

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    .line 383
    iput-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    .line 384
    iput p3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    .line 385
    iput p4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->viewType:I

    .line 386
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 456
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 460
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 462
    :cond_1
    return-void
.end method

.method createFadeInAnimator()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 396
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 398
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 399
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 400
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method createFadeOutAnimator()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 408
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 409
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 410
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 413
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method setProgress(F)V
    .locals 7
    .param p1, "p"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 418
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$400(Lcom/google/android/pano/widget/ScrollAdapterView;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    move v0, v2

    .line 422
    .local v0, "growing":Z
    :goto_1
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_5

    move v1, v2

    .line 423
    .local v1, "shrinking":Z
    :goto_2
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    .line 424
    if-eqz v0, :cond_6

    .line 425
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 427
    iput-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-nez v2, :cond_3

    .line 430
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 431
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 432
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .end local v0    # "growing":Z
    .end local v1    # "shrinking":Z
    :cond_4
    move v0, v3

    .line 421
    goto :goto_1

    .restart local v0    # "growing":Z
    :cond_5
    move v1, v3

    .line 422
    goto :goto_2

    .line 437
    .restart local v1    # "shrinking":Z
    :cond_6
    if-eqz v1, :cond_0

    .line 438
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-eqz v2, :cond_7

    .line 439
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 440
    iput-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 442
    :cond_7
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-nez v2, :cond_8

    .line 443
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 444
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 445
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 447
    :cond_8
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_0
.end method
