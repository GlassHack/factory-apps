.class public Lcom/google/glass/setup/SetupCardScrollView;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "SetupCardScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_START_DELAY_MS:I = 0x7d0

.field private static final ARROW_TRANSLATION_ANIMATION_PX:I = 0x1e

.field private static final DELAY_BEFORE_FADE_IN_MS:I = 0x12c

.field private static final FADE_IN_ANIMATION_DURATION_MS:I = 0xc8

.field private static final FADE_OUT_ANIMATION_DURATION_MS:I = 0x258


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private currentViewIndex:I

.field private isCallingListener:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private onSettledAfterSwipeListener:Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/setup/SetupCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/google/glass/setup/SetupCardScrollView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/setup/SetupCardScrollView$1;-><init>(Lcom/google/glass/setup/SetupCardScrollView;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/setup/SetupCardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 97
    new-instance v0, Lcom/google/glass/setup/SetupCardScrollView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/setup/SetupCardScrollView$2;-><init>(Lcom/google/glass/setup/SetupCardScrollView;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/setup/SetupCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/setup/SetupCardScrollView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupCardScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupCardScrollView;->setArrowAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/setup/SetupCardScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupCardScrollView;

    .prologue
    .line 27
    iget v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/setup/SetupCardScrollView;)Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupCardScrollView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->onSettledAfterSwipeListener:Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/setup/SetupCardScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupCardScrollView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->isCallingListener:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/setup/SetupCardScrollView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupCardScrollView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/setup/SetupCardScrollView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupCardScrollView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private inflateView(I)Landroid/view/View;
    .locals 3
    .param p1, "layoutId"    # I

    .prologue
    const/4 v1, 0x0

    .line 288
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 300
    :goto_0
    return-object v1

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "inflatedView":Landroid/view/View;
    instance-of v2, v1, Lcom/google/glass/widget/horizontalscroll/Card;

    if-eqz v2, :cond_1

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_1
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;

    invoke-virtual {p0}, Lcom/google/glass/setup/SetupCardScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, "card":Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->addView(Landroid/view/View;)V

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 300
    goto :goto_0
.end method

.method private setArrowAnimation(Landroid/view/View;)V
    .locals 18
    .param p1, "card"    # Landroid/view/View;

    .prologue
    .line 131
    sget v14, Lcom/google/glass/setup/R$id;->leftArrow:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 132
    .local v7, "leftArrowView":Landroid/view/View;
    sget v14, Lcom/google/glass/setup/R$id;->rightArrow:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 135
    .local v13, "rightArrowView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v14, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->end()V

    .line 139
    :cond_0
    const-string v14, "translationX"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    .line 140
    invoke-static {v7, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0x258

    .line 141
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 142
    .local v6, "leftArrowTransX":Landroid/animation/ObjectAnimator;
    const-string v14, "translationX"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_1

    .line 143
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0x258

    .line 144
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 145
    .local v12, "rightArrowTransX":Landroid/animation/ObjectAnimator;
    const-string v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_2

    .line 146
    invoke-static {v7, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0x258

    .line 147
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 148
    .local v4, "leftArrowFadeOut":Landroid/animation/ObjectAnimator;
    const-string v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_3

    .line 149
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0x258

    .line 150
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 151
    .local v10, "rightArrowFadeOut":Landroid/animation/ObjectAnimator;
    const-string v14, "translationX"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 152
    invoke-static {v7, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0x12c

    .line 153
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 154
    .local v5, "leftArrowReverseTransX":Landroid/animation/ObjectAnimator;
    const-string v14, "translationX"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 155
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0x12c

    .line 156
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 157
    .local v11, "rightArrowReverseTransX":Landroid/animation/ObjectAnimator;
    const-string v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_4

    .line 158
    invoke-static {v7, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0xc8

    .line 159
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 160
    .local v3, "leftArrowFadeIn":Landroid/animation/ObjectAnimator;
    const-string v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_5

    .line 161
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v15, 0xc8

    .line 162
    invoke-virtual/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 164
    .local v9, "rightArrowFadeIn":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 165
    .local v2, "fadeOutSet":Landroid/animation/AnimatorSet;
    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v12, v14, v15

    const/4 v15, 0x3

    aput-object v10, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 166
    const-wide/16 v14, 0x7d0

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 168
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 169
    .local v8, "reverseTransSet":Landroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 171
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 172
    .local v1, "fadeInSet":Landroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-virtual {v1, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 174
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    aput-object v8, v15, v16

    const/16 v16, 0x2

    aput-object v1, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v15, Lcom/google/glass/setup/SetupCardScrollView$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/glass/setup/SetupCardScrollView$3;-><init>(Lcom/google/glass/setup/SetupCardScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupCardScrollView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 196
    return-void

    .line 139
    nop

    :array_0
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
    .end array-data

    .line 142
    :array_1
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    .line 145
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 148
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 157
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 160
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopsAllVideos()V
    .locals 4

    .prologue
    .line 256
    iget-object v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 257
    .local v1, "view":Landroid/view/View;
    sget v3, Lcom/google/glass/setup/R$id;->videoView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/GlassVideoView;

    .line 258
    .local v0, "videoView":Lcom/google/glass/widget/GlassVideoView;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->stop()V

    goto :goto_0

    .line 262
    .end local v0    # "videoView":Lcom/google/glass/widget/GlassVideoView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentLayoutId()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, -0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getNextLayoutId()I
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 275
    const/4 v0, -0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPrevLayoutId()I
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    if-nez v0, :cond_0

    .line 282
    const/4 v0, -0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/glass/setup/SetupCardScrollView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 206
    return-void
.end method

.method public setOnSettledAfterSwipeListener(Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/glass/setup/SetupCardScrollView;->onSettledAfterSwipeListener:Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;

    .line 201
    return-void
.end method

.method public setViews(IIII)V
    .locals 5
    .param p1, "prevLayoutId"    # I
    .param p2, "curLayoutId"    # I
    .param p3, "nextLayoutId"    # I
    .param p4, "swipeDirection"    # I

    .prologue
    const/4 v4, -0x1

    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->isCallingListener:Z

    .line 219
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 220
    .local v1, "newViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 221
    .local v0, "newCurrentViewIndex":I
    if-eq p1, v4, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 223
    if-lez p4, :cond_3

    invoke-virtual {p0}, Lcom/google/glass/setup/SetupCardScrollView;->getCurrentLayoutId()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    iget v3, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    :goto_0
    if-lez p4, :cond_4

    invoke-virtual {p0}, Lcom/google/glass/setup/SetupCardScrollView;->getNextLayoutId()I

    move-result v2

    if-ne p2, v2, :cond_4

    .line 230
    iget-object v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    iget v3, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_1
    if-eq p3, v4, :cond_1

    .line 237
    invoke-direct {p0, p3}, Lcom/google/glass/setup/SetupCardScrollView;->inflateView(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/setup/SetupCardScrollView;->stopsAllVideos()V

    .line 240
    iput-object v1, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    .line 241
    iput v0, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    .line 243
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupCardScrollView;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupCardScrollView;->activate()V

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 250
    iget v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    invoke-virtual {p0, v2}, Lcom/google/glass/setup/SetupCardScrollView;->setSelection(I)V

    .line 252
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->isCallingListener:Z

    .line 253
    return-void

    .line 226
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupCardScrollView;->inflateView(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_4
    if-gez p4, :cond_5

    invoke-virtual {p0}, Lcom/google/glass/setup/SetupCardScrollView;->getPrevLayoutId()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 232
    iget-object v2, p0, Lcom/google/glass/setup/SetupCardScrollView;->views:Ljava/util/List;

    iget v3, p0, Lcom/google/glass/setup/SetupCardScrollView;->currentViewIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_5
    invoke-direct {p0, p2}, Lcom/google/glass/setup/SetupCardScrollView;->inflateView(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
