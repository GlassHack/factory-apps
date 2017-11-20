.class Lcom/google/glass/voice/OpenEndedInputController$1;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"

# interfaces
.implements Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;


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
    .line 272
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelControlReceived()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Cancel control received"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$102(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;->onInputCanceled()V

    .line 299
    return-void
.end method

.method public onScreenOnResponseReceived()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$402(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$500(Lcom/google/glass/voice/OpenEndedInputController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$600(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 292
    :cond_0
    return-void
.end method

.method public onSendControlReceived()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$102(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$200(Lcom/google/glass/voice/OpenEndedInputController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$300(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onUpdatedInputReceived(Ljava/lang/String;I)V
    .locals 1
    .param p1, "updatedInput"    # Ljava/lang/String;
    .param p2, "diffStartIndex"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$1;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0, p1, p2}, Lcom/google/glass/voice/OpenEndedInputController;->access$000(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;I)V

    .line 276
    return-void
.end method
