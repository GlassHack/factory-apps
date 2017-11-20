.class public final Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateCredentialRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;


# instance fields
.field private accountName_:Ljava/lang/String;

.field private accountType_:Ljava/lang/String;

.field private bitField0_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8624
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8625
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->clear()Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    .line 8626
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 2

    .prologue
    .line 8565
    sget-object v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-nez v0, :cond_1

    .line 8566
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8568
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-nez v0, :cond_0

    .line 8569
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    .line 8571
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8573
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    return-object v0

    .line 8571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8735
    new-instance v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8729
    new-instance v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 8629
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 8630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 8631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 8632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8633
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->cachedSize:I

    .line 8634
    return-object p0
.end method

.method public clearAccountName()Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 8587
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 8588
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 8589
    return-object p0
.end method

.method public clearAccountType()Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 8609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 8610
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 8611
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 8686
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8687
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8688
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 8689
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8691
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8692
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 8693
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8695
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8639
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 8657
    :cond_0
    :goto_0
    return v1

    .line 8642
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 8645
    check-cast v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    .line 8646
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 8647
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8650
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 8651
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8654
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8655
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 8657
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8581
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8603
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccountName()Z
    .locals 1

    .prologue
    .line 8584
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 8606
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

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
    .line 8662
    const/16 v0, 0x11

    .line 8663
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 8664
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 8665
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 8666
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8667
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 8668
    :goto_0
    add-int v0, v2, v1

    .line 8669
    return v0

    .line 8668
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8703
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8704
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8708
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8709
    :sswitch_0
    return-object p0

    .line 8714
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 8715
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    goto :goto_0

    .line 8719
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 8720
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    goto :goto_0

    .line 8704
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 8559
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8592
    if-nez p1, :cond_0

    .line 8593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8595
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    .line 8596
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 8597
    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8614
    if-nez p1, :cond_0

    .line 8615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8617
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    .line 8618
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    .line 8619
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
    .line 8675
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8676
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8678
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8679
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->accountType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8681
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8682
    return-void
.end method
