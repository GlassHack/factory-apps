.class Lcom/google/glass/voice/menu/VoiceMenu$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/menu/VoiceMenu$3;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/menu/VoiceMenu$3;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$3$1;->this$1:Lcom/google/glass/voice/menu/VoiceMenu$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3$1;->this$1:Lcom/google/glass/voice/menu/VoiceMenu$3;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$postSelectionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 328
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3$1;->this$1:Lcom/google/glass/voice/menu/VoiceMenu$3;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$selectedPrimaryMenuItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 329
    return-void
.end method
