.class Lcom/google/glass/voice/DelegatingVoiceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/VoiceListener;


# instance fields
.field private final delegate:Lcom/google/glass/voice/VoiceListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceListener;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/glass/voice/DelegatingVoiceListener;->delegate:Lcom/google/glass/voice/VoiceListener;

    .line 14
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/voice/DelegatingVoiceListener;->delegate:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/DelegatingVoiceListener;->delegate:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceListener;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onResampledAudioData([BII)Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/voice/DelegatingVoiceListener;->delegate:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/voice/VoiceListener;->onResampledAudioData([BII)Z

    move-result v0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/voice/DelegatingVoiceListener;->delegate:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/VoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/DelegatingVoiceListener;->delegate:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 19
    return-void
.end method
