.class Lcom/google/glass/voice/OpenEndedInputController$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/OpenEndedInputController;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$16;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iput-object p2, p0, Lcom/google/glass/voice/OpenEndedInputController$16;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$16;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$16;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1962
    :cond_0
    return-void
.end method
