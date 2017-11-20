.class public final Lcom/google/glass/musicplayer/cards/Artist;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/musicplayer/cards/Card;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final albumArtUrl:Ljava/lang/String;

.field private final artistName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final numAlbums:I

.field private final numSongs:I

.field private final xdiIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/musicplayer/cards/Artist$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/cards/Artist$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    .line 54
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    .line 62
    iput p4, p0, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    .line 63
    iput p5, p0, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    .line 64
    iput-object p6, p0, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    .line 65
    return-void
.end method


# virtual methods
.method public final createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/google/glass/musicplayer/cards/ArtistCardView;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/musicplayer/cards/ArtistCardView;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Artist;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 172
    instance-of v1, p1, Lcom/google/glass/musicplayer/cards/Artist;

    if-eqz v1, :cond_0

    .line 173
    check-cast p1, Lcom/google/glass/musicplayer/cards/Artist;

    .line 174
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    .line 175
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    .line 176
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    .line 179
    invoke-static {v1, v2}, Lcom/google/glass/musicplayer/cards/IntentUtils;->equals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 182
    :cond_0
    return v0
.end method

.method public final getAlbumName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_album:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArtistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_artist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getArtworkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoplayPriority()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x63

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumAlbums()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    return v0
.end method

.method public final getNumSongs()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    return v0
.end method

.method public final getResultPriority()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x3

    return v0
.end method

.method public final getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/Artist;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->ARTIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public final getXdiIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 152
    const/16 v2, 0x1f

    .line 153
    const/4 v1, 0x6

    new-array v3, v1, [I

    .line 155
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    .line 156
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v6

    .line 157
    const/4 v1, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 158
    const/4 v1, 0x3

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 159
    const/4 v1, 0x4

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 160
    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/google/glass/musicplayer/cards/IntentUtils;->hashCode(Landroid/content/Intent;)I

    move-result v4

    aput v4, v3, v1

    .line 163
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 164
    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return v1
.end method

.method public final isBundle()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    const-string v0, "id: %s, artistName: %s, albumArtUrl: %s, numAlbums: %s, numSongs: %s, xdiIntent: %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    aput-object v3, v1, v2

    .line 187
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->artistName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->albumArtUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->numAlbums:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->numSongs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Artist;->xdiIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 133
    return-void
.end method
