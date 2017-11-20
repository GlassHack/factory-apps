.class public interface abstract Lcom/google/glass/voice/IVoiceServiceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract onReadyToListen(Lcom/google/glass/voice/VoiceConfig;)V
.end method

.method public abstract onResampledAudioData([BII)V
.end method

.method public abstract onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end method

.method public abstract onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
.end method
