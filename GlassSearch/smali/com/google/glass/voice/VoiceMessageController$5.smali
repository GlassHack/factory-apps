.class Lcom/google/glass/voice/VoiceMessageController$5;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "VoiceMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMessageController;->confirmSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMessageController;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$5;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$5;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1300(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$5;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1400(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->cancel()V

    .line 494
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$5;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMessageController;->onBack()Z

    .line 495
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$5;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1500(Lcom/google/glass/voice/VoiceMessageController;)V

    .line 500
    return-void
.end method
