.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationBound"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;


# instance fields
.field private bitField0_:I

.field private hiLatE7_:I

.field private hiLngE7_:I

.field private loLatE7_:I

.field private loLngE7_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5956
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5957
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    .line 5958
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 2

    .prologue
    .line 5867
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    if-nez v0, :cond_1

    .line 5868
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5870
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    if-nez v0, :cond_0

    .line 5871
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    .line 5873
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5875
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    return-object v0

    .line 5873
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6057
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6051
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5961
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5962
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLatE7_:I

    .line 5963
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLngE7_:I

    .line 5964
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLatE7_:I

    .line 5965
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLngE7_:I

    .line 5966
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->cachedSize:I

    .line 5967
    return-object p0
.end method

.method public clearHiLatE7()Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1

    .prologue
    .line 5932
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLatE7_:I

    .line 5933
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5934
    return-object p0
.end method

.method public clearHiLngE7()Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1

    .prologue
    .line 5951
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLngE7_:I

    .line 5952
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5953
    return-object p0
.end method

.method public clearLoLatE7()Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1

    .prologue
    .line 5894
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLatE7_:I

    .line 5895
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5896
    return-object p0
.end method

.method public clearLoLngE7()Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1

    .prologue
    .line 5913
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLngE7_:I

    .line 5914
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5915
    return-object p0
.end method

.method public getHiLatE7()I
    .locals 1

    .prologue
    .line 5921
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLatE7_:I

    return v0
.end method

.method public getHiLngE7()I
    .locals 1

    .prologue
    .line 5940
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLngE7_:I

    return v0
.end method

.method public getLoLatE7()I
    .locals 1

    .prologue
    .line 5883
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLatE7_:I

    return v0
.end method

.method public getLoLngE7()I
    .locals 1

    .prologue
    .line 5902
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLngE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5989
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5990
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5991
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLatE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5994
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5995
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLngE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5998
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5999
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLatE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6002
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6003
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLngE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6006
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->cachedSize:I

    .line 6007
    return v0
.end method

.method public hasHiLatE7()Z
    .locals 1

    .prologue
    .line 5929
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHiLngE7()Z
    .locals 1

    .prologue
    .line 5948
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoLatE7()Z
    .locals 1

    .prologue
    .line 5891
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoLngE7()Z
    .locals 1

    .prologue
    .line 5910
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 5861
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6016
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6020
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6021
    :sswitch_0
    return-object p0

    .line 6026
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLatE7_:I

    .line 6027
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    goto :goto_0

    .line 6031
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLngE7_:I

    .line 6032
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    goto :goto_0

    .line 6036
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLatE7_:I

    .line 6037
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    goto :goto_0

    .line 6041
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLngE7_:I

    .line 6042
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    goto :goto_0

    .line 6016
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setHiLatE7(I)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5924
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLatE7_:I

    .line 5925
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5926
    return-object p0
.end method

.method public setHiLngE7(I)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5943
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLngE7_:I

    .line 5944
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5945
    return-object p0
.end method

.method public setLoLatE7(I)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5886
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLatE7_:I

    .line 5887
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5888
    return-object p0
.end method

.method public setLoLngE7(I)Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5905
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLngE7_:I

    .line 5906
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    .line 5907
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
    .line 5973
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5974
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLatE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5976
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5977
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->loLngE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5979
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5980
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLatE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5982
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5983
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;->hiLngE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 5985
    :cond_3
    return-void
.end method
