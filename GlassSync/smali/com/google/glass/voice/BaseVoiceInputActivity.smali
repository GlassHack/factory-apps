.class public abstract Lcom/google/glass/voice/BaseVoiceInputActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "BaseVoiceInputActivity.java"


# static fields
.field protected static final DICTATION:Lcom/google/glass/voice/VoiceConfig;

.field public static final TYPE_ANNOTATION:I = 0x5

.field public static final TYPE_GLASSWARE:I = 0x3

.field public static final TYPE_MESSAGING:I = 0x2

.field public static final TYPE_MUSIC:I = 0x6

.field public static final TYPE_NAVIGATION:I = 0x1

.field public static final TYPE_SEARCH:I


# instance fields
.field private inputController:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->DICTATION:Lcom/google/glass/voice/VoiceConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    return-void
.end method

.method public static final createDefaultInputMode()Lcom/google/glass/voice/InputMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/google/glass/voice/InputMode;

    invoke-direct {v0}, Lcom/google/glass/voice/InputMode;-><init>()V

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$id;->voice_input_activity_card:I

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setRootLayoutId(I)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$id;->microphone_container:I

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setAudioInputViewResId(I)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setStartSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setId(Ljava/lang/Object;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setShowProgressOnRecognitionResult(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lcom/google/glass/voice/InputMode;->setSearchResponseExpected(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Lcom/google/glass/voice/InputMode;->setPlayVoiceResultSound(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Lcom/google/glass/voice/InputMode;->setEnableCorrections(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final getInputController()Lcom/google/glass/voice/OpenEndedInputController;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    return-object v0
.end method

.method protected abstract getInputModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getOnInputCanceledListener()Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;
.end method

.method public declared-synchronized getRecognitionResultsCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getRecognitionResultsCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionUpdatesCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getRecognitionUpdatesCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResultDuration(Ljava/lang/String;)J
    .locals 2
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final isRetry()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->isRetry()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/voice/GlassVoiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/voice/OpenEndedInputController;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    return-void
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->onConfirm()Z

    move-result v0

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 79
    new-instance v5, Lcom/google/glass/voice/BaseVoiceInputActivity$1;

    invoke-direct {v5, p0, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$1;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Landroid/content/Context;)V

    .line 89
    .local v5, "inputControllerContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController;

    .line 91
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/google/glass/voice/SpeechRecognizerProvider;->getInstance()Lcom/google/glass/voice/SpeechRecognizerProvider;

    move-result-object v3

    .line 93
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    new-instance v6, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v6, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v7, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 98
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputModes()Ljava/util/List;

    move-result-object v9

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getOnInputCanceledListener()Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    move-result-object v10

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/glass/voice/OpenEndedInputController;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/voice/SpeechRecognizerProvider;Landroid/content/Intent;Landroid/view/ViewGroup;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/PowerHelper;Landroid/view/LayoutInflater;Ljava/util/List;Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 100
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->onDismiss(Z)V

    .line 136
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onPauseInternal()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->deactivate()V

    .line 113
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onPauseInternal()V

    .line 114
    return-void
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 106
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->activate()V

    .line 107
    return-void
.end method

.method protected onStopInternal()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getCorrectionController()Lcom/google/glass/voice/InputCorrectionController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/InputCorrectionController;->shouldFinishWhenStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->finish()V

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onStopInternal()V

    .line 125
    return-void
.end method

.method public setInputControllerForTest(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p1, "inputController"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 68
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 69
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 70
    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .param p1, "speechLevelSource"    # Lcom/google/glass/voice/network/SpeechLevelSource;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 148
    return-void
.end method
