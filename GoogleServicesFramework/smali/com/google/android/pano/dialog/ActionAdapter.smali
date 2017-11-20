.class public Lcom/google/android/pano/dialog/ActionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/google/android/pano/widget/ScrollAdapter;
.implements Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;,
        Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;,
        Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    }
.end annotation


# static fields
.field private static sDescriptionMaxHeight:Ljava/lang/Integer;


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationDuration:I

.field private final mContext:Landroid/content/Context;

.field private final mDisabledChevronAlpha:F

.field private final mDisabledDescriptionAlpha:F

.field private final mDisabledTitleAlpha:F

.field private mKeyPressed:Z

.field private mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

.field private mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

.field private mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

.field private mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

.field private final mSelectedChevronAlpha:F

.field private final mSelectedDescriptionAlpha:F

.field private final mSelectedTitleAlpha:F

.field private mSelectedView:Landroid/view/View;

.field private final mUnselectedAlpha:F

.field private final mUnselectedDescriptionAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/pano/dialog/ActionAdapter;->sDescriptionMaxHeight:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedView:Landroid/view/View;

    .line 116
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/pano/R$integer;->dialog_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mAnimationDuration:I

    .line 120
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_unselected_text_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnselectedAlpha:F

    .line 123
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_selected_title_text_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedTitleAlpha:F

    .line 125
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_disabled_title_text_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mDisabledTitleAlpha:F

    .line 128
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_selected_description_text_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedDescriptionAlpha:F

    .line 130
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_unselected_description_text_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnselectedDescriptionAlpha:F

    .line 132
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_disabled_description_text_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mDisabledDescriptionAlpha:F

    .line 135
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_selected_chevron_background_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedChevronAlpha:F

    .line 137
    sget v1, Lcom/google/android/pano/R$alpha;->list_item_disabled_chevron_background_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mDisabledChevronAlpha:F

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/ActionAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/pano/dialog/ActionAdapter;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/ActionAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/pano/dialog/ActionAdapter;)Lcom/google/android/pano/dialog/ActionAdapter$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/ActionAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    return-object v0
.end method

