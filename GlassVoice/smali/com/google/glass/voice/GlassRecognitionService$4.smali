.class Lcom/google/glass/voice/GlassRecognitionService$4;
.super Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.source "GlassRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/GlassRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/GlassRecognitionService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/GlassRecognitionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/GlassRecognitionService;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognitionService$4;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "GlassRecognitionService"

    return-object v0
.end method

.method public onReadyToListen(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$4;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$4;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/RecognitionService$Callback;->bufferReceived([B)V

    .line 152
    :cond_0
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$4;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$200(Lcom/google/glass/voice/GlassRecognitionService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received voice command [commandLength=%s]."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$4;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$4;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/glass/voice/GlassRecognitionService;->access$300([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method
