.class public Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;
.super Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
.source "DefaultMicrophoneInputStreamCallbacks.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMicrophoneInputStreamCallbacks"


# instance fields
.field private final mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

.field private final mSoundPlayer:Lcom/google/android/speech/audio/SpeakNowSoundPlayer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/audio/AudioRouter;Lcom/google/android/speech/audio/SpeakNowSoundPlayer;)V
    .locals 0
    .param p1, "audioRouter"    # Lcom/google/android/voicesearch/audio/AudioRouter;
    .param p2, "soundPlayer"    # Lcom/google/android/speech/audio/SpeakNowSoundPlayer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    .line 24
    iput-object p2, p0, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;->mSoundPlayer:Lcom/google/android/speech/audio/SpeakNowSoundPlayer;

    .line 25
    return-void
.end method


# virtual methods
.method public awaitingRouting(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "DefaultMicrophoneInputStreamCallbacks"

    const-string v1, "awaitRouting()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/audio/AudioRouter;->awaitRouting(Ljava/lang/String;)Z

    .line 43
    return-void
.end method

.method public cancelPendingAwaitRouting(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/audio/AudioRouter;->cancelPendingAwaitRouting(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public playSpeakNowSound()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;->mSoundPlayer:Lcom/google/android/speech/audio/SpeakNowSoundPlayer;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/speech/audio/DefaultMicrophoneInputStreamCallbacks;->mSoundPlayer:Lcom/google/android/speech/audio/SpeakNowSoundPlayer;

    invoke-interface {v0}, Lcom/google/android/speech/audio/SpeakNowSoundPlayer;->playSpeakNowSound()I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
