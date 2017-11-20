.class public Lcom/google/glass/musicplayer/cards/Playlist;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/musicplayer/cards/Card;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final albumArtUri:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final numSongs:I

.field private final xdiIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/musicplayer/cards/Playlist$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/cards/Playlist$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Playlist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    .line 45
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    .line 52
    iput-object p4, p0, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    .line 53
    return-void
.end method


# virtual methods
.method public createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/musicplayer/cards/PlaylistCardView;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Playlist;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    instance-of v1, p1, Lcom/google/glass/musicplayer/cards/Playlist;

    if-eqz v1, :cond_0

    .line 154
    check-cast p1, Lcom/google/glass/musicplayer/cards/Playlist;

    .line 155
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    .line 156
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    .line 158
    invoke-static {v1, v2}, Lcom/google/glass/musicplayer/cards/IntentUtils;->equals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method

.method public getAlbumArtUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_album:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_artist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoplayPriority()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumSongs()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    return v0
.end method

.method public getResultPriority()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/Playlist;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->PLAYLIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public getXdiIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 135
    const/16 v2, 0x1f

    .line 136
    const/4 v1, 0x4

    new-array v3, v1, [I

    .line 138
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    .line 139
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v5

    .line 140
    const/4 v1, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 141
    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/google/glass/musicplayer/cards/IntentUtils;->hashCode(Landroid/content/Intent;)I

    move-result v4

    aput v4, v3, v1

    .line 144
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 145
    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return v1
.end method

.method public isBundle()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    const-string v0, "name: %s, albumArtUri: %s, numSongs: %s, xdiIntent: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    aput-object v3, v1, v2

    .line 166
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->albumArtUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->numSongs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Playlist;->xdiIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 119
    return-void
.end method
