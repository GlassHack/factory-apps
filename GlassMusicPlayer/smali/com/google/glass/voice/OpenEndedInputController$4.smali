.class Lcom/google/glass/voice/OpenEndedInputController$4;
.super Lcom/google/glass/voice/RecognitionListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$4;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Lcom/google/glass/voice/RecognitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onResults(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 432
    const-class v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 433
    const-string v0, "openEndedInputEvent"

    .line 434
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .line 436
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$4;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$2100(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$4;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v1, v1, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$4;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$3202(Lcom/google/glass/voice/OpenEndedInputController;I)I

    .line 428
    return-void
.end method
