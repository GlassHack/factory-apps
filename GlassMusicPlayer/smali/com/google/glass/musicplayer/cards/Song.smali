.class public final Lcom/google/glass/musicplayer/cards/Song;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/musicplayer/cards/Card;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private albumArtUrl:Ljava/lang/String;

.field private final albumName:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private final duration:J

.field private final id:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final xdiIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/musicplayer/cards/Song$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/cards/Song$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Song;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    .line 57
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    .line 58
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    .line 67
    iput-wide p5, p0, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    .line 68
    iput-object p7, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    .line 70
    return-void
.end method


# virtual methods
.method public final createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/glass/musicplayer/cards/SongCardView;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/musicplayer/cards/SongCardView;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Song;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 200
    instance-of v1, p1, Lcom/google/glass/musicplayer/cards/Song;

    if-eqz v1, :cond_0

    .line 201
    check-cast p1, Lcom/google/glass/musicplayer/cards/Song;

    .line 202
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    .line 203
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    .line 204
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    .line 205
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    .line 206
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    .line 207
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    .line 208
    invoke-static {v1, v2}, Lcom/google/glass/musicplayer/cards/IntentUtils;->equals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 211
    :cond_0
    return v0
.end method

.method public final getAlbumName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 113
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_album:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getArtistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_artist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getArtworkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoplayPriority()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x63

    return v0
.end method

.method public final getDuration()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultPriority()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x6

    return v0
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 157
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/Song;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public final getXdiIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 179
    const/16 v2, 0x1f

    .line 180
    const/4 v1, 0x7

    new-array v3, v1, [I

    .line 182
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    .line 183
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v7

    .line 184
    const/4 v1, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 185
    const/4 v1, 0x3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 186
    const/4 v1, 0x4

    new-array v4, v7, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 187
    const/4 v1, 0x5

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 188
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/google/glass/musicplayer/cards/IntentUtils;->hashCode(Landroid/content/Intent;)I

    move-result v4

    aput v4, v3, v1

    .line 191
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 192
    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return v1
.end method

.method public final isBundle()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlbumArtUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public final setArtistName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 216
    const-string v0, "id: %s, title: %s, artistName: %s, albumName: %s, duration: %d, albumArtUrl: %s, xdiIntent: %s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    .line 218
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    aput-object v3, v1, v2

    .line 216
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->artistName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->albumName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 140
    iget-wide v0, p0, Lcom/google/glass/musicplayer/cards/Song;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->albumArtUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Song;->xdiIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 143
    return-void
.end method
