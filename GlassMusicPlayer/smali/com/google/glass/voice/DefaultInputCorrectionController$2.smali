.class Lcom/google/glass/voice/DefaultInputCorrectionController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/network/GwsResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/DefaultInputCorrectionController;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$2;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "protoBytes"

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putByteArrayExtra(Ljava/lang/String;[B)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$2;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-static {v1}, Lcom/google/glass/voice/DefaultInputCorrectionController;->access$200(Lcom/google/glass/voice/DefaultInputCorrectionController;)Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;->onGwsResult(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 299
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->DONE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$2;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-static {v1}, Lcom/google/glass/voice/DefaultInputCorrectionController;->access$200(Lcom/google/glass/voice/DefaultInputCorrectionController;)Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;->onGwsResult(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 314
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$2;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-static {v0}, Lcom/google/glass/voice/DefaultInputCorrectionController;->access$200(Lcom/google/glass/voice/DefaultInputCorrectionController;)Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/network/SpeechException;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    const-string v3, "NetworkRecognizeException"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;->onGwsError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 308
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$2;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-static {v0, p1}, Lcom/google/glass/voice/DefaultInputCorrectionController;->access$100(Lcom/google/glass/voice/DefaultInputCorrectionController;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onNoResults()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method
