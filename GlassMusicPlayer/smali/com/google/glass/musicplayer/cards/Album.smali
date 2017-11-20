.class public final Lcom/google/glass/musicplayer/cards/Album;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/musicplayer/cards/Card;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final albumArtUrl:Ljava/lang/String;

.field private final albumName:Ljava/lang/String;

.field private final artistName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final numSongs:I

.field private final xdiIntent:Landroid/content/Intent;

.field private final year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/musicplayer/cards/Album$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/cards/Album$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    .line 57
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    .line 67
    iput p6, p0, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    .line 68
    iput-object p7, p0, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    .line 69
    return-void
.end method


# virtual methods
.method public final createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/glass/musicplayer/cards/AlbumCardView;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/musicplayer/cards/AlbumCardView;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Album;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    instance-of v1, p1, Lcom/google/glass/musicplayer/cards/Album;

    if-eqz v1, :cond_0

    .line 183
    check-cast p1, Lcom/google/glass/musicplayer/cards/Album;

    .line 184
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    .line 185
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    .line 186
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    .line 187
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    .line 188
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    .line 190
    invoke-static {v1, v2}, Lcom/google/glass/musicplayer/cards/IntentUtils;->equals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 193
    :cond_0
    return v0
.end method

.method public final getAlbumName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_album:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getArtistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_artist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getArtworkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoplayPriority()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x63

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumSongs()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    return v0
.end method

.method public final getResultPriority()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x5

    return v0
.end method

.method public final getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/Album;->getAlbumName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->ALBUM:Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public final getXdiIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 161
    const/16 v2, 0x1f

    .line 162
    const/4 v1, 0x7

    new-array v3, v1, [I

    .line 164
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    .line 165
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v6

    .line 166
    const/4 v1, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 167
    const/4 v1, 0x3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 168
    const/4 v1, 0x4

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 169
    const/4 v1, 0x5

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 170
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/google/glass/musicplayer/cards/IntentUtils;->hashCode(Landroid/content/Intent;)I

    move-result v4

    aput v4, v3, v1

    .line 173
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 174
    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return v1
.end method

.method public final isBundle()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    const-string v0, "id: %s, artistName: %s, albumName: %s, albumArtUrl: %s, year: %s, numSongs: %s, xdiIntent: %s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    .line 200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    aput-object v3, v1, v2

    .line 198
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->artistName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->albumName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->albumArtUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->year:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/google/glass/musicplayer/cards/Album;->numSongs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Album;->xdiIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 142
    return-void
.end method
