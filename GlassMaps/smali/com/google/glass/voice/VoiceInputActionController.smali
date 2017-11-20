.class public abstract Lcom/google/glass/voice/VoiceInputActionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/ActionController;


# instance fields
.field private callback:Lcom/google/glass/voice/ActionController$Callback;

.field protected inputController:Lcom/google/glass/voice/OpenEndedInputController;

.field private final onInputCanceledListener:Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/glass/voice/VoiceInputActionController$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceInputActionController$1;-><init>(Lcom/google/glass/voice/VoiceInputActionController;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->onInputCanceledListener:Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    .line 161
    return-void
.end method

.method public static createSimpleController(Ljava/util/List;)Lcom/google/glass/voice/VoiceInputActionController;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs createSimpleController([Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceInputActionController;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceInputActionController$SimpleOpenEndedActionController;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final dismiss(Z)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->onDismiss(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onDismissAction()V

    .line 117
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCanceled()V

    .line 118
    return-void
.end method

.method protected final getCallback()Lcom/google/glass/voice/ActionController$Callback;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->callback:Lcom/google/glass/voice/ActionController$Callback;

    return-object v0
.end method

.method public getInputController()Lcom/google/glass/voice/OpenEndedInputController;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 56
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    return-object v0
.end method

.method public abstract getInputModes()Ljava/util/List;
.end method

.method protected final getOnInputCanceledListener()Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->onInputCanceledListener:Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    return-object v0
.end method

.method public onBack()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->hasRecognitionResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->restartInput()V

    .line 155
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->onConfirm()Z

    move-result v0

    return v0
.end method

.method protected onDismissAction()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method protected onPrepareAction()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected onStartAction(Lcom/google/glass/voice/ActionController$Callback;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    if-eqz v0, :cond_0

    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->activate()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->deactivate()V

    goto :goto_0
.end method

.method public final prepareAction(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/glass/voice/ActionController$Callback;Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceConfig;
    .locals 11

    .prologue
    .line 62
    iput-object p3, p0, Lcom/google/glass/voice/VoiceInputActionController;->callback:Lcom/google/glass/voice/ActionController$Callback;

    .line 64
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    .line 67
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggerExtrasBundle(ZJ)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController;

    .line 70
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v2

    .line 71
    invoke-static {}, Lcom/google/glass/voice/SpeechRecognizerProvider;->getInstance()Lcom/google/glass/voice/SpeechRecognizerProvider;

    move-result-object v3

    .line 74
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v6

    .line 75
    invoke-static {}, Lcom/google/glass/util/PowerHelperProvider;->getInstance()Lcom/google/glass/util/PowerHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/util/PowerHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;

    move-result-object v7

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionController;->getInputModes()Ljava/util/List;

    move-result-object v9

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionController;->getOnInputCanceledListener()Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    move-result-object v10

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/glass/voice/OpenEndedInputController;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/voice/SpeechRecognizerProvider;Landroid/content/Intent;Landroid/view/ViewGroup;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/PowerHelper;Landroid/view/LayoutInflater;Ljava/util/List;Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onPrepareAction()V

    .line 80
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public final prepareAction(Lcom/google/glass/voice/ActionController$Callback;Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0

    .prologue
    .line 84
    iput-object p2, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 85
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputActionController;->callback:Lcom/google/glass/voice/ActionController$Callback;

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onPrepareAction()V

    .line 87
    return-void
.end method

.method protected final setCallback(Lcom/google/glass/voice/ActionController$Callback;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputActionController;->callback:Lcom/google/glass/voice/ActionController$Callback;

    .line 131
    return-void
.end method

.method public setInputControllerForTest(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 50
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 51
    return-void
.end method

.method public final startAction()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->activate()V

    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController;->callback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceInputActionController;->onStartAction(Lcom/google/glass/voice/ActionController$Callback;)V

    .line 95
    return-void
.end method
