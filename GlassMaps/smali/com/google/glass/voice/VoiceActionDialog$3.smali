.class Lcom/google/glass/voice/VoiceActionDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/ActionController$Callback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceActionDialog;

.field final synthetic val$callback:Lcom/google/glass/voice/ActionController$Callback;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceActionDialog;Lcom/google/glass/voice/ActionController$Callback;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/voice/VoiceActionDialog$3;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceActionDialog$3;->val$callback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceActionDialog$3$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceActionDialog$3$1;-><init>(Lcom/google/glass/voice/VoiceActionDialog$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onActionCanceled()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$3;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceActionDialog;->access$200(Lcom/google/glass/voice/VoiceActionDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$3;->val$callback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCanceled()V

    .line 67
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceActionDialog$3;->dismissDialog()V

    .line 69
    :cond_0
    return-void
.end method

.method public onActionCompleted(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$3;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceActionDialog;->access$200(Lcom/google/glass/voice/VoiceActionDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$3;->val$callback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceActionDialog$3;->dismissDialog()V

    .line 61
    :cond_0
    return-void
.end method
