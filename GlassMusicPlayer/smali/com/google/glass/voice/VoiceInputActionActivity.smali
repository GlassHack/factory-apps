.class public abstract Lcom/google/glass/voice/VoiceInputActionActivity;
.super Lcom/google/glass/voice/BaseVoiceInputActivity;
.source "SourceFile"


# instance fields
.field private callback:Lcom/google/glass/voice/ActionController$Callback;

.field private controller:Lcom/google/glass/voice/VoiceInputActionController;

.field private controllerDismissed:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method protected createCallback()Lcom/google/glass/voice/ActionController$Callback;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/google/glass/voice/VoiceInputActionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceInputActionActivity$1;-><init>(Lcom/google/glass/voice/VoiceInputActionActivity;)V

    return-object v0
.end method

.method protected abstract createController()Lcom/google/glass/voice/VoiceInputActionController;
.end method

.method public getController()Lcom/google/glass/voice/VoiceInputActionController;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    return-object v0
.end method

.method public final getInputModes()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionController;->getInputModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getOnInputCanceledListener()Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionController;->getOnInputCanceledListener()Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    move-result-object v0

    return-object v0
.end method

.method public onCameraButtonPressed(Z)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->onCameraButtonPressed(Z)Z

    move-result v0

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionController;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->createController()Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controllerDismissed:Z

    .line 36
    invoke-super {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->createCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->callback:Lcom/google/glass/voice/ActionController$Callback;

    .line 39
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->callback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceInputActionController;->prepareAction(Lcom/google/glass/voice/ActionController$Callback;Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 40
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionController;->onBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Controller handled back event."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :goto_0
    return v3

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->finish()V

    goto :goto_0
.end method

.method public onResumeInternal()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onResumeInternal()V

    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionController;->startAction()V

    .line 48
    return-void
.end method

.method protected onStopInternal()V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controllerDismissed:Z

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controllerDismissed:Z

    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputActionController;->dismiss(Z)V

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onStopInternal()V

    .line 57
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceInputActionController;->onWindowFocusChanged(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method public setInputControllerForTest(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionActivity;->controller:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceInputActionController;->setInputControllerForTest(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->setInputControllerForTest(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 134
    return-void
.end method

.method protected shouldHandleCameraButton()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
