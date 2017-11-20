.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MovieItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;


# instance fields
.field private bitField0_:I

.field private genre_:Ljava/lang/String;

.field private movieAppUrl_:Ljava/lang/String;

.field private playTimeMinutes_:I

.field public releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6062
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6063
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 6064
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 2

    .prologue
    .line 5961
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    if-nez v0, :cond_1

    .line 5962
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5964
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    if-nez v0, :cond_0

    .line 5965
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 5967
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5969
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    return-object v0

    .line 5967
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6178
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6172
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6067
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 6068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    .line 6069
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    .line 6070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    .line 6071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 6072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    .line 6073
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->cachedSize:I

    .line 6074
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 6032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    .line 6033
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 6034
    return-object p0
.end method

.method public clearMovieAppUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 6057
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    .line 6058
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 6059
    return-object p0
.end method

.method public clearPlayTimeMinutes()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 6010
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    .line 6011
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 6012
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1

    .prologue
    .line 5991
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    .line 5992
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 5993
    return-object p0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieAppUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6043
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTimeMinutes()I
    .locals 1

    .prologue
    .line 5999
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6099
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6100
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6101
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6104
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6105
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6108
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6109
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6112
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v1, :cond_3

    .line 6113
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6116
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 6117
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6120
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->cachedSize:I

    .line 6121
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5977
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 6029
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMovieAppUrl()Z
    .locals 1

    .prologue
    .line 6054
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 6007
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

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
    .line 5988
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

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
    .line 5955
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6130
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6134
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6135
    :sswitch_0
    return-object p0

    .line 6140
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    .line 6141
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    goto :goto_0

    .line 6145
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    .line 6146
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    goto :goto_0

    .line 6150
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    .line 6151
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    goto :goto_0

    .line 6155
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-nez v1, :cond_1

    .line 6156
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 6158
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6162
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    .line 6163
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    goto :goto_0

    .line 6130
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6021
    if-nez p1, :cond_0

    .line 6022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6024
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    .line 6025
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 6026
    return-object p0
.end method

.method public setMovieAppUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6046
    if-nez p1, :cond_0

    .line 6047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6049
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    .line 6050
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 6051
    return-object p0
.end method

.method public setPlayTimeMinutes(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6002
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    .line 6003
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 6004
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5980
    if-nez p1, :cond_0

    .line 5981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5983
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    .line 5984
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    .line 5985
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
    .line 6080
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6081
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6083
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6084
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->playTimeMinutes_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6086
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6087
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->genre_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6089
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v0, :cond_3

    .line 6090
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->releaseDate:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6092
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 6093
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;->movieAppUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6095
    :cond_4
    return-void
.end method
