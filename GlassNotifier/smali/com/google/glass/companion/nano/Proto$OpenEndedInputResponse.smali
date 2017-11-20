.class public final Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenEndedInputResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;


# instance fields
.field private bitField0_:I

.field private control_:I

.field private diffStartIndex_:I

.field private updatedInput_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9893
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9894
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->clear()Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    .line 9895
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 2

    .prologue
    .line 9818
    sget-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-nez v0, :cond_1

    .line 9819
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9821
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-nez v0, :cond_0

    .line 9822
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    .line 9824
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9826
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    return-object v0

    .line 9824
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10033
    new-instance v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10027
    new-instance v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9898
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 9899
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    .line 9900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 9901
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 9902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9903
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->cachedSize:I

    .line 9904
    return-object p0
.end method

.method public clearControl()Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 9845
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 9846
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    .line 9847
    return-object p0
.end method

.method public clearDiffStartIndex()Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 9881
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 9882
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 9883
    return-object p0
.end method

.method public clearUpdatedInput()Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 9859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 9860
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 9861
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 9964
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9965
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9966
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    .line 9967
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9969
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9970
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 9971
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9973
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9974
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 9975
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9977
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9909
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 9931
    :cond_0
    :goto_0
    return v1

    .line 9912
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 9915
    check-cast v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    .line 9916
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    if-ne v3, v4, :cond_0

    .line 9920
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 9921
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9924
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    if-ne v3, v4, :cond_0

    .line 9928
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9929
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 9931
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getControl()I
    .locals 1

    .prologue
    .line 9834
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    return v0
.end method

.method public getDiffStartIndex()I
    .locals 1

    .prologue
    .line 9875
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    return v0
.end method

.method public getUpdatedInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9853
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    return-object v0
.end method

.method public hasControl()Z
    .locals 1

    .prologue
    .line 9842
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDiffStartIndex()Z
    .locals 1

    .prologue
    .line 9878
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdatedInput()Z
    .locals 1

    .prologue
    .line 9856
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 9936
    const/16 v0, 0x11

    .line 9937
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 9938
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    add-int v0, v1, v2

    .line 9939
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 9940
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    add-int v0, v1, v2

    .line 9941
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9942
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 9943
    :goto_0
    add-int v0, v2, v1

    .line 9944
    return v0

    .line 9943
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9985
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 9986
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 9990
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9991
    :sswitch_0
    return-object p0

    .line 9996
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 9997
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 9998
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 10005
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 10006
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 10001
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    .line 10002
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 10012
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 10013
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 10017
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 10018
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 9986
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 9998
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9812
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    move-result-object v0

    return-object v0
.end method

.method public setControl(I)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9837
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    .line 9838
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 9839
    return-object p0
.end method

.method public setDiffStartIndex(I)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9886
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 9887
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 9888
    return-object p0
.end method

.method public setUpdatedInput(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9864
    if-nez p1, :cond_0

    .line 9865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9867
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 9868
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 9869
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9950
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9951
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->control_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9953
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9954
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9956
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9957
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9959
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9960
    return-void
.end method
