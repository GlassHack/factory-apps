.class public final Lcom/google/audio/ears/proto/EarsService$MusicResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$MusicResult;


# instance fields
.field private albumArtUrl_:Ljava/lang/String;

.field private albumArt_:[B

.field private album_:Ljava/lang/String;

.field private artistId_:Ljava/lang/String;

.field private artist_:Ljava/lang/String;

.field private bitField0_:I

.field private isExplicit_:Z

.field private isrc_:Ljava/lang/String;

.field private labelCode_:Ljava/lang/String;

.field public offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

.field private originalReleaseDate_:Ljava/lang/String;

.field private popularityScore_:D

.field private prerelease_:Z

.field private releaseDate_:Ljava/lang/String;

.field private signedInAlbumArtUrl_:Ljava/lang/String;

.field private subscriptionEnabled_:Z

.field private track_:Ljava/lang/String;

.field public video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2117
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2118
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clear()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2119
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 2

    .prologue
    .line 1780
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MusicResult;

    if-nez v0, :cond_1

    .line 1781
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1783
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MusicResult;

    if-nez v0, :cond_0

    .line 1784
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$MusicResult;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 1786
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1788
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$MusicResult;

    return-object v0

    .line 1786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2437
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2431
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2122
    iput v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    .line 2124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    .line 2125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    .line 2126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    .line 2127
    iput-boolean v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    .line 2128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->originalReleaseDate_:Ljava/lang/String;

    .line 2129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->releaseDate_:Ljava/lang/String;

    .line 2130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    .line 2131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    .line 2132
    invoke-static {}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->emptyArray()[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 2133
    invoke-static {}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->emptyArray()[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 2134
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:[B

    .line 2135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    .line 2136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    .line 2137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    .line 2138
    iput-boolean v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    .line 2139
    iput-boolean v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->subscriptionEnabled_:Z

    .line 2140
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->cachedSize:I

    .line 2141
    return-object p0
.end method

.method public clearAlbum()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1876
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    .line 1877
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1878
    return-object p0
.end method

.method public clearAlbumArt()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 2011
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:[B

    .line 2012
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2013
    return-object p0
.end method

.method public clearAlbumArtUrl()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 2033
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    .line 2034
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2035
    return-object p0
.end method

.method public clearArtist()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    .line 1811
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1812
    return-object p0
.end method

.method public clearArtistId()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1832
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    .line 1833
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1834
    return-object p0
.end method

.method public clearIsExplicit()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    .line 1896
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1897
    return-object p0
.end method

.method public clearIsrc()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1961
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    .line 1962
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1963
    return-object p0
.end method

.method public clearLabelCode()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1983
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    .line 1984
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1985
    return-object p0
.end method

.method public clearOriginalReleaseDate()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->originalReleaseDate_:Ljava/lang/String;

    .line 1918
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1919
    return-object p0
.end method

.method public clearPopularityScore()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 2

    .prologue
    .line 2074
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    .line 2075
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2076
    return-object p0
.end method

.method public clearPrerelease()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 2093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    .line 2094
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2095
    return-object p0
.end method

.method public clearReleaseDate()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1939
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->releaseDate_:Ljava/lang/String;

    .line 1940
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1941
    return-object p0
.end method

.method public clearSignedInAlbumArtUrl()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 2055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    .line 2056
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2057
    return-object p0
.end method

.method public clearSubscriptionEnabled()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 2112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->subscriptionEnabled_:Z

    .line 2113
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2114
    return-object p0
.end method

.method public clearTrack()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    .line 1855
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1856
    return-object p0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()[B
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:[B

    return-object v0
.end method

.method public getAlbumArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExplicit()Z
    .locals 1

    .prologue
    .line 1884
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    return v0
.end method

.method public getIsrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->originalReleaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getPopularityScore()D
    .locals 2

    .prologue
    .line 2063
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    return-wide v0
.end method

.method public getPrerelease()Z
    .locals 1

    .prologue
    .line 2082
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    return v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->releaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2212
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2213
    .local v2, "size":I
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2214
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2217
    :cond_0
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 2218
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2221
    :cond_1
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 2222
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2225
    :cond_2
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    .line 2226
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2229
    :cond_3
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 2230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2231
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    aget-object v0, v3, v1

    .line 2232
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    if-eqz v0, :cond_4

    .line 2233
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2230
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2238
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 2239
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 2240
    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    aget-object v0, v3, v1

    .line 2241
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    if-eqz v0, :cond_6

    .line 2242
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2239
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2247
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_8

    .line 2248
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 2251
    :cond_8
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_9

    .line 2252
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2255
    :cond_9
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_a

    .line 2256
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2259
    :cond_a
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_b

    .line 2260
    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 2263
    :cond_b
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_c

    .line 2264
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2267
    :cond_c
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    .line 2268
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2271
    :cond_d
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_e

    .line 2272
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2275
    :cond_e
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_f

    .line 2276
    const/16 v3, 0xe

    iget-boolean v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2279
    :cond_f
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_10

    .line 2280
    const/16 v3, 0xf

    iget-boolean v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->subscriptionEnabled_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2283
    :cond_10
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_11

    .line 2284
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->originalReleaseDate_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2287
    :cond_11
    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_12

    .line 2288
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->releaseDate_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2291
    :cond_12
    iput v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->cachedSize:I

    .line 2292
    return v2
.end method

.method public getSignedInAlbumArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionEnabled()Z
    .locals 1

    .prologue
    .line 2101
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->subscriptionEnabled_:Z

    return v0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 1873
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAlbumArt()Z
    .locals 1

    .prologue
    .line 2008
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAlbumArtUrl()Z
    .locals 1

    .prologue
    .line 2030
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArtist()Z
    .locals 1

    .prologue
    .line 1807
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 1829
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsExplicit()Z
    .locals 1

    .prologue
    .line 1892
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsrc()Z
    .locals 1

    .prologue
    .line 1958
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabelCode()Z
    .locals 1

    .prologue
    .line 1980
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOriginalReleaseDate()Z
    .locals 1

    .prologue
    .line 1914
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPopularityScore()Z
    .locals 1

    .prologue
    .line 2071
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrerelease()Z
    .locals 1

    .prologue
    .line 2090
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReleaseDate()Z
    .locals 1

    .prologue
    .line 1936
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignedInAlbumArtUrl()Z
    .locals 1

    .prologue
    .line 2052
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubscriptionEnabled()Z
    .locals 1

    .prologue
    .line 2109
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTrack()Z
    .locals 1

    .prologue
    .line 1851
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2300
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2301
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2305
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2306
    :sswitch_0
    return-object p0

    .line 2311
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    .line 2312
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto :goto_0

    .line 2316
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    .line 2317
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto :goto_0

    .line 2321
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    .line 2322
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto :goto_0

    .line 2326
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    .line 2327
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto :goto_0

    .line 2331
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2333
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    if-nez v5, :cond_2

    move v1, v4

    .line 2334
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 2336
    .local v2, "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    if-eqz v1, :cond_1

    .line 2337
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2339
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2340
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;-><init>()V

    aput-object v5, v2, v1

    .line 2341
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2342
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2339
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2333
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    :cond_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    array-length v1, v5

    goto :goto_1

    .line 2345
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    :cond_3
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;-><init>()V

    aput-object v5, v2, v1

    .line 2346
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2347
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto/16 :goto_0

    .line 2351
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2353
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    if-nez v5, :cond_5

    move v1, v4

    .line 2354
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 2356
    .local v2, "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    if-eqz v1, :cond_4

    .line 2357
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2359
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 2360
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;-><init>()V

    aput-object v5, v2, v1

    .line 2361
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2362
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2359
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2353
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    :cond_5
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    array-length v1, v5

    goto :goto_3

    .line 2365
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    :cond_6
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;-><init>()V

    aput-object v5, v2, v1

    .line 2366
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2367
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto/16 :goto_0

    .line 2371
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:[B

    .line 2372
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2376
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    .line 2377
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2381
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    .line 2382
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2386
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    .line 2387
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2391
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    .line 2392
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2396
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    .line 2397
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2401
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    .line 2402
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2406
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    .line 2407
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2411
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->subscriptionEnabled_:Z

    .line 2412
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2416
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->originalReleaseDate_:Ljava/lang/String;

    .line 2417
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2421
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->releaseDate_:Ljava/lang/String;

    .line 2422
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    goto/16 :goto_0

    .line 2301
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x51 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1774
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    move-result-object v0

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1865
    if-nez p1, :cond_0

    .line 1866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1868
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    .line 1869
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1870
    return-object p0
.end method

.method public setAlbumArt([B)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 2000
    if-nez p1, :cond_0

    .line 2001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2003
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:[B

    .line 2004
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2005
    return-object p0
.end method

.method public setAlbumArtUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2022
    if-nez p1, :cond_0

    .line 2023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2025
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    .line 2026
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2027
    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1799
    if-nez p1, :cond_0

    .line 1800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1802
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    .line 1803
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1804
    return-object p0
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1821
    if-nez p1, :cond_0

    .line 1822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1824
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    .line 1825
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1826
    return-object p0
.end method

.method public setIsExplicit(Z)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1887
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    .line 1888
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1889
    return-object p0
.end method

.method public setIsrc(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1950
    if-nez p1, :cond_0

    .line 1951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1953
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    .line 1954
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1955
    return-object p0
.end method

.method public setLabelCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1972
    if-nez p1, :cond_0

    .line 1973
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1975
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    .line 1976
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1977
    return-object p0
.end method

.method public setOriginalReleaseDate(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1906
    if-nez p1, :cond_0

    .line 1907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1909
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->originalReleaseDate_:Ljava/lang/String;

    .line 1910
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1911
    return-object p0
.end method

.method public setPopularityScore(D)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 2066
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    .line 2067
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2068
    return-object p0
.end method

.method public setPrerelease(Z)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2085
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    .line 2086
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2087
    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1928
    if-nez p1, :cond_0

    .line 1929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1931
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->releaseDate_:Ljava/lang/String;

    .line 1932
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1933
    return-object p0
.end method

.method public setSignedInAlbumArtUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2044
    if-nez p1, :cond_0

    .line 2045
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2047
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    .line 2048
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2049
    return-object p0
.end method

.method public setSubscriptionEnabled(Z)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2104
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->subscriptionEnabled_:Z

    .line 2105
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 2106
    return-object p0
.end method

.method public setTrack(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1843
    if-nez p1, :cond_0

    .line 1844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1846
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    .line 1847
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    .line 1848
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2147
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2148
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2150
    :cond_0
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 2151
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2153
    :cond_1
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 2154
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2156
    :cond_2
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    .line 2157
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2159
    :cond_3
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 2160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 2161
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video:[Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    aget-object v0, v2, v1

    .line 2162
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    if-eqz v0, :cond_4

    .line 2163
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2160
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2167
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 2168
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 2169
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer:[Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    aget-object v0, v2, v1

    .line 2170
    .local v0, "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    if-eqz v0, :cond_6

    .line 2171
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2168
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2175
    .end local v0    # "element":Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_8

    .line 2176
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 2178
    :cond_8
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_9

    .line 2179
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2181
    :cond_9
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    .line 2182
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2184
    :cond_a
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_b

    .line 2185
    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2187
    :cond_b
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_c

    .line 2188
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2190
    :cond_c
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    .line 2191
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2193
    :cond_d
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_e

    .line 2194
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2196
    :cond_e
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_f

    .line 2197
    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2199
    :cond_f
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_10

    .line 2200
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->subscriptionEnabled_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2202
    :cond_10
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_11

    .line 2203
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->originalReleaseDate_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2205
    :cond_11
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_12

    .line 2206
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->releaseDate_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2208
    :cond_12
    return-void
.end method
