.class public Lcom/google/glass/widget/RotatingTipsView;
.super Lcom/google/glass/widget/TipsView;
.source "RotatingTipsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/RotatingTipsView$Tip;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/RotatingTipsView$Tip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/google/glass/widget/RotatingTipsView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/RotatingTipsView$1;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/google/glass/widget/RotatingTipsView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/RotatingTipsView$2;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->animateOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    .line 131
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->getDefaultTip()Lcom/google/glass/widget/RotatingTipsView$Tip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/RotatingTipsView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateToNextTip()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/RotatingTipsView;)Lcom/google/glass/widget/RotatingTipsView$Tip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/RotatingTipsView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/RotatingTipsView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateIn()V

    return-void
.end method

.method private animateIn()V
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 238
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 240
    return-void
.end method

.method private animateOut()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 227
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

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 229
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->animateOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 231
    return-void
.end method

.method private animateToNextTip()V
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    .line 205
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/RotatingTipsView$Tip;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->animateToTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 209
    return-void
.end method

.method private animateToTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 2
    .param p1, "tip"    # Lcom/google/glass/widget/RotatingTipsView$Tip;

    .prologue
    .line 215
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

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    .line 220
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextTip:Lcom/google/glass/widget/RotatingTipsView$Tip;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->onShowTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 221
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateOut()V

    goto :goto_0
.end method

.method private clearHandlerMessages()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    return-void
.end method

.method private getDefaultTip()Lcom/google/glass/widget/RotatingTipsView$Tip;
    .locals 5

    .prologue
    .line 180
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
    const/4 v1, 0x2

    .line 188
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    :cond_0
    return-void
.end method

.method private stopIfDone()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearHandlerMessages()V

    .line 197
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearAnimation()V

    .line 198
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->showDefaultTip()V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 1
    .param p1, "tip"    # Lcom/google/glass/widget/RotatingTipsView$Tip;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->startIfReady()V

    .line 157
    :cond_0
    return-void
.end method

.method protected isDefaultTipShown()Z
    .locals 2

    .prologue
    .line 167
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
    .param p1, "tip"    # Lcom/google/glass/widget/RotatingTipsView$Tip;

    .prologue
    .line 176
    return-void
.end method

.method public removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 1
    .param p1, "tip"    # Lcom/google/glass/widget/RotatingTipsView$Tip;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->stopIfDone()V

    .line 163
    return-void
.end method

.method protected showDefaultTip()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->getDefaultTip()Lcom/google/glass/widget/RotatingTipsView$Tip;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->animateToTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 173
    return-void
.end method

.method public startRotating()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->currentIndex:I

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->showDefaultTip()V

    .line 140
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->startIfReady()V

    .line 141
    return-void
.end method

.method public stopRotating()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->isRotating:Z

    .line 147
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearHandlerMessages()V

    .line 148
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearAnimation()V

    .line 149
    return-void
.end method
