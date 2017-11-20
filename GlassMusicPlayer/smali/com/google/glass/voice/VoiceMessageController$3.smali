.class Lcom/google/glass/voice/VoiceMessageController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;


# instance fields
.field private hasShownSwipeTip:Z

.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->hasShownSwipeTip:Z

    return-void
.end method


# virtual methods
.method public onInputModeChanged(Lcom/google/glass/voice/InputMode;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 288
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$700(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceMessageController;->access$802(Lcom/google/glass/voice/VoiceMessageController;Z)Z

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0, p1}, Lcom/google/glass/voice/VoiceMessageController;->access$702(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/InputMode;

    .line 292
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$900(Lcom/google/glass/voice/VoiceMessageController;)V

    .line 294
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->hasShownSwipeTip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1000(Lcom/google/glass/voice/VoiceMessageController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1100(Lcom/google/glass/voice/VoiceMessageController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 296
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1200(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/voice/TipsViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightTip()V

    .line 297
    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceMessageController$3;->hasShownSwipeTip:Z

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$3;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMessageController;->hideSwipeTip()V

    goto :goto_0
.end method
