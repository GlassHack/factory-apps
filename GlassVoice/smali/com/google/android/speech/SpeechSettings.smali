.class public interface abstract Lcom/google/android/speech/SpeechSettings;
.super Ljava/lang/Object;
.source "SpeechSettings.java"


# virtual methods
.method public abstract getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
.end method

.method public abstract getExperimentIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallId()Ljava/lang/String;
.end method

.method public abstract getServerEndpointingActivityTimeoutMs()I
.end method

.method public abstract getSpokenLocaleBcp47()Ljava/lang/String;
.end method

.method public abstract getVoiceSearchTokenType()Ljava/lang/String;
.end method

.method public abstract isClientEndpointerUiControlEnabled()Z
.end method

.method public abstract isDebugAudioLoggingEnabled()Z
.end method

.method public abstract isEmbeddedEndpointingEnabled()Z
.end method

.method public abstract isEmbeddedRecognitionOnlyForDebug()Z
.end method

.method public abstract isNetworkRecognitionOnlyForDebug()Z
.end method

.method public abstract isPersonalizationEnabled()Z
.end method

.method public abstract isProfanityFilterEnabled()Z
.end method

.method public abstract isS3DebugLoggingEnabled()Z
.end method

.method public abstract isServerEndpointingEnabled()Z
.end method

.method public abstract isSmartEndpointingEnabled()Z
.end method

.method public abstract isSoundSearchEnabled()Z
.end method

.method public abstract setSpokenLanguageBcp47(Ljava/lang/String;Z)V
.end method
