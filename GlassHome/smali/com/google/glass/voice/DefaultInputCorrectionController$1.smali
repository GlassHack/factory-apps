.class Lcom/google/glass/voice/DefaultInputCorrectionController$1;
.super Landroid/os/Handler;
.source "DefaultInputCorrectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/DefaultInputCorrectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/DefaultInputCorrectionController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/DefaultInputCorrectionController;
    .param p2, "arg0"    # Landroid/os/Looper;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController$1;->this$0:Lcom/google/glass/voice/DefaultInputCorrectionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

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
