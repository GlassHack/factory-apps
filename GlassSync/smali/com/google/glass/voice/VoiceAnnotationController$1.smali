.class Lcom/google/glass/voice/VoiceAnnotationController$1;
.super Landroid/os/Handler;
.source "VoiceAnnotationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceAnnotationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceAnnotationController;
    .param p2, "arg0"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationController$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceAnnotationController;->access$100(Lcom/google/glass/voice/VoiceAnnotationController;)Lcom/google/glass/logging/FormattingLogger;

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

    .line 94
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceAnnotationController;->access$000(Lcom/google/glass/voice/VoiceAnnotationController;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
