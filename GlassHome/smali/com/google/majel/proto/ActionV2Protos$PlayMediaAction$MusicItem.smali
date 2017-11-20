.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;


# instance fields
.field private album_:Ljava/lang/String;

.field private artist_:Ljava/lang/String;

.field private bitField0_:I

.field private genreEnumName_:Ljava/lang/String;

.field private genre_:Ljava/lang/String;

.field private isExplicit_:Z

.field private isPlaylist_:Z

.field private isRadioChannel_:Z

.field private isUnspecified_:Z

.field private playlist_:Ljava/lang/String;

.field private radioChannel_:Ljava/lang/String;

.field private song_:Ljava/lang/String;

.field public youtubeUrl:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5719
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5720
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 5721
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 2

    .prologue
    .line 5473
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    if-nez v0, :cond_1

    .line 5474
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5476
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    if-nez v0, :cond_0

    .line 5477
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 5479
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5481
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    return-object v0

    .line 5479
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5951
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5945
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5724
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    .line 5726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    .line 5727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    .line 5728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    .line 5729
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    .line 5730
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isUnspecified_:Z

    .line 5731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genreEnumName_:Ljava/lang/String;

    .line 5732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->radioChannel_:Ljava/lang/String;

    .line 5733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->playlist_:Ljava/lang/String;

    .line 5734
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isRadioChannel_:Z

    .line 5735
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isPlaylist_:Z

    .line 5736
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    .line 5737
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->cachedSize:I

    .line 5738
    return-object p0
.end method

.method public clearAlbum()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    .line 5526
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5527
    return-object p0
.end method

.method public clearArtist()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    .line 5504
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5505
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5569
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    .line 5570
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5571
    return-object p0
.end method

.method public clearGenreEnumName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genreEnumName_:Ljava/lang/String;

    .line 5630
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5631
    return-object p0
.end method

.method public clearIsExplicit()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    .line 5589
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5590
    return-object p0
.end method

.method public clearIsPlaylist()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isPlaylist_:Z

    .line 5712
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5713
    return-object p0
.end method

.method public clearIsRadioChannel()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isRadioChannel_:Z

    .line 5693
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5694
    return-object p0
.end method

.method public clearIsUnspecified()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isUnspecified_:Z

    .line 5608
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5609
    return-object p0
.end method

.method public clearPlaylist()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5673
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->playlist_:Ljava/lang/String;

    .line 5674
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5675
    return-object p0
.end method

.method public clearRadioChannel()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->radioChannel_:Ljava/lang/String;

    .line 5652
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5653
    return-object p0
.end method

.method public clearSong()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1

    .prologue
    .line 5547
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    .line 5548
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5549
    return-object p0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5511
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5489
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5555
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreEnumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5615
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genreEnumName_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExplicit()Z
    .locals 1

    .prologue
    .line 5577
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    return v0
.end method

.method public getIsPlaylist()Z
    .locals 1

    .prologue
    .line 5700
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isPlaylist_:Z

    return v0
.end method

.method public getIsRadioChannel()Z
    .locals 1

    .prologue
    .line 5681
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isRadioChannel_:Z

    return v0
.end method

.method public getIsUnspecified()Z
    .locals 1

    .prologue
    .line 5596
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isUnspecified_:Z

    return v0
.end method

