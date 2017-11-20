.class Lcom/google/glass/voice/OpenEndedInputController$15;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/OpenEndedInputController;->getErrorOnConfirmRunnable(Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;)Ljava/lang/Runnable;
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
    .line 1935
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$15;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$15;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$15;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;->onInputCanceled()V

    .line 1942
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$15;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$1400(Lcom/google/glass/voice/OpenEndedInputController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/SettingsHelper;->getGoToSettingsRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1943
    return-void
.end method
