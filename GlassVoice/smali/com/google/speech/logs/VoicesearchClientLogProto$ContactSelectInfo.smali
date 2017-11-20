.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactSelectInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;


# instance fields
.field private bitField0_:I

.field private contactSelectPosition_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4933
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4934
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    .line 4935
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
    .locals 2

    .prologue
    .line 4901
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    if-nez v0, :cond_1

    .line 4902
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4904
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    if-nez v0, :cond_0

    .line 4905
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    .line 4907
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4909
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    return-object v0

    .line 4907
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4995
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4989
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4938
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    .line 4939
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->contactSelectPosition_:I

    .line 4940
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->cachedSize:I

    .line 4941
    return-object p0
.end method

.method public clearContactSelectPosition()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
    .locals 1

    .prologue
    .line 4928
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->contactSelectPosition_:I

    .line 4929
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    .line 4930
    return-object p0
.end method

.method public getContactSelectPosition()I
    .locals 1

    .prologue
    .line 4917
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->contactSelectPosition_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4954
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4955
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4956
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->contactSelectPosition_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4959
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->cachedSize:I

    .line 4960
    return v0
.end method

.method public hasContactSelectPosition()Z
    .locals 1

    .prologue
    .line 4925
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

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
    .line 4895
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4968
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4969
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4973
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4974
    :sswitch_0
    return-object p0

    .line 4979
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->contactSelectPosition_:I

    .line 4980
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    goto :goto_0

    .line 4969
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setContactSelectPosition(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4920
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->contactSelectPosition_:I

    .line 4921
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    .line 4922
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
    .line 4947
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4948
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactSelectInfo;->contactSelectPosition_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4950
    :cond_0
    return-void
.end method
