.class Lcom/google/glass/voice/OpenEndedInputController$5;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/OpenEndedInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$5;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$5;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$5;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v1}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->getStartSound()Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 448
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$5;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$3400(Lcom/google/glass/voice/OpenEndedInputController;I)V

    .line 450
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$5;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3500(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 451
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$5;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$3602(Lcom/google/glass/voice/OpenEndedInputController;Z)Z

    .line 452
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$5;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3700(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 453
    return-void
.end method
