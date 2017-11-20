.class Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenu;


# instance fields
.field isEmptyVoiceMenu:Z

.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$000(Lcom/google/glass/voice/VoiceMenuDialog;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    if-ne p0, v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$100(Lcom/google/glass/voice/VoiceMenuDialog;)V

    .line 201
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0, p1}, Lcom/google/glass/voice/VoiceMenuDialog;->access$202(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    .line 202
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$300(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 203
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->isEmptyVoiceMenu:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$400(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/TipsViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightTipImmediately()V

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$400(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/TipsViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightTip()V

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {p1}, Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;->close()V

    goto :goto_0
.end method
