.class Lcom/google/glass/voice/menu/VoiceMenu$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/menu/VoiceMenu$5;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu$5;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5$1;->this$1:Lcom/google/glass/voice/menu/VoiceMenu$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5$1;->this$1:Lcom/google/glass/voice/menu/VoiceMenu$5;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5$1;->this$1:Lcom/google/glass/voice/menu/VoiceMenu$5;

    iget-object v1, v1, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$poppedState:Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget-object v1, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5$1;->this$1:Lcom/google/glass/voice/menu/VoiceMenu$5;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1302(Lcom/google/glass/voice/menu/VoiceMenu;Z)Z

    .line 408
    return-void
.end method
