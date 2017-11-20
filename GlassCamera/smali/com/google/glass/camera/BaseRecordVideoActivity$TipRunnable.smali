.class abstract Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TipRunnable"
.end annotation


# instance fields
.field private isShowing:Z

.field private final shouldTimeout:Z

.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

.field private final tipResId:I


# direct methods
.method public constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p2, "tipResId"    # I
    .param p3, "shouldTimeout"    # Z

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->tipResId:I

    .line 241
    iput-boolean p3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->shouldTimeout:Z

    .line 242
    return-void
.end method

.method private final hideInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->isShowing:Z

    .line 280
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget v2, Lcom/google/glass/camera/R$id;->tip:I

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, "tip":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 282
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->timerWrapper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 284
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;)V

    .line 285
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 305
    return-void
.end method

.method private final showInternal()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    .line 255
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->isShowing:Z

    .line 256
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget v3, Lcom/google/glass/camera/R$id;->tip:I

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TipsView;

    .line 257
    .local v1, "tip":Lcom/google/glass/widget/TipsView;
    iget v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->tipResId:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setTip(I)V

    .line 258
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/camera/R$dimen;->tip_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 260
    .local v0, "offset":F
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iget-object v2, v2, Lcom/google/glass/camera/BaseRecordVideoActivity;->timerWrapper:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 261
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    .line 262
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 263
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setAlpha(F)V

    .line 267
    invoke-virtual {v1}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 268
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x3e

    .line 270
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 271
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 273
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->shouldTimeout:Z

    if-eqz v2, :cond_0

    .line 274
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1600()J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method abstract getTag()Ljava/lang/String;
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->isShowing:Z

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Tip is not already being shown, ignoring hide call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->cancel()V

    .line 332
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->post()V

    goto :goto_0
.end method

.method abstract onTipHidden()V
.end method

.method post()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 341
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->isShowing:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Are we currently showing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->isShowing:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->hideInternal()V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->showInternal()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->isShowing:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Tip is already being shown, ignoring show call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->cancel()V

    .line 315
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->post()V

    goto :goto_0
.end method

.method public showDelayed()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->cancel()V

    .line 321
    invoke-static {}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void
.end method
