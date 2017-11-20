.class Lcom/google/glass/voice/VoiceMessageController$7;
.super Ljava/lang/Object;
.source "VoiceMessageController.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMessageController;->createInputMode(ZLcom/google/glass/voice/VoiceMessageController$SendMessageParams;)Lcom/google/glass/voice/InputMode;
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
    .line 649
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$7;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 653
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$7;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1700(Lcom/google/glass/voice/VoiceMessageController;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZED_TEXT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECORDING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$7;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMessageController;->hideSwipeTip()V

    goto :goto_0
.end method
