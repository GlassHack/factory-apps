.class public final Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenEndedInputResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputResponse;


# instance fields
.field private bitField0_:I

.field private control_:I

.field private diffStartIndex_:I

.field private updatedInput_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8497
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8498
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8503
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8544
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8498
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8670
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8664
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    return-object v0
.end method


# virtual methods
.method public clearControl()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8516
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8517
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8518
    return-object p0
.end method

.method public clearDiffStartIndex()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8557
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8558
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8559
    return-object p0
.end method

.method public clearUpdatedInput()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 8538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8539
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8540
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8564
    if-ne p1, p0, :cond_1

    .line 8570
    :cond_0
    :goto_0
    return v1

    .line 8565
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 8566
    check-cast v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 8567
    .local v0, "other":Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 8568
    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 8570
    goto :goto_0

    .line 8567
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8568
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    .line 8570
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getControl()I
    .locals 1

    .prologue
    .line 8505
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    return v0
.end method

.method public getDiffStartIndex()I
    .locals 1

    .prologue
    .line 8546
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8599
    const/4 v0, 0x0

    .line 8600
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8601
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8602
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8604
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8605
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8606
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8608
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8609
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8610
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8612
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8613
    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->cachedSize:I

    .line 8614
    return v0
.end method

.method public getUpdatedInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8524
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    return-object v0
.end method

.method public hasControl()Z
    .locals 1

    .prologue
    .line 8513
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

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
    .line 8554
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

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
    .line 8535
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 8574
    const/16 v0, 0x11

    .line 8575
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    add-int/lit16 v0, v1, 0x20f

    .line 8576
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 8577
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    add-int v0, v1, v3

    .line 8578
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 8579
    return v0

    .line 8576
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 8578
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 8622
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8623
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8627
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 8628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    .line 8631
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8633
    :sswitch_0
    return-object p0

    .line 8638
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 8639
    .local v1, "temp":I
    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 8641
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8642
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 8644
    :cond_3
    iput v3, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    goto :goto_0

    .line 8649
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8650
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 8654
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8655
    iget v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    goto :goto_0

    .line 8623
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8494
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    move-result-object v0

    return-object v0
.end method

.method public setControl(I)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8508
    iput p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    .line 8509
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8510
    return-object p0
.end method

.method public setDiffStartIndex(I)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8549
    iput p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    .line 8550
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8551
    return-object p0
.end method

.method public setUpdatedInput(Ljava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8527
    if-nez p1, :cond_0

    .line 8528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8530
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    .line 8531
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    .line 8532
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
    .line 8584
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8585
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->control_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8587
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8588
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->updatedInput_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8590
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8591
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->diffStartIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8593
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8595
    return-void
.end method
