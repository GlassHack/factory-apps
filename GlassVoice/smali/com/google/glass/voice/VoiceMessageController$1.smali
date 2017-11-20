.class Lcom/google/glass/voice/VoiceMessageController$1;
.super Landroid/os/Handler;
.source "VoiceMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceMessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMessageController;
    .param p2, "arg0"    # Landroid/os/Looper;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$1;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-static {}, Lcom/google/glass/voice/VoiceMessageController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unexpected message type %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$1;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$000(Lcom/google/glass/voice/VoiceMessageController;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
