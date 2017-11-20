.class Lcom/google/glass/voice/GuardHintAnimator$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "GuardHintAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/GuardHintAnimator;->animateOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/GuardHintAnimator;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/GuardHintAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/GuardHintAnimator;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->access$000(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 159
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->access$000(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$200(Lcom/google/glass/voice/GuardHintAnimator;Z)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 165
    return-void
.end method
