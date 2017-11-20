.class Lcom/google/glass/voice/menu/VoiceMenu$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$poppedState:Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$poppedState:Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1200(Lcom/google/glass/voice/menu/VoiceMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/OverscrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$500(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$poppedState:Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 401
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/OverscrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$poppedState:Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget v1, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->fromScrollViewItem:F

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->scrollToItem(F)V

    .line 402
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenu$5$1;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/menu/VoiceMenu$5$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenu$5;)V

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1400(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method
