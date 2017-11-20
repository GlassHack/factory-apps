.class Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;
.super Ljava/lang/Object;
.source "RecognizerController.java"

# interfaces
.implements Lcom/google/glass/voice/network/GwsResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionString"    # Ljava/lang/String;

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-static {v0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$2300(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$2200(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V

    .line 1068
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$2200(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    iget-object v1, v1, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const-string v4, "Failed direct gws request"

    const/high16 v5, 0x30000

    invoke-direct {v3, v4, v5}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 1063
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 1064
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$2200(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 1045
    return-void
.end method

.method public onNoResults()V
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$2200(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V

    .line 1055
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 1056
    return-void
.end method
