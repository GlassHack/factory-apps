.class final Lcom/google/glass/voice/VoiceConfig$1;
.super Ljava/lang/Object;
.source "VoiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/voice/VoiceConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VoiceConfig version mismatch: try pushing GlassVoice.apk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    .line 250
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->values()[Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setSensitivity(Lcom/google/glass/voice/VoiceConfig$Sensitivity;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 253
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setShouldAllowScreenOff(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/google/glass/voice/OpenEndedMode;->values()[Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 259
    new-array v0, p1, [Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$1;->newArray(I)[Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method
