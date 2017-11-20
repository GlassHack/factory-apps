.class Lcom/google/glass/voice/OpenEndedInputController$13;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/OpenEndedInputController;->showListening()V
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
    .line 1370
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$13;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$13;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$6000(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/AudioInputRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showListening()V

    .line 1376
    return-void
.end method
