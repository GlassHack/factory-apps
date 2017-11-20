.class Lcom/google/glass/voice/DefaultInputCorrectionController$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/DefaultInputCorrectionController;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$1;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$1;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-static {v0}, Lcom/google/glass/voice/DefaultInputCorrectionController;->access$000(Lcom/google/glass/voice/DefaultInputCorrectionController;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