.method public getPlaylist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5659
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->playlist_:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5637
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->radioChannel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 5789
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 5790
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 5791
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5794
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 5795
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5798
    :cond_1
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 5799
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5802
    :cond_2
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 5803
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5806
    :cond_3
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    .line 5807
    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5810
    :cond_4
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    .line 5811
    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isUnspecified_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5814
    :cond_5
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    .line 5815
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genreEnumName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5818
    :cond_6
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    .line 5819
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->radioChannel_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5822
    :cond_7
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_8

    .line 5823
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->playlist_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 5826
    :cond_8
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_9

    .line 5827
    const/16 v5, 0xa

    iget-boolean v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isRadioChannel_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5830
    :cond_9
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_a

    .line 5831
    const/16 v5, 0xb

    iget-boolean v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isPlaylist_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 5834
    :cond_a
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_d

    .line 5835
    const/4 v0, 0x0

    .line 5836
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 5837
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_c

    .line 5838
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 5839
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 5840
    add-int/lit8 v0, v0, 0x1

    .line 5841
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 5837
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5845
    .end local v2    # "element":Ljava/lang/String;
    :cond_c
    add-int/2addr v4, v1

    .line 5846
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 5848
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_d
    iput v4, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->cachedSize:I

    .line 5849
    return v4
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5533
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 5522
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 5500
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 5566
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGenreEnumName()Z
    .locals 1

    .prologue
    .line 5626
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 5585
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPlaylist()Z
    .locals 1

    .prologue
    .line 5708
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsRadioChannel()Z
    .locals 1

    .prologue
    .line 5689
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsUnspecified()Z
    .locals 1

    .prologue
    .line 5604
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlaylist()Z
    .locals 1

    .prologue
    .line 5670
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRadioChannel()Z
    .locals 1

    .prologue
    .line 5648
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSong()Z
    .locals 1

    .prologue
    .line 5544
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 5467
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5857
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5858
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5862
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5863
    :sswitch_0
    return-object p0

    .line 5868
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    .line 5869
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5873
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    .line 5874
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5878
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    .line 5879
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5883
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    .line 5884
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5888
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    .line 5889
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5893
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isUnspecified_:Z

    .line 5894
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5898
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genreEnumName_:Ljava/lang/String;

    .line 5899
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5903
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->radioChannel_:Ljava/lang/String;

    .line 5904
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto :goto_0

    .line 5908
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->playlist_:Ljava/lang/String;

    .line 5909
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto/16 :goto_0

    .line 5913
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isRadioChannel_:Z

    .line 5914
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto/16 :goto_0

    .line 5918
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isPlaylist_:Z

    .line 5919
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    goto/16 :goto_0

    .line 5923
    :sswitch_c
    const/16 v5, 0x62

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5925
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 5926
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 5927
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5928
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5930
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 5931
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 5932
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5930
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5925
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 5935
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 5936
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    goto/16 :goto_0

    .line 5858
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5514
    if-nez p1, :cond_0

    .line 5515
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5517
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    .line 5518
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5519
    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5492
    if-nez p1, :cond_0

    .line 5493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5495
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    .line 5496
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5497
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5558
    if-nez p1, :cond_0

    .line 5559
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5561
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    .line 5562
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5563
    return-object p0
.end method

.method public setGenreEnumName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5618
    if-nez p1, :cond_0

    .line 5619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5621
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genreEnumName_:Ljava/lang/String;

    .line 5622
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5623
    return-object p0
.end method

.method public setIsExplicit(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5580
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    .line 5581
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5582
    return-object p0
.end method

.method public setIsPlaylist(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5703
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isPlaylist_:Z

    .line 5704
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5705
    return-object p0
.end method

.method public setIsRadioChannel(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5684
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isRadioChannel_:Z

    .line 5685
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5686
    return-object p0
.end method

.method public setIsUnspecified(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5599
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isUnspecified_:Z

    .line 5600
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5601
    return-object p0
.end method

.method public setPlaylist(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5662
    if-nez p1, :cond_0

    .line 5663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5665
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->playlist_:Ljava/lang/String;

    .line 5666
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5667
    return-object p0
.end method

.method public setRadioChannel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5640
    if-nez p1, :cond_0

    .line 5641
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5643
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->radioChannel_:Ljava/lang/String;

    .line 5644
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5645
    return-object p0
.end method

.method public setSong(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5536
    if-nez p1, :cond_0

    .line 5537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5539
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    .line 5540
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    .line 5541
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5744
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5745
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->artist_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5747
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5748
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->album_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5750
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5751
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->song_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5753
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 5754
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genre_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5756
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 5757
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isExplicit_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5759
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 5760
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isUnspecified_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5762
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 5763
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->genreEnumName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5765
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 5766
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->radioChannel_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5768
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 5769
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->playlist_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5771
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 5772
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isRadioChannel_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5774
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    .line 5775
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->isPlaylist_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5777
    :cond_a
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 5778
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 5779
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;->youtubeUrl:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 5780
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 5781
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5778
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5785
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_c
    return-void
.end method
