.class Lcom/google/glass/voice/GuardHintAnimator$1;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "GuardHintAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/GuardHintAnimator;->animateIn()V
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
    .line 107
    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator$1;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$1;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->access$000(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$1;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 112
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$1;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->access$000(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 116
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$1;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 117
    return-void
.end method
