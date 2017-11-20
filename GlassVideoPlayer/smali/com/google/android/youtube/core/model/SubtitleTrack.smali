.class public final Lcom/google/android/youtube/core/model/SubtitleTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final format:I

.field public final languageCode:Ljava/lang/String;

.field public final languageName:Ljava/lang/String;

.field public final sourceLanguageCode:Ljava/lang/String;

.field public final trackName:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/youtube/core/model/j;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/j;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/SubtitleTrack;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "languageCode cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    .line 56
    const-string v0, "sourceLanguageCode cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    .line 58
    const-string v0, "trackName cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    .line 60
    iput p6, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->format:I

    .line 61
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/youtube/core/model/SubtitleTrack;
    .locals 7

    .prologue
    .line 80
    const-string v0, "languageName cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "videoId cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createDisableSubtitleOption(Ljava/lang/String;)Lcom/google/android/youtube/core/model/SubtitleTrack;
    .locals 7

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    const-string v1, ""

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createIncomplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/youtube/core/model/SubtitleTrack;
    .locals 7

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createTranslated(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)Lcom/google/android/youtube/core/model/SubtitleTrack;
    .locals 7

    .prologue
    .line 95
    const-string v0, "fromTrack cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    const-string v1, "fromTrack cannot be an incomplete subtitle"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    .line 98
    iget-object v5, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->format:I

    move-object v1, p1

    .line 97
    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    instance-of v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 141
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_0
    return v0
.end method

.method public final isAutoTranslated()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isDisableOption()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/SubtitleTrack;->isAutoTranslated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
