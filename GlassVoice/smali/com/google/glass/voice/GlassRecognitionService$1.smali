.class Lcom/google/glass/voice/GlassRecognitionService$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/google/glass/voice/GlassRecognitionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/GlassRecognitionService;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognitionService$1;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x32

    const/4 v11, 0x0

    .line 65
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v8, p0, Lcom/google/glass/voice/GlassRecognitionService$1;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v8}, Lcom/google/glass/voice/GlassRecognitionService;->access$000(Lcom/google/glass/voice/GlassRecognitionService;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/glass/voice/GlassRecognitionService$1;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v8}, Lcom/google/glass/voice/GlassRecognitionService;->access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 69
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/voice/GlassRecognitionService$1;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v8}, Lcom/google/glass/voice/GlassRecognitionService;->access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/voice/GlassRecognitionService$1;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    iget-object v9, v9, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v9}, Lcom/google/glass/voice/IVoiceService;->getSpeechLevel()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/speech/RecognitionService$Callback;->rmsChanged(F)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 71
    .local v0, "currentTime":J
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 72
    .local v6, "scheduledTime":J
    sub-long v8, v0, v6

    sub-long v2, v12, v8

    .line 73
    .local v2, "delay":J
    const/4 v8, 0x0

    add-long v9, v6, v12

    .line 74
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/google/glass/voice/GlassRecognitionService$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 75
    .local v5, "scheduledMessage":Landroid/os/Message;
    invoke-virtual {p0, v5, v2, v3}, Lcom/google/glass/voice/GlassRecognitionService$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "currentTime":J
    .end local v2    # "delay":J
    .end local v5    # "scheduledMessage":Landroid/os/Message;
    .end local v6    # "scheduledTime":J
    :catch_0
    move-exception v4

    .line 77
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/google/glass/voice/GlassRecognitionService$1;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v8}, Lcom/google/glass/voice/GlassRecognitionService;->access$200(Lcom/google/glass/voice/GlassRecognitionService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "RemoteException"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v4, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
