.class public final Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;


# instance fields
.field private album_:Ljava/lang/String;

.field private artist_:Ljava/lang/String;

.field private bitField0_:I

.field private genre_:Ljava/lang/String;

.field private isExplicit_:Z

.field private song_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13567
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13568
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    .line 13569
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 2

    .prologue
    .line 13447
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    if-nez v0, :cond_1

    .line 13448
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 13450
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    if-nez v0, :cond_0

    .line 13451
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    .line 13453
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13455
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    return-object v0

    .line 13453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13681
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 13675
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13572
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->artist_:Ljava/lang/String;

    .line 13574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->album_:Ljava/lang/String;

    .line 13575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->song_:Ljava/lang/String;

    .line 13576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->genre_:Ljava/lang/String;

    .line 13577
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->isExplicit_:Z

    .line 13578
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->cachedSize:I

    .line 13579
    return-object p0
.end method

.method public clearAlbum()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1

    .prologue
    .line 13499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->album_:Ljava/lang/String;

    .line 13500
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13501
    return-object p0
.end method

.method public clearArtist()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1

    .prologue
    .line 13477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->artist_:Ljava/lang/String;

    .line 13478
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13479
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1

    .prologue
    .line 13543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->genre_:Ljava/lang/String;

    .line 13544
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13545
    return-object p0
.end method

.method public clearIsExplicit()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1

    .prologue
    .line 13562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->isExplicit_:Z

    .line 13563
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13564
    return-object p0
.end method

.method public clearSong()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1

    .prologue
    .line 13521
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->song_:Ljava/lang/String;

    .line 13522
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13523
    return-object p0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13485
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->album_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13463
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->artist_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13529
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExplicit()Z
    .locals 1

    .prologue
    .line 13551
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->isExplicit_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 13604
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13605
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13606
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->artist_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13609
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13610
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->album_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13613
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 13614
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->song_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13617
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 13618
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->genre_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13621
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 13622
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->isExplicit_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13625
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->cachedSize:I

    .line 13626
    return v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13507
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->song_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 13496
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

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
    .line 13474
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

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
    .line 13540
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 13559
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 13518
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

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
    .line 13441
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13634
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13635
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 13639
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13640
    :sswitch_0
    return-object p0

    .line 13645
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->artist_:Ljava/lang/String;

    .line 13646
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    goto :goto_0

    .line 13650
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->album_:Ljava/lang/String;

    .line 13651
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    goto :goto_0

    .line 13655
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->song_:Ljava/lang/String;

    .line 13656
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    goto :goto_0

    .line 13660
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->genre_:Ljava/lang/String;

    .line 13661
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    goto :goto_0

    .line 13665
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->isExplicit_:Z

    .line 13666
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    goto :goto_0

    .line 13635
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13488
    if-nez p1, :cond_0

    .line 13489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13491
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->album_:Ljava/lang/String;

    .line 13492
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13493
    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13466
    if-nez p1, :cond_0

    .line 13467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13469
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->artist_:Ljava/lang/String;

    .line 13470
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13471
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13532
    if-nez p1, :cond_0

    .line 13533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13535
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->genre_:Ljava/lang/String;

    .line 13536
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13537
    return-object p0
.end method

.method public setIsExplicit(Z)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 13554
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->isExplicit_:Z

    .line 13555
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13556
    return-object p0
.end method

.method public setSong(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13510
    if-nez p1, :cond_0

    .line 13511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13513
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->song_:Ljava/lang/String;

    .line 13514
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    .line 13515
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13585
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13586
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->artist_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13588
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13589
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->album_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13591
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 13592
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->song_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13594
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 13595
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->genre_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13597
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 13598
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MusicItem;->isExplicit_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 13600
    :cond_4
    return-void
.end method
