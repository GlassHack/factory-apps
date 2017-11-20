.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddedParserDetails"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;


# instance fields
.field private bitField0_:I

.field private hypothesisIndex_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5753
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5754
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    .line 5755
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
    .locals 2

    .prologue
    .line 5721
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    if-nez v0, :cond_1

    .line 5722
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5724
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    if-nez v0, :cond_0

    .line 5725
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    .line 5727
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5729
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    return-object v0

    .line 5727
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5815
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5809
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5758
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    .line 5759
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->hypothesisIndex_:I

    .line 5760
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->cachedSize:I

    .line 5761
    return-object p0
.end method

.method public clearHypothesisIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
    .locals 1

    .prologue
    .line 5748
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->hypothesisIndex_:I

    .line 5749
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    .line 5750
    return-object p0
.end method

.method public getHypothesisIndex()I
    .locals 1

    .prologue
    .line 5737
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->hypothesisIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5774
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5775
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5776
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->hypothesisIndex_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5779
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->cachedSize:I

    .line 5780
    return v0
.end method

.method public hasHypothesisIndex()Z
    .locals 1

    .prologue
    .line 5745
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

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
    .line 5715
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5788
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5789
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5793
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5794
    :sswitch_0
    return-object p0

    .line 5799
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->hypothesisIndex_:I

    .line 5800
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    goto :goto_0

    .line 5789
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setHypothesisIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5740
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->hypothesisIndex_:I

    .line 5741
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    .line 5742
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
    .line 5767
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5768
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$EmbeddedParserDetails;->hypothesisIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5770
    :cond_0
    return-void
.end method
