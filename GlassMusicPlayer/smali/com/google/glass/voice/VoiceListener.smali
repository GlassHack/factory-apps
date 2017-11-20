.class public interface abstract Lcom/google/glass/voice/VoiceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract onResampledAudioData([BII)Z
.end method

.method public abstract onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end method

.method public abstract onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
