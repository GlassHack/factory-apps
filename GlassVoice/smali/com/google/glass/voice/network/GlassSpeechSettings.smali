.class public Lcom/google/glass/voice/network/GlassSpeechSettings;
.super Ljava/lang/Object;
.source "GlassSpeechSettings.java"

# interfaces
.implements Lcom/google/android/speech/SpeechSettings;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final INSTALL_ID_PREF:Ljava/lang/String; = "install-id"


# instance fields
.field private final config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassSpeechSettings;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/google/glass/voice/network/GlassSpeechSettings;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 31
    return-void
.end method

.method private declared-synchronized createInstallId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "installId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassSpeechSettings;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "install-id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-object v0

    .line 77
    .end local v0    # "installId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassSpeechSettings;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method public getExperimentIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassSpeechSettings;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "install-id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "installId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassSpeechSettings;->createInstallId()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    return-object v0
.end method

.method public getServerEndpointingActivityTimeoutMs()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassSpeechSettings;->context:Landroid/content/Context;

    const-string v1, "search_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenLocaleBcp47()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/LocaleFormat;->formatBcp47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSearchTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "https://www.googleapis.com/auth/speech/personalization"

    return-object v0
.end method

.method public isClientEndpointerUiControlEnabled()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isDebugAudioLoggingEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddedEndpointingEnabled()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isEmbeddedRecognitionOnlyForDebug()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRecognitionOnlyForDebug()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isProfanityFilterEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isS3DebugLoggingEnabled()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public isServerEndpointingEnabled()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isSmartEndpointingEnabled()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public isSoundSearchEnabled()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public setSpokenLanguageBcp47(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 45
    return-void
.end method
