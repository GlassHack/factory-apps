.class public final Lcom/google/glass/voice/menu/VoiceMenuUtils;
.super Ljava/lang/Object;
.source "VoiceMenuUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageName(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v3, 0x2

    .line 37
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "idParts":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 39
    aget-object v1, v0, v3

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVoiceConfig(Ljava/util/List;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)",
            "Lcom/google/glass/voice/VoiceConfig;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "menuItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    :cond_0
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 68
    :goto_0
    return-object v2

    .line 62
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 63
    .local v0, "customPhrases":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 64
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_2
    new-instance v2, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v2, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    .line 68
    .local v2, "voiceConfig":Lcom/google/glass/voice/VoiceConfig;
    goto :goto_0
.end method

.method public static isBoutiqueWelcomeCard(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "id":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->getPackageName(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    const-string v1, "boutique:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->INSTALL_COMPLETE:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    .line 32
    invoke-virtual {v1}, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 32
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static openVoiceMenu(JLcom/google/glass/sound/SoundManager;Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p0, "commandCreationUpTimeMillis"    # J
    .param p2, "soundManager"    # Lcom/google/glass/sound/SoundManager;
    .param p3, "activity"    # Lcom/google/glass/voice/GlassVoiceActivity;
    .param p4, "menuItems"    # Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    .prologue
    .line 47
    invoke-interface {p4}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v0}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 49
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 53
    :goto_0
    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v0}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 53
    invoke-virtual {p3, p4, p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->openVoiceMenu(Lcom/google/glass/voice/menu/VoiceMenuBuilder;J)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method
