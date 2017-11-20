.class public Lcom/google/android/pano/dialog/BaseDialogFragment;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"


# instance fields
.field public mActionAreaId:I

.field public mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

.field public mContentAreaId:I

.field public mFirstOnStart:Z

.field private mFragment:Lcom/google/android/pano/dialog/LiteFragment;

.field public mIntroAnimationInProgress:Z

.field public mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/LiteFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/LiteFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lcom/google/android/pano/R$id;->content_fragment:I

    iput v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mContentAreaId:I

    .line 44
    sget v0, Lcom/google/android/pano/R$id;->action_fragment:I

    iput v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mActionAreaId:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mFirstOnStart:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mIntroAnimationInProgress:Z

    .line 53
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 56
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/dialog/BaseDialogFragment;)Lcom/google/android/pano/dialog/LiteFragment;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/BaseDialogFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    return-object v0
.end method


# virtual methods
.method public onActionClicked(Landroid/app/Activity;Lcom/google/android/pano/dialog/Action;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 60
    instance-of v1, p1, Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    if-eqz v1, :cond_1

    .line 61
    check-cast p1, Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {p1, p2}, Lcom/google/android/pano/dialog/ActionAdapter$Listener;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/pano/dialog/Action;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onIntroAnimationFinished()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mIntroAnimationInProgress:Z

    .line 296
    return-void
.end method

.method public performEntryTransition(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentView"    # Landroid/view/ViewGroup;
    .param p3, "iconResourceId"    # I
    .param p4, "iconResourceUri"    # Landroid/net/Uri;
    .param p5, "icon"    # Landroid/widget/ImageView;
    .param p6, "title"    # Landroid/widget/TextView;
    .param p7, "description"    # Landroid/widget/TextView;
    .param p8, "breadcrumb"    # Landroid/widget/TextView;

    .prologue
    .line 94
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 95
    .local v4, "twoPane":Landroid/widget/RelativeLayout;
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mIntroAnimationInProgress:Z

    .line 102
    const/4 v15, 0x1

    .line 103
    .local v15, "lShouldAnimateIcon":Z
    const/16 v18, 0x0

    .line 104
    .local v18, "uriMatch":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/pano/util/TransitionImage;->readMultipleFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v14

    .line 106
    .local v14, "images":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/pano/util/TransitionImage;>;"
    const/16 v16, 0x0

    .line 109
    .local v16, "ltransitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 110
    if-eqz p3, :cond_2

    .line 111
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/pano/data/util/UriUtils;->getAndroidResourceUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 118
    .local v11, "iconUri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/pano/util/TransitionImage;

    .line 119
    .local v17, "src":Lcom/google/android/pano/util/TransitionImage;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v13

    .line 120
    .local v13, "color":I
    if-eqz v11, :cond_0

    .line 121
    new-instance v16, Lcom/google/android/pano/util/TransitionImageAnimation;

    .end local v16    # "ltransitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/pano/util/TransitionImageAnimation;-><init>(Landroid/view/ViewGroup;)V

    .line 122
    .restart local v16    # "ltransitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    invoke-virtual/range {v16 .. v17}, Lcom/google/android/pano/util/TransitionImageAnimation;->addTransitionSource(Lcom/google/android/pano/util/TransitionImage;)V

    .line 123
    const-wide/16 v2, 0xfa

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->transitionDurationMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/google/android/pano/util/TransitionImageAnimation;->transitionStartDelayMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->interpolator(Landroid/view/animation/Interpolator;)Lcom/google/android/pano/util/TransitionImageAnimation;

    .line 131
    .end local v17    # "src":Lcom/google/android/pano/util/TransitionImage;
    :cond_0
    :goto_1
    move-object/from16 v10, v16

    .line 134
    .local v10, "transitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    sget v2, Lcom/google/android/pano/R$anim;->hard_cut_in:I

    sget v3, Lcom/google/android/pano/R$anim;->fade_out:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v2}, Lcom/google/android/pano/dialog/LiteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/pano/R$color;->dialog_activity_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 137
    .local v12, "bgColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    sget v2, Lcom/google/android/pano/R$id;->shadow_layout:I

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    .line 144
    if-eqz v10, :cond_1

    .line 145
    new-instance v2, Lcom/google/android/pano/dialog/BaseDialogFragment$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v1}, Lcom/google/android/pano/dialog/BaseDialogFragment$1;-><init>(Lcom/google/android/pano/dialog/BaseDialogFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v10, v2}, Lcom/google/android/pano/util/TransitionImageAnimation;->listener(Lcom/google/android/pano/util/TransitionImageAnimation$Listener;)Lcom/google/android/pano/util/TransitionImageAnimation;

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-eqz v2, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setShadowsAlpha(F)V

    .line 177
    :cond_1
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    new-instance v2, Lcom/google/android/pano/dialog/BaseDialogFragment$2;

    move-object/from16 v3, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v11}, Lcom/google/android/pano/dialog/BaseDialogFragment$2;-><init>(Lcom/google/android/pano/dialog/BaseDialogFragment;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/google/android/pano/util/TransitionImageAnimation;Landroid/net/Uri;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 249
    return-void

    .line 113
    .end local v10    # "transitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    .end local v11    # "iconUri":Landroid/net/Uri;
    .end local v12    # "bgColor":I
    .end local v13    # "color":I
    :cond_2
    if-eqz p4, :cond_3

    .line 114
    move-object/from16 v11, p4

    .restart local v11    # "iconUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 116
    .end local v11    # "iconUri":Landroid/net/Uri;
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "iconUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 128
    .end local v11    # "iconUri":Landroid/net/Uri;
    :cond_4
    const/4 v11, 0x0

    .line 129
    .restart local v11    # "iconUri":Landroid/net/Uri;
    const/4 v13, 0x0

    .restart local v13    # "color":I
    goto/16 :goto_1
.end method

.method public prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "initAlpha"    # F
    .param p3, "initTransX"    # F
    .param p4, "delay"    # I
    .param p5, "duration"    # I
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p7, "isIcon"    # Z

    .prologue
    .line 264
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 268
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 270
    if-eqz p6, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/pano/dialog/BaseDialogFragment$3;

    invoke-direct {v1, p0, p1, p7}, Lcom/google/android/pano/dialog/BaseDialogFragment$3;-><init>(Lcom/google/android/pano/dialog/BaseDialogFragment;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 287
    :cond_1
    return-void
.end method
