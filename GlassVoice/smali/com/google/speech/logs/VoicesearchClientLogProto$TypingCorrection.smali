.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypingCorrection"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;


# instance fields
.field private bitField0_:I

.field private recognizerSegmentIndex_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5037
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5038
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 5039
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 2

    .prologue
    .line 5005
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    if-nez v0, :cond_1

    .line 5006
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5008
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    if-nez v0, :cond_0

    .line 5009
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 5011
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5013
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    return-object v0

    .line 5011
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5099
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5093
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5042
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    .line 5043
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 5044
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 5045
    return-object p0
.end method

.method public clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1

    .prologue
    .line 5032
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 5033
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    .line 5034
    return-object p0
.end method

.method public getRecognizerSegmentIndex()I
    .locals 1

    .prologue
    .line 5021
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5058
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5059
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5060
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5063
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 5064
    return v0
.end method

.method public hasRecognizerSegmentIndex()Z
    .locals 1

    .prologue
    .line 5029
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

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
    .line 4999
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5073
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5077
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5078
    :sswitch_0
    return-object p0

    .line 5083
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 5084
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    goto :goto_0

    .line 5073
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5024
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 5025
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    .line 5026
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
    .line 5051
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5052
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5054
    :cond_0
    return-void
.end method
