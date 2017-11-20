.class Lcom/google/android/speech/RecognizerImpl$1;
.super Ljava/lang/Object;
.source "RecognizerImpl.java"

# interfaces
.implements Lcom/google/android/speech/ResponseProcessor$AudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/RecognizerImpl;->getAudioCallback(Ljava/lang/String;)Lcom/google/android/speech/ResponseProcessor$AudioCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/RecognizerImpl;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/speech/RecognizerImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/speech/RecognizerImpl$1;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iput-object p2, p0, Lcom/google/android/speech/RecognizerImpl$1;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordingStarted(J)V
    .locals 3
    .param p1, "usec"    # J

    .prologue
    .line 79
    const-string v0, "RecognizerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioCallback.recordingStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl$1;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iget-object v0, v0, Lcom/google/android/speech/RecognizerImpl;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl$1;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iget-object v0, v0, Lcom/google/android/speech/RecognizerImpl;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/speech/audio/AudioRecorder;->setRecordingStartTime(J)V

    .line 87
    :cond_0
    return-void
.end method

.method public shutdownAudio()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "RecognizerImpl"

    const-string v1, "AudioCallback.shutdownAudio"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl$1;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iget-object v0, v0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl$1;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iget-object v1, p0, Lcom/google/android/speech/RecognizerImpl$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/RecognizerImpl;->internalShutdownAudio(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 3

    .prologue
    .line 91
    const-string v0, "RecognizerImpl"

    const-string v1, "AudioCallback.stopAudio"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl$1;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iget-object v0, v0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl$1;->this$0:Lcom/google/android/speech/RecognizerImpl;

    iget-object v1, p0, Lcom/google/android/speech/RecognizerImpl$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/RecognizerImpl;->internalStopAudio(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method
