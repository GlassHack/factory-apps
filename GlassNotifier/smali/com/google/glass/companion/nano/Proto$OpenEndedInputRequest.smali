.class public final Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenEndedInputRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;


# instance fields
.field private bitField0_:I

.field private control_:I

.field private currentInput_:Ljava/lang/String;

.field private prompt_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9668
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9669
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->clear()Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    .line 9670
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 2

    .prologue
    .line 9590
    sget-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-nez v0, :cond_1

    .line 9591
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9593
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-nez v0, :cond_0

    .line 9594
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    .line 9596
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9598
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    return-object v0

    .line 9596
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9808
    new-instance v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9802
    new-instance v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 9673
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 9674
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    .line 9675
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 9676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 9677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9678
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->cachedSize:I

    .line 9679
    return-object p0
.end method

.method public clearControl()Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 9617
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 9618
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    .line 9619
    return-object p0
.end method

.method public clearCurrentInput()Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 9653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 9654
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 9655
    return-object p0
.end method

.method public clearPrompt()Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 9631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 9632
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 9633
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 9739
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9740
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9741
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    .line 9742
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9744
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9745
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 9746
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9748
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9749
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 9750
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9752
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9684
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 9706
    :cond_0
    :goto_0
    return v1

    .line 9687
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 9690
    check-cast v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    .line 9691
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    if-ne v3, v4, :cond_0

    .line 9695
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 9696
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9699
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 9700
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9703
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9704
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 9706
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getControl()I
    .locals 1

    .prologue
    .line 9606
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    return v0
.end method

.method public getCurrentInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9647
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9625
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    return-object v0
.end method

.method public hasControl()Z
    .locals 1

    .prologue
    .line 9614
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrentInput()Z
    .locals 1

    .prologue
    .line 9650
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrompt()Z
    .locals 1

    .prologue
    .line 9628
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

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
    .line 9711
    const/16 v0, 0x11

    .line 9712
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 9713
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    add-int v0, v1, v2

    .line 9714
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 9715
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 9716
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9717
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 9718
    :goto_0
    add-int v0, v2, v1

    .line 9719
    return v0

    .line 9718
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9760
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 9761
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 9765
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9766
    :sswitch_0
    return-object p0

    .line 9771
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 9772
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 9773
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 9780
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9781
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 9776
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    .line 9777
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 9787
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 9788
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 9792
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 9793
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    goto :goto_0

    .line 9761
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 9773
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
    .line 9584
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    move-result-object v0

    return-object v0
.end method

.method public setControl(I)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9609
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    .line 9610
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 9611
    return-object p0
.end method

.method public setCurrentInput(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9658
    if-nez p1, :cond_0

    .line 9659
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9661
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    .line 9662
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 9663
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9636
    if-nez p1, :cond_0

    .line 9637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9639
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    .line 9640
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    .line 9641
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
    .line 9725
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9726
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->control_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9728
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9729
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->prompt_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9731
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9732
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->currentInput_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9734
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9735
    return-void
.end method
