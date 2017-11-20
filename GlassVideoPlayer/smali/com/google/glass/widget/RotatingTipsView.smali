.class public Lcom/google/glass/widget/RotatingTipsView;
.super Lcom/google/glass/widget/TipsView;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TIP_DURATION_MS:J = 0xfa0L

.field private static final INITIAL_DELAY_MS:J = 0x3e8L

.field private static final MSG_SHOW_DEFAULT_TIP:I = 0x0

.field private static final MSG_SHOW_INITIAL_TIP:I = 0x2

.field private static final MSG_SHOW_NEXT_TIP:I = 0x1

.field private static final SWAP_TEXT_ANIMATION_DURATION_MS:J = 0xc8L

.field private static final TIP_DURATION_MS:J = 0xbb8L


# instance fields
.field private final animateOutListener:Landroid/animation/Animator$AnimatorListener;

.field private currentIndex:I

.field private final handler:Landroid/os/Handler;

.field private isRotating:Z

.field private nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

.field private tips:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lcom/google/glass/widget/RotatingTipsView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/RotatingTipsView$1;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/google/glass/widget/RotatingTipsView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/RotatingTipsView$2;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->animateOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    .line 133
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->getDefaultTip()Lcom/google/glass/widget/RotatingTipsView$Tip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateToNextTip()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/RotatingTipsView;)Lcom/google/glass/widget/RotatingTipsView$Tip;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateIn()V

    return-void
.end method

.method private animateIn()V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 242
    return-void
.end method

.method private animateOut()V
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->animateOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 233
    return-void
.end method

.method private animateToNextTip()V
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    .line 207
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/RotatingTipsView$Tip;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->animateToTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 211
    return-void
.end method

.method private animateToTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    invoke-virtual {v0}, Lcom/google/glass/widget/RotatingTipsView$Tip;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/widget/RotatingTipsView$Tip;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    .line 222
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->onShowTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 223
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateOut()V

    goto :goto_0
.end method

.method private clearHandlerMessages()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    return-void
.end method

.method private getDefaultTip()Lcom/google/glass/widget/RotatingTipsView$Tip;
    .locals 5

    .prologue
    .line 182
    new-instance v0, Lcom/google/glass/widget/RotatingTipsView$Tip;

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTipTextSize()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTipTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/widget/RotatingTipsView$Tip;-><init>(Ljava/lang/String;FLandroid/graphics/Typeface;Z)V

    return-object v0
.end method

.method private startIfReady()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 190
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    :cond_0
    return-void
.end method

.method private stopIfDone()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearHandlerMessages()V

    .line 199
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearAnimation()V

    .line 200
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->showDefaultTip()V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->startIfReady()V

    .line 159
    :cond_0
    return-void
.end method

.method protected isDefaultTipShown()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onShowTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->stopIfDone()V

    .line 165
    return-void
.end method

.method protected showDefaultTip()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->getDefaultTip()Lcom/google/glass/widget/RotatingTipsView$Tip;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->animateToTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 175
    return-void
.end method

.method public startRotating()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    .line 141
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->showDefaultTip()V

    .line 142
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->startIfReady()V

    .line 143
    return-void
.end method

.method public stopRotating()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    .line 149
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearHandlerMessages()V

    .line 150
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearAnimation()V

    .line 151
    return-void
.end method
