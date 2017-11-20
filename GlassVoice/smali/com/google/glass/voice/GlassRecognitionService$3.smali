.class Lcom/google/glass/voice/GlassRecognitionService$3;
.super Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
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
    .line 116
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognitionService$3;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-direct {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;-><init>()V

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
    .line 124
    const-string v0, "GlassRecognitionService"

    return-object v0
.end method

.method public receiveEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$3;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService$3;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v1}, Lcom/google/glass/voice/GlassRecognitionService;->access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/voice/GlassRecognitionService;->deliverEvent(Landroid/speech/RecognitionService$Callback;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 120
    return-void
.end method
