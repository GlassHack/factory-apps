.class Lcom/google/glass/logging/UserFeedbackActivity$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserFeedbackActivity;->addSliderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isAnimationDone:Z

.field final synthetic this$0:Lcom/google/glass/logging/UserFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserFeedbackActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/logging/UserFeedbackActivity;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->isAnimationDone:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->isAnimationDone:Z

    .line 603
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->isAnimationDone:Z

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 595
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/glass/logging/UserFeedbackActivity;->access$500(Lcom/google/glass/logging/UserFeedbackActivity;)V

    .line 597
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/logging/UserFeedbackActivity$2;->isAnimationDone:Z

    .line 598
    return-void
.end method
