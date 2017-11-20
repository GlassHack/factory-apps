.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactDisplayInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;


# instance fields
.field private bitField0_:I

.field private contactShownCount_:I

.field private peopleShownCount_:I

.field private syncedContactShownCount_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4803
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4804
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    .line 4805
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 2

    .prologue
    .line 4733
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    if-nez v0, :cond_1

    .line 4734
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4736
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    if-nez v0, :cond_0

    .line 4737
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    .line 4739
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4741
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    return-object v0

    .line 4739
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4891
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4885
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4808
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    .line 4809
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->contactShownCount_:I

    .line 4810
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->peopleShownCount_:I

    .line 4811
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->syncedContactShownCount_:I

    .line 4812
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->cachedSize:I

    .line 4813
    return-object p0
.end method

.method public clearContactShownCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1

    .prologue
    .line 4760
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->contactShownCount_:I

    .line 4761
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    .line 4762
    return-object p0
.end method

.method public clearPeopleShownCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1

    .prologue
    .line 4779
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->peopleShownCount_:I

    .line 4780
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    .line 4781
    return-object p0
.end method

.method public clearSyncedContactShownCount()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1

    .prologue
    .line 4798
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->syncedContactShownCount_:I

    .line 4799
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    .line 4800
    return-object p0
.end method

.method public getContactShownCount()I
    .locals 1

    .prologue
    .line 4749
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->contactShownCount_:I

    return v0
.end method

.method public getPeopleShownCount()I
    .locals 1

    .prologue
    .line 4768
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->peopleShownCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4832
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4833
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4834
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->contactShownCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4837
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4838
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->peopleShownCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4841
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4842
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->syncedContactShownCount_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4845
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->cachedSize:I

    .line 4846
    return v0
.end method

.method public getSyncedContactShownCount()I
    .locals 1

    .prologue
    .line 4787
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->syncedContactShownCount_:I

    return v0
.end method

.method public hasContactShownCount()Z
    .locals 1

    .prologue
    .line 4757
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPeopleShownCount()Z
    .locals 1

    .prologue
    .line 4776
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncedContactShownCount()Z
    .locals 1

    .prologue
    .line 4795
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

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
    .line 4727
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4855
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4859
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4860
    :sswitch_0
    return-object p0

    .line 4865
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->contactShownCount_:I

    .line 4866
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    goto :goto_0

    .line 4870
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->peopleShownCount_:I

    .line 4871
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    goto :goto_0

    .line 4875
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->syncedContactShownCount_:I

    .line 4876
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    goto :goto_0

    .line 4855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setContactShownCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4752
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->contactShownCount_:I

    .line 4753
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    .line 4754
    return-object p0
.end method

.method public setPeopleShownCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4771
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->peopleShownCount_:I

    .line 4772
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    .line 4773
    return-object p0
.end method

.method public setSyncedContactShownCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4790
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->syncedContactShownCount_:I

    .line 4791
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    .line 4792
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
    .line 4819
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4820
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->contactShownCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4822
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4823
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->peopleShownCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4825
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4826
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactDisplayInfo;->syncedContactShownCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4828
    :cond_2
    return-void
.end method
