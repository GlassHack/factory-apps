.class Lcom/google/glass/voice/VoiceAnnotationController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationController;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationController$4;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$4;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    const-string v1, "finalText"

    .line 486
    invoke-virtual {p2, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual {v0, p1, v1}, Lcom/google/glass/voice/VoiceAnnotationController;->onFinalResult(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method
