.class public final Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MovieItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;


# instance fields
.field private bitField0_:I

.field private genre_:Ljava/lang/String;

.field private playTimeMinutes_:I

.field public releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13770
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13771
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    .line 13772
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 2

    .prologue
    .line 13691
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    if-nez v0, :cond_1

    .line 13692
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 13694
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    if-nez v0, :cond_0

    .line 13695
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    .line 13697
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13699
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    return-object v0

    .line 13697
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13873
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 13867
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13775
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    .line 13776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->title_:Ljava/lang/String;

    .line 13777
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->playTimeMinutes_:I

    .line 13778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->genre_:Ljava/lang/String;

    .line 13779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 13780
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->cachedSize:I

    .line 13781
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1

    .prologue
    .line 13762
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->genre_:Ljava/lang/String;

    .line 13763
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    .line 13764
    return-object p0
.end method

.method public clearPlayTimeMinutes()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1

    .prologue
    .line 13740
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->playTimeMinutes_:I

    .line 13741
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    .line 13742
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1

    .prologue
    .line 13721
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->title_:Ljava/lang/String;

    .line 13722
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    .line 13723
    return-object p0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13748
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTimeMinutes()I
    .locals 1

    .prologue
    .line 13729
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->playTimeMinutes_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 13803
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13804
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13805
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13808
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13809
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->playTimeMinutes_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13812
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 13813
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->genre_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13816
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v1, :cond_3

    .line 13817
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13820
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->cachedSize:I

    .line 13821
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13707
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 13759
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlayTimeMinutes()Z
    .locals 1

    .prologue
    .line 13737
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 13718
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 13685
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13829
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13830
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 13834
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13835
    :sswitch_0
    return-object p0

    .line 13840
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->title_:Ljava/lang/String;

    .line 13841
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    goto :goto_0

    .line 13845
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->playTimeMinutes_:I

    .line 13846
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    goto :goto_0

    .line 13850
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->genre_:Ljava/lang/String;

    .line 13851
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    goto :goto_0

    .line 13855
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-nez v1, :cond_1

    .line 13856
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 13858
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 13830
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13751
    if-nez p1, :cond_0

    .line 13752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13754
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->genre_:Ljava/lang/String;

    .line 13755
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    .line 13756
    return-object p0
.end method

.method public setPlayTimeMinutes(I)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 13732
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->playTimeMinutes_:I

    .line 13733
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    .line 13734
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13710
    if-nez p1, :cond_0

    .line 13711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13713
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->title_:Ljava/lang/String;

    .line 13714
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    .line 13715
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
    .line 13787
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13788
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13790
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13791
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->playTimeMinutes_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 13793
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 13794
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->genre_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13796
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v0, :cond_3

    .line 13797
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13799
    :cond_3
    return-void
.end method
