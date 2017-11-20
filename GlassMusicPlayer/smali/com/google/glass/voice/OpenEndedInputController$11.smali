.class Lcom/google/glass/voice/OpenEndedInputController$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;

.field final synthetic val$initialSelectedCommandTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$11;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iput-object p2, p0, Lcom/google/glass/voice/OpenEndedInputController$11;->val$initialSelectedCommandTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$11;->val$initialSelectedCommandTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$11;->val$initialSelectedCommandTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 897
    return-void
.end method
