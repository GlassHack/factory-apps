.class Lcom/google/glass/voice/menu/VoiceMenu$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic val$t:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->val$postAnimationRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->val$t:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$000(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->val$t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 460
    return-void
.end method
