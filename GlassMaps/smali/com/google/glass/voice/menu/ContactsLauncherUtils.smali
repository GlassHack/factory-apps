.class public Lcom/google/glass/voice/menu/ContactsLauncherUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    sget-object v0, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Lcom/google/glass/app/GlassActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 1

    .prologue
    .line 156
    invoke-static {p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->shouldDisambiguatePhoneNumbers(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1}, Lcom/google/glass/voice/EntityListActivityHelper;->startPhoneNumberDisambiguation(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    goto :goto_0
.end method

.method private static createSendMessageIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 181
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v4

    .line 192
    const/4 v0, 0x3

    .line 193
    sget-object v5, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Initiating glassware message to entity [entityGuid=%s]."

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 202
    :goto_1
    if-eqz p1, :cond_5

    move v0, v2

    .line 205
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-static {v0, v1, v4, v5}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    const-string v5, "ENTITY_FOR_PROFILE_PHOTO"

    .line 207
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    .line 206
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 209
    const-string v5, "trigger_method"

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v2, "trigger_time"

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 212
    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    sget-object v2, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x21

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", toId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    return-object v0

    :cond_2
    move v0, v1

    .line 182
    goto :goto_0

    .line 194
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v0

    if-eq v2, v0, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move-object v4, v0

    .line 196
    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v4, v0

    .line 199
    goto :goto_1

    :cond_5
    move v0, v3

    .line 202
    goto :goto_2

    :cond_6
    move v2, v3

    .line 209
    goto :goto_3
.end method

.method private static createVoiceMessageController(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/VoiceMessageController;
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 223
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 231
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 233
    :cond_1
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v3

    .line 235
    sget-object v0, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Initiating glassware message to entity [entityGuid=%s]."

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v6

    invoke-interface {v0, v5, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v4

    .line 244
    :goto_1
    sget-object v0, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x21

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Message type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", toId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    if-ne v7, v4, :cond_5

    move v10, v1

    .line 249
    :goto_2
    const-string v4, ""

    .line 250
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 251
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController;

    .line 252
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    move-object v1, p0

    move-object v8, p1

    move v9, v6

    invoke-direct/range {v0 .. v10}, Lcom/google/glass/voice/VoiceMessageController;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/google/googlex/glass/common/proto/TimelineNano$Entity;ZZ)V

    return-object v0

    :cond_2
    move v0, v6

    .line 224
    goto :goto_0

    .line 236
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 237
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    move v7, v2

    .line 238
    goto :goto_1

    .line 240
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    move v7, v1

    .line 241
    goto :goto_1

    :cond_5
    move v10, v6

    .line 246
    goto :goto_2
.end method

.method private static newCallEntityItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/glass/voice/menu/Requirement;

    const/4 v2, 0x0

    .line 118
    invoke-static {p1}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->hasPhoneNumber(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 119
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isHeadsetConnected(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 120
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v3

    aput-object v3, v1, v2

    .line 117
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 121
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/menu/ContactsLauncherUtils$3;

    invoke-direct {v1, p2, p0, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils$3;-><init>(ZLandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 136
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    sget v1, Lcom/google/glass/common/R$drawable;->ic_star_30:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuIcon(I)V

    .line 139
    :cond_0
    return-object v0
.end method

.method public static newContactMenuItem(Landroid/content/Context;ZLcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 2

    .prologue
    .line 48
    sparse-switch p3, :sswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected voice command triggered the contact list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :sswitch_0
    invoke-static {p0, p2, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->newCallEntityItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :sswitch_1
    invoke-static {p0, p2, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->newSendMessageItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    goto :goto_0

    .line 54
    :sswitch_2
    invoke-static {p0, p2, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->newVideoCallEntityItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    goto :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xe -> :sswitch_2
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private static newSendMessageItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/glass/voice/menu/Requirement;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    aput-object v3, v1, v2

    .line 90
    invoke-static {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->canSendMessage(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v2

    aput-object v2, v1, v4

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 91
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 92
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget v1, Lcom/google/glass/common/R$drawable;->ic_star_30:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuIcon(I)V

    .line 95
    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 96
    invoke-static {p0, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->createVoiceMessageController(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/VoiceMessageController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 97
    new-instance v1, Lcom/google/glass/voice/menu/ContactsLauncherUtils$2;

    invoke-direct {v1, p2, p0, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils$2;-><init>(ZLandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 111
    return-object v0
.end method

.method private static newVideoCallEntityItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/glass/voice/menu/Requirement;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_VIDEOCALL_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 65
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v3

    aput-object v3, v1, v2

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 66
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 67
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    sget v1, Lcom/google/glass/common/R$drawable;->ic_star_30:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuIcon(I)V

    .line 70
    :cond_0
    new-instance v1, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;-><init>(ZLandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 84
    return-object v0
.end method

.method public static sendMessage(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 165
    new-instance v1, Lcom/google/glass/voice/VoiceActionDialog;

    .line 166
    invoke-static {p1, p2}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->createSendMessageIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    .line 165
    invoke-static {p0, v2, v0}, Lcom/google/glass/voice/VoiceMessageController;->create(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/voice/VoiceMessageController;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/glass/voice/VoiceActionDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/ActionController;)V

    .line 166
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceActionDialog;->show()V

    .line 167
    return-void
.end method

.method private static shouldDisambiguatePhoneNumbers(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    .line 144
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 145
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 147
    if-le v0, v1, :cond_0

    move v0, v1

    .line 152
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1
.end method

.method public static videoCall(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/google/glass/videocall/VideoCallHelperProvider;->getInstance()Lcom/google/glass/videocall/VideoCallHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/videocall/VideoCallHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/videocall/VideoCallHelper;

    move-result-object v0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/videocall/VideoCallHelper;->joinEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V

    .line 173
    return-void
.end method
