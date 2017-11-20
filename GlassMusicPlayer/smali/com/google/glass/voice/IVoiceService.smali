.class public interface abstract Lcom/google/glass/voice/IVoiceService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
.end method

.method public abstract addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
.end method

.method public abstract endpointNetworkRecognizer()V
.end method

.method public abstract getSpeechLevel()I
.end method

.method public abstract loadConfig(Lcom/google/glass/voice/VoiceConfig;)V
.end method

.method public abstract reloadConfig(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
.end method

.method public abstract removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
.end method

.method public abstract removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
.end method

.method public abstract startListening(Landroid/content/Intent;)V
.end method

.method public abstract stopListening(Ljava/lang/String;)V
.end method

.method public abstract unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V
.end method
