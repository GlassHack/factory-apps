.class Lcom/google/glass/voice/CorrectTranscriptionActivity$1;
.super Ljava/lang/Object;
.source "CorrectTranscriptionActivity.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/CorrectTranscriptionActivity;->createController()Lcom/google/glass/voice/VoiceInputActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/CorrectTranscriptionActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/CorrectTranscriptionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/CorrectTranscriptionActivity;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity$1;->this$0:Lcom/google/glass/voice/CorrectTranscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 406
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$2;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity$1;->this$0:Lcom/google/glass/voice/CorrectTranscriptionActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->onUpdateRecognizedText()V

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity$1;->this$0:Lcom/google/glass/voice/CorrectTranscriptionActivity;

    const-string v1, "text"

    invoke-virtual {p2, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->onRecognitionResult(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
