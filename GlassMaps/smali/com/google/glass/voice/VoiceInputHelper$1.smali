.class Lcom/google/glass/voice/VoiceInputHelper$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputHelper;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper$1;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$1;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/VoiceInputHelper;->dispatchVoiceCommand(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$1;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/voice/VoiceInputHelper;->dispatchResampledAudioData([BII)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper$1;->this$0:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/VoiceInputHelper;->dispatchVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