.method private changeFocus(Landroid/view/View;ZZ)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z
    .param p3, "shouldAnimate"    # Z

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    sget v9, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 278
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->infoOnly()Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz p2, :cond_3

    iget v8, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedTitleAlpha:F

    .line 280
    .local v8, "titleAlpha":F
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->infoOnly()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    iget v5, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnselectedDescriptionAlpha:F

    .line 282
    .local v5, "descriptionAlpha":F
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->infoOnly()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    iget v2, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedChevronAlpha:F

    .line 285
    .local v2, "chevronAlpha":F
    :goto_3
    sget v9, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 286
    .local v7, "title":Landroid/widget/TextView;
    invoke-direct {p0, v7, p3, v8}, Lcom/google/android/pano/dialog/ActionAdapter;->setAlpha(Landroid/view/View;ZF)V

    .line 288
    sget v9, Lcom/google/android/pano/R$id;->action_description:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 289
    .local v4, "description":Landroid/widget/TextView;
    invoke-direct {p0, v4, p3, v5}, Lcom/google/android/pano/dialog/ActionAdapter;->setAlpha(Landroid/view/View;ZF)V

    .line 291
    sget v9, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 292
    .local v1, "checkmark":Landroid/widget/ImageView;
    invoke-direct {p0, v1, p3, v8}, Lcom/google/android/pano/dialog/ActionAdapter;->setAlpha(Landroid/view/View;ZF)V

    .line 294
    sget v9, Lcom/google/android/pano/R$id;->action_icon:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 295
    .local v6, "icon":Landroid/widget/ImageView;
    invoke-direct {p0, v6, p3, v8}, Lcom/google/android/pano/dialog/ActionAdapter;->setAlpha(Landroid/view/View;ZF)V

    .line 297
    sget v9, Lcom/google/android/pano/R$id;->action_next_chevron_background:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, "chevronBackground":Landroid/view/View;
    invoke-direct {p0, v3, p3, v2}, Lcom/google/android/pano/dialog/ActionAdapter;->setAlpha(Landroid/view/View;ZF)V

    .line 300
    iget-object v9, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    if-eqz v9, :cond_0

    if-eqz p2, :cond_0

    .line 302
    iget-object v10, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    sget v9, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/pano/dialog/Action;

    invoke-interface {v10, v9}, Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;->onActionFocused(Lcom/google/android/pano/dialog/Action;)V

    goto :goto_0

    .line 278
    .end local v1    # "checkmark":Landroid/widget/ImageView;
    .end local v2    # "chevronAlpha":F
    .end local v3    # "chevronBackground":Landroid/view/View;
    .end local v4    # "description":Landroid/widget/TextView;
    .end local v5    # "descriptionAlpha":F
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v7    # "title":Landroid/widget/TextView;
    .end local v8    # "titleAlpha":F
    :cond_3
    iget v8, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mUnselectedAlpha:F

    goto :goto_1

    :cond_4
    iget v8, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mDisabledTitleAlpha:F

    goto :goto_1

    .line 280
    .restart local v8    # "titleAlpha":F
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v5, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedDescriptionAlpha:F

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mDisabledDescriptionAlpha:F

    goto :goto_2

    .line 282
    .restart local v5    # "descriptionAlpha":F
    :cond_7
    iget v2, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mDisabledChevronAlpha:F

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private fadeCheckmarks(Landroid/view/View;Lcom/google/android/pano/dialog/Action;IILandroid/view/animation/Interpolator;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "action"    # Lcom/google/android/pano/dialog/Action;
    .param p3, "duration"    # I
    .param p4, "delay"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 476
    invoke-virtual {p2}, Lcom/google/android/pano/dialog/Action;->getCheckSetId()I

    move-result v1

    .line 477
    .local v1, "actionCheckSetId":I
    if-eqz v1, :cond_4

    .line 480
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 481
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 482
    .local v0, "a":Lcom/google/android/pano/dialog/Action;
    if-eq v0, p2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getCheckSetId()I

    move-result v6

    if-ne v6, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 483
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/pano/dialog/Action;->setChecked(Z)V

    .line 484
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v6, :cond_1

    .line 485
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v6, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getItemView(I)Landroid/view/View;

    move-result-object v5

    .line 486
    .local v5, "viewToAnimateOut":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 487
    sget v6, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 489
    .local v2, "checkView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p3

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p4

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 491
    if-eqz p5, :cond_0

    .line 492
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 494
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/google/android/pano/dialog/ActionAdapter$3;

    invoke-direct {v7, p0, v2}, Lcom/google/android/pano/dialog/ActionAdapter$3;-><init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 480
    .end local v2    # "checkView":Landroid/view/View;
    .end local v5    # "viewToAnimateOut":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "a":Lcom/google/android/pano/dialog/Action;
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 507
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/google/android/pano/dialog/Action;->setChecked(Z)V

    .line 508
    iget-object v6, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    if-eqz v6, :cond_4

    .line 509
    sget v6, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 510
    .restart local v2    # "checkView":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 511
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 512
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p3

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, p4

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 514
    if-eqz p5, :cond_3

    .line 515
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 517
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 521
    .end local v2    # "checkView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_4
    return-void
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 338
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 339
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 341
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 342
    return-void
.end method

.method private static getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/Integer;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "description"    # Landroid/widget/TextView;

    .prologue
    .line 529
    sget-object v4, Lcom/google/android/pano/dialog/ActionAdapter;->sDescriptionMaxHeight:Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 531
    .local v1, "res":Landroid/content/res/Resources;
    sget v4, Lcom/google/android/pano/R$dimen;->list_item_vertical_padding:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 532
    .local v3, "verticalPadding":F
    sget v4, Lcom/google/android/pano/R$integer;->action_title_max_lines:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 533
    .local v2, "titleMaxLines":I
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 539
    .local v0, "displayHeight":I
    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/google/android/pano/dialog/ActionAdapter;->sDescriptionMaxHeight:Ljava/lang/Integer;

    .line 542
    .end local v0    # "displayHeight":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "titleMaxLines":I
    .end local v3    # "verticalPadding":F
    :cond_0
    sget-object v4, Lcom/google/android/pano/dialog/ActionAdapter;->sDescriptionMaxHeight:Ljava/lang/Integer;

    return-object v4
.end method

.method private prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "initAlpha"    # F
    .param p3, "destAlpha"    # F
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p7, "pressed"    # Z

    .prologue
    .line 437
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 438
    sget v0, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/dialog/Action;

    .line 440
    .local v2, "action":Lcom/google/android/pano/dialog/Action;
    if-nez p7, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 441
    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/dialog/ActionAdapter;->fadeCheckmarks(Landroid/view/View;Lcom/google/android/pano/dialog/Action;IILandroid/view/animation/Interpolator;)V

    .line 444
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 445
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p5

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 448
    if-eqz p6, :cond_1

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 451
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/pano/dialog/ActionAdapter$2;

    invoke-direct {v1, p0, p1, p7, v2}, Lcom/google/android/pano/dialog/ActionAdapter$2;-><init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;ZLcom/google/android/pano/dialog/Action;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 472
    .end local v2    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_2
    return-void
.end method

.method private setAlpha(Landroid/view/View;ZF)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shouldAnimate"    # Z
    .param p3, "alpha"    # F

    .prologue
    .line 345
    if-eqz p2, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setIndicator(Landroid/widget/ImageView;Lcom/google/android/pano/dialog/Action;)V
    .locals 5
    .param p1, "indicatorView"    # Landroid/widget/ImageView;
    .param p2, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 308
    iget-object v2, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/google/android/pano/dialog/Action;->getIndicator(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 309
    .local v1, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/pano/dialog/Action;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    .line 314
    .local v0, "iconUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 315
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/pano/widget/BitmapDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;

    move-result-object v2

    new-instance v3, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    iget-object v4, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->resource(Landroid/net/Uri;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->width(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->build()Lcom/google/android/pano/widget/BitmapWorkerOptions;

    move-result-object v3

    new-instance v4, Lcom/google/android/pano/dialog/ActionAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/pano/dialog/ActionAdapter$1;-><init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/pano/widget/BitmapDownloader;->getBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V

    goto :goto_0

    .line 331
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addAction(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/ActionAdapter;->notifyDataSetChanged()V

    .line 239
    return-void
.end method

.method public getActions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExpandAdapter()Lcom/google/android/pano/widget/ScrollAdapterBase;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScrapView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 152
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/google/android/pano/R$layout;->settings_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 178
    if-nez p2, :cond_0

    .line 179
    invoke-virtual {p0, p3}, Lcom/google/android/pano/dialog/ActionAdapter;->getScrapView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 181
    :cond_0
    iget-object v8, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 182
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    sget v8, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 183
    .local v7, "title":Landroid/widget/TextView;
    sget v8, Lcom/google/android/pano/R$id;->action_description:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 184
    .local v4, "description":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    sget v8, Lcom/google/android/pano/R$id;->action_checkmark:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 189
    .local v1, "checkmarkView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v10

    :goto_1
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    sget v8, Lcom/google/android/pano/R$id;->action_icon:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 192
    .local v5, "indicatorView":Landroid/widget/ImageView;
    invoke-direct {p0, v5, v0}, Lcom/google/android/pano/dialog/ActionAdapter;->setIndicator(Landroid/widget/ImageView;Lcom/google/android/pano/dialog/Action;)V

    .line 194
    sget v8, Lcom/google/android/pano/R$id;->action_next_chevron:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 195
    .local v3, "chevronView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move v9, v10

    :cond_1
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    sget v8, Lcom/google/android/pano/R$id;->action_next_chevron_background:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "chevronBackgroundView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move v11, v10

    :cond_2
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 201
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->hasMultilineDescription()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 202
    sget v8, Lcom/google/android/pano/R$integer;->action_title_max_lines:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7, v4}, Lcom/google/android/pano/dialog/ActionAdapter;->getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 211
    :goto_2
    sget v8, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 212
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 213
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-direct {p0, p2, v10, v10}, Lcom/google/android/pano/dialog/ActionAdapter;->changeFocus(Landroid/view/View;ZZ)V

    .line 216
    return-object p2

    .end local v1    # "checkmarkView":Landroid/widget/ImageView;
    .end local v2    # "chevronBackgroundView":Landroid/view/View;
    .end local v3    # "chevronView":Landroid/widget/ImageView;
    .end local v5    # "indicatorView":Landroid/widget/ImageView;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_3
    move v8, v10

    .line 185
    goto :goto_0

    .restart local v1    # "checkmarkView":Landroid/widget/ImageView;
    :cond_4
    move v8, v11

    .line 189
    goto :goto_1

    .line 206
    .restart local v2    # "chevronBackgroundView":Landroid/view/View;
    .restart local v3    # "chevronView":Landroid/widget/ImageView;
    .restart local v5    # "indicatorView":Landroid/widget/ImageView;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_5
    sget v8, Lcom/google/android/pano/R$integer;->action_title_min_lines:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 207
    sget v8, Lcom/google/android/pano/R$integer;->action_description_min_lines:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    if-eqz v1, :cond_0

    .line 362
    sget v1, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 363
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/pano/dialog/ActionAdapter$Listener;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V

    .line 365
    .end local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 372
    if-nez p1, :cond_1

    .line 373
    const/4 v9, 0x0

    .line 432
    :cond_0
    :goto_0
    return v9

    .line 375
    :cond_1
    const/4 v9, 0x0

    .line 376
    .local v9, "handled":Z
    sget v0, Lcom/google/android/pano/R$id;->action_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/pano/dialog/Action;

    .line 377
    .local v8, "action":Lcom/google/android/pano/dialog/Action;
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 383
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 385
    .local v10, "manager":Landroid/media/AudioManager;
    invoke-virtual {v8}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/google/android/pano/dialog/Action;->infoOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 387
    const/16 v0, 0x9

    invoke-virtual {v10, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 389
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 392
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 394
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 405
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/pano/dialog/ActionAdapter;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 408
    const/4 v9, 0x1

    goto :goto_0

    .line 412
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    .line 419
    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mKeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/pano/dialog/ActionAdapter;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 422
    const/4 v9, 0x1

    goto :goto_0

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScrolled(Landroid/view/View;IFF)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "mainPosition"    # F
    .param p4, "secondPosition"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    float-to-double v3, p3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    move v0, v1

    .line 261
    .local v0, "hasFocus":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-direct {p0, p1, v1, v1}, Lcom/google/android/pano/dialog/ActionAdapter;->changeFocus(Landroid/view/View;ZZ)V

    .line 264
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedView:Landroid/view/View;

    .line 270
    :cond_0
    :goto_1
    return-void

    .end local v0    # "hasFocus":Z
    :cond_1
    move v0, v2

    .line 260
    goto :goto_0

    .line 266
    .restart local v0    # "hasFocus":Z
    :cond_2
    iget-object v3, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v3, v2, v1}, Lcom/google/android/pano/dialog/ActionAdapter;->changeFocus(Landroid/view/View;ZZ)V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedView:Landroid/view/View;

    goto :goto_1
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/pano/dialog/ActionAdapter;->changeFocus(Landroid/view/View;ZZ)V

    .line 250
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/ActionAdapter;->notifyDataSetChanged()V

    .line 253
    return-void
.end method

.method public setListener(Lcom/google/android/pano/dialog/ActionAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 226
    return-void
.end method

.method public setOnFocusListener(Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;)V
    .locals 0
    .param p1, "onFocusListener"    # Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnFocusListener:Lcom/google/android/pano/dialog/ActionAdapter$OnFocusListener;

    .line 230
    return-void
.end method

.method public setOnKeyListener(Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mOnKeyListener:Lcom/google/android/pano/dialog/ActionAdapter$OnKeyListener;

    .line 234
    return-void
.end method

.method setScrollAdapterView(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0
    .param p1, "scrollAdapterView"    # Lcom/google/android/pano/widget/ScrollAdapterView;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter;->mScrollAdapterView:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 357
    return-void
.end method

.method public viewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 147
    return-void
.end method
