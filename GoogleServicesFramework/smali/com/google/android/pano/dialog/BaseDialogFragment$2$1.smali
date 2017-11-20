.class Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/dialog/BaseDialogFragment$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/BaseDialogFragment$2;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    invoke-static {v0}, Lcom/google/android/pano/dialog/BaseDialogFragment;->access$000(Lcom/google/android/pano/dialog/BaseDialogFragment;)Lcom/google/android/pano/dialog/LiteFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$twoPane:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    const/16 v12, 0x78

    .line 199
    .local v12, "secondaryDelay":I
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xff

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 200
    .local v11, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 201
    const-wide/16 v2, 0x78

    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 202
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    .line 206
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v1, v2, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$title:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, -0x3d100000    # -120.0f

    const/16 v4, 0x78

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/pano/dialog/BaseDialogFragment;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 210
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v1, v2, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$breadcrumb:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, -0x3d100000    # -120.0f

    const/16 v4, 0x78

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/pano/dialog/BaseDialogFragment;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 214
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v1, v2, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$description:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, -0x3d100000    # -120.0f

    const/16 v4, 0x78

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/pano/dialog/BaseDialogFragment;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 221
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v2, v2, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget v2, v2, Lcom/google/android/pano/dialog/BaseDialogFragment;->mActionAreaId:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "actionFragmentView":Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x78

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/pano/dialog/BaseDialogFragment;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 227
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    if-eqz v0, :cond_3

    .line 229
    new-instance v13, Lcom/google/android/pano/util/TransitionImage;

    invoke-direct {v13}, Lcom/google/android/pano/util/TransitionImage;-><init>()V

    .line 230
    .local v13, "target":Lcom/google/android/pano/util/TransitionImage;
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$iconUri:Landroid/net/Uri;

    invoke-virtual {v13, v0}, Lcom/google/android/pano/util/TransitionImage;->setUri(Landroid/net/Uri;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v13, v0}, Lcom/google/android/pano/util/TransitionImage;->createFromImageView(Landroid/widget/ImageView;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/ColorDrawable;

    .line 234
    .local v10, "d":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/pano/util/TransitionImage;->setBackground(I)V

    .line 236
    .end local v10    # "d":Landroid/graphics/drawable/ColorDrawable;
    :cond_2
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-virtual {v0, v13}, Lcom/google/android/pano/util/TransitionImageAnimation;->addTransitionTarget(Lcom/google/android/pano/util/TransitionImage;)Z

    .line 237
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-virtual {v0}, Lcom/google/android/pano/util/TransitionImageAnimation;->startTransition()V

    goto/16 :goto_0

    .line 238
    .end local v13    # "target":Lcom/google/android/pano/util/TransitionImage;
    :cond_3
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v3, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$icon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, -0x3d100000    # -120.0f

    const/16 v6, 0x78

    const/16 v7, 0xfa

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v8, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/pano/dialog/BaseDialogFragment;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 242
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;->this$1:Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setShadowsAlpha(F)V

    goto/16 :goto_0
.end method
