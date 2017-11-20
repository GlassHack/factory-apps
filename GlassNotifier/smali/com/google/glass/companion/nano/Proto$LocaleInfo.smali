.class public final Lcom/google/glass/companion/nano/Proto$LocaleInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$LocaleInfo;


# instance fields
.field private bitField0_:I

.field private networkBasedCountryIso_:Ljava/lang/String;

.field private simBasedCountryIso_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4519
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4520
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->clear()Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    .line 4521
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 2

    .prologue
    .line 4460
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-nez v0, :cond_1

    .line 4461
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4463
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-nez v0, :cond_0

    .line 4464
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    .line 4466
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4468
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    return-object v0

    .line 4466
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4630
    new-instance v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4624
    new-instance v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 4524
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    .line 4525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4528
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->cachedSize:I

    .line 4529
    return-object p0
.end method

.method public clearNetworkBasedCountryIso()Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 4482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4483
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    .line 4484
    return-object p0
.end method

.method public clearSimBasedCountryIso()Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 4504
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4505
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    .line 4506
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4581
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4582
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4583
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4584
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4586
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4587
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4588
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4590
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4534
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 4552
    :cond_0
    :goto_0
    return v1

    .line 4537
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 4540
    check-cast v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    .line 4541
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4542
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4545
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4546
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4549
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4550
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 4552
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getNetworkBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4476
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    return-object v0
.end method

.method public getSimBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    return-object v0
.end method

.method public hasNetworkBasedCountryIso()Z
    .locals 1

    .prologue
    .line 4479
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSimBasedCountryIso()Z
    .locals 1

    .prologue
    .line 4501
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

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
    .line 4557
    const/16 v0, 0x11

    .line 4558
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 4559
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 4560
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 4561
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4562
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 4563
    :goto_0
    add-int v0, v2, v1

    .line 4564
    return v0

    .line 4563
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4599
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4603
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4604
    :sswitch_0
    return-object p0

    .line 4609
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4610
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    goto :goto_0

    .line 4614
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4615
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    goto :goto_0

    .line 4599
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
    .line 4454
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public setNetworkBasedCountryIso(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4487
    if-nez p1, :cond_0

    .line 4488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4490
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    .line 4491
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    .line 4492
    return-object p0
.end method

.method public setSimBasedCountryIso(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$LocaleInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4509
    if-nez p1, :cond_0

    .line 4510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4512
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    .line 4513
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    .line 4514
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
    .line 4570
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4571
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->networkBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4573
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4574
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$LocaleInfo;->simBasedCountryIso_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4576
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4577
    return-void
.end method
