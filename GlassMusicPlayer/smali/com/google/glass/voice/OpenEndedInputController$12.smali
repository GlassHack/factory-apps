.class Lcom/google/glass/voice/OpenEndedInputController$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/network/GwsResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;

.field final synthetic val$updatedRecognitionResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iput-object p2, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->val$updatedRecognitionResult:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1183
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "ActionResult received from direct GWS request"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    const/4 v0, 0x0

    .line 1186
    const/16 v1, 0x8

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1191
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1196
    :cond_0
    :goto_1
    return-void

    .line 1187
    :catch_0
    move-exception v1

    .line 1188
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v2}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "unable to base64 decode action string"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1, v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4702(Lcom/google/glass/voice/OpenEndedInputController;[B)[B

    .line 1195
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$4502(Lcom/google/glass/voice/OpenEndedInputController;Z)Z

    goto :goto_1
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "On Done received from direct GWS request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v0, v0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v1, v1, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1202
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4700(Lcom/google/glass/voice/OpenEndedInputController;)[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4600(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->val$updatedRecognitionResult:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1206
    invoke-static {v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forRecognitionResult(Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v1

    .line 1205
    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$900(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Error received from direct GWS request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ERROR:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v1

    const-string v2, "error"

    new-instance v3, Lcom/google/glass/voice/network/SpeechException;

    sget-object v4, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    const-string v5, "NetworkRecognizeException"

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putParcelableExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v1

    .line 1175
    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$900(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 1179
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "HtmlAnswerCard received from direct GWS request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$4502(Lcom/google/glass/voice/OpenEndedInputController;Z)Z

    .line 1169
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->access$4602(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)Ljava/lang/String;

    .line 1170
    return-void
.end method

.method public onNoResults()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1154
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No results received from direct GWS request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->voice_search_no_answer:I

    .line 1157
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    .line 1158
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 1159
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 1160
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    .line 1161
    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->getErrorHandler()Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;->shouldPreemptVoiceMenu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPreemptVoiceMenu(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 1162
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v1, v1, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController$12;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v2, v2, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1163
    return-void
.end method
