.class public Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;
.super Ljava/lang/Object;
.source "DelegatingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/network/VoiceInputCallback;


# instance fields
.field private final delegate:Lcom/google/glass/voice/network/VoiceInputCallback;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/glass/voice/network/VoiceInputCallback;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    .line 9
    return-void
.end method


# virtual methods
.method public onActionResponse([B)V
    .locals 1
    .param p1, "response"    # [B

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onActionResponse([B)V

    .line 60
    return-void
.end method

.method public onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 1
    .param p1, "exception"    # Lcom/google/glass/voice/network/SpeechException;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 65
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "resultDoc"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;F)V
    .locals 1
    .param p1, "textPrefix"    # Ljava/lang/CharSequence;
    .param p2, "lowestConfidenceText"    # Ljava/lang/CharSequence;
    .param p3, "textPostfix"    # Ljava/lang/CharSequence;
    .param p4, "confidence"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/glass/voice/network/VoiceInputCallback;->onRecognitionResult(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;F)V

    .line 50
    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .param p1, "source"    # Lcom/google/glass/voice/network/SpeechLevelSource;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 39
    return-void
.end method

.method public showDone()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V

    .line 34
    return-void
.end method

.method public showListening()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showListening()V

    .line 14
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showNoSpeechDetected()V

    .line 29
    return-void
.end method

.method public showRecognizing()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecognizing()V

    .line 24
    return-void
.end method

.method public showRecording()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecording()V

    .line 19
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "stableText"    # Ljava/lang/CharSequence;
    .param p2, "pendingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/voice/network/DelegatingVoiceInputCallback;->delegate:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/network/VoiceInputCallback;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
