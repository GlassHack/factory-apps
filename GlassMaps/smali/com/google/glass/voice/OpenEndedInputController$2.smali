.class Lcom/google/glass/voice/OpenEndedInputController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$2;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGwsError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$2;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1000(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/SpeechException;)V

    .line 312
    return-void
.end method

.method public onGwsResult(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$2;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->access$900(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 307
    return-void
.end method
