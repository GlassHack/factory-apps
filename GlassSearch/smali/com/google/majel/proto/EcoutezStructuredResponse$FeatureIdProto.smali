.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;


# instance fields
.field private bitField0_:I

.field private cellId_:J

.field private fprint_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5782
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5783
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 5784
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 2

    .prologue
    .line 5731
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-nez v0, :cond_1

    .line 5732
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5734
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-nez v0, :cond_0

    .line 5735
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 5737
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5739
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    return-object v0

    .line 5737
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5857
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5851
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 5787
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    .line 5788
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    .line 5789
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    .line 5790
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cachedSize:I

    .line 5791
    return-object p0
.end method

.method public clearCellId()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 2

    .prologue
    .line 5758
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    .line 5759
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    .line 5760
    return-object p0
.end method

.method public clearFprint()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 2

    .prologue
    .line 5777
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    .line 5778
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    .line 5779
    return-object p0
.end method

.method public getCellId()J
    .locals 2

    .prologue
    .line 5747
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 5766
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5807
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5808
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5809
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5812
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5813
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5816
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cachedSize:I

    .line 5817
    return v0
.end method

.method public hasCellId()Z
    .locals 1

    .prologue
    .line 5755
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFprint()Z
    .locals 1

    .prologue
    .line 5774
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

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
    .line 5725
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5825
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5826
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5830
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5831
    :sswitch_0
    return-object p0

    .line 5836
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    .line 5837
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    goto :goto_0

    .line 5841
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    .line 5842
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    goto :goto_0

    .line 5826
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCellId(J)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 5750
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    .line 5751
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    .line 5752
    return-object p0
.end method

.method public setFprint(J)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 5769
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    .line 5770
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    .line 5771
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5797
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5798
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 5800
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5801
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 5803
    :cond_1
    return-void
.end method
