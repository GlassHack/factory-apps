.class Lcom/google/glass/voice/OpenEndedInputController$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/OpenEndedInputController;->animateOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 1972
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$17;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iput-object p2, p0, Lcom/google/glass/voice/OpenEndedInputController$17;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$17;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1976
    return-void
.end method
