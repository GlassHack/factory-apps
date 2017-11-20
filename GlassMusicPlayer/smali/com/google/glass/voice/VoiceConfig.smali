.class public Lcom/google/glass/voice/VoiceConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final EMPTY:[Ljava/lang/String;

.field public static final OFF:Lcom/google/glass/voice/VoiceConfig;

.field private static final VOICE_CONFIG_PARCELABLE_VERSION:I


# instance fields
.field private allowScreenOff:Z

.field private customPhrases:[Ljava/lang/String;

.field private openEndedMode:Lcom/google/glass/voice/OpenEndedMode;

.field private sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

.field private shouldSaveAudio:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->EMPTY:[Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 241
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$1;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    .line 69
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceConfig;->setShouldAllowScreenOff(Z)Lcom/google/glass/voice/VoiceConfig;

    .line 70
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceConfig;->setSensitivity(Lcom/google/glass/voice/VoiceConfig$Sensitivity;)Lcom/google/glass/voice/VoiceConfig;

    .line 71
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceConfig;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    .line 72
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig;->setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    .line 64
    return-void
.end method

.method public static forMixedMode([Ljava/lang/String;Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceConfig;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public static forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/VoiceConfig;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 53
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 54
    invoke-static {p0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v4}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    check-cast p1, Lcom/google/glass/voice/VoiceConfig;

    .line 106
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v3

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_7
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 119
    goto :goto_0
.end method

.method public getCustomPhrases()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->EMPTY:[Ljava/lang/String;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->openEndedMode:Lcom/google/glass/voice/OpenEndedMode;

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->openEndedMode:Lcom/google/glass/voice/OpenEndedMode;

    goto :goto_0
.end method

.method public getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v2

    aput-object v2, v0, v1

    .line 87
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHotword()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMixedMode()Z
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearch()Z
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 154
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    array-length v0, p1

    if-lez v0, :cond_0

    .line 156
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    .line 158
    :cond_0
    return-object p0
.end method

.method setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/OpenEndedMode;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->openEndedMode:Lcom/google/glass/voice/OpenEndedMode;

    .line 203
    return-object p0
.end method

.method public setSensitivity(Lcom/google/glass/voice/VoiceConfig$Sensitivity;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 187
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    .line 188
    return-object p0
.end method

.method public setShouldAllowScreenOff(Z)Lcom/google/glass/voice/VoiceConfig;
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceConfig;->allowScreenOff:Z

    .line 179
    return-object p0
.end method

.method public setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio:Z

    .line 170
    return-object p0
.end method

.method public shouldAllowScreenOff()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceConfig;->allowScreenOff:Z

    return v0
.end method

.method public shouldSaveAudio()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v0, "VoiceConfig ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "getCustomPhrases()="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string v0, ", shouldSaveAudio()="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string v0, ", shouldAllowScreenOff()="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v2, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v2, :cond_3

    .line 142
    const-string v0, ", getOpenEndedMode()="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v0

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    if-eq v0, v2, :cond_4

    .line 146
    const-string v0, ", getSensitivity()="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    :cond_4
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 235
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 238
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    return-void
.end method
