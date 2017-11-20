.class public final Lcom/google/glass/companion/nano/Proto$Media;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$Media;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$Media;


# instance fields
.field private bitField0_:I

.field private bytes_:[B

.field private mimeType_:Ljava/lang/String;

.field private sha1HashCode_:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9451
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9452
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Media;->clear()Lcom/google/glass/companion/nano/Proto$Media;

    .line 9453
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$Media;
    .locals 2

    .prologue
    .line 9370
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Media;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v0, :cond_1

    .line 9371
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9373
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Media;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Media;

    if-nez v0, :cond_0

    .line 9374
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$Media;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$Media;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Media;

    .line 9376
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9378
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Media;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Media;

    return-object v0

    .line 9376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9580
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Media;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$Media;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Media;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9574
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Media;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$Media;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1

    .prologue
    .line 9456
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    .line 9457
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    .line 9458
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    .line 9459
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 9460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->cachedSize:I

    .line 9462
    return-object p0
.end method

.method public clearBytes()Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1

    .prologue
    .line 9392
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    .line 9393
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    .line 9394
    return-object p0
.end method

.method public clearMimeType()Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1

    .prologue
    .line 9436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 9437
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    .line 9438
    return-object p0
.end method

.method public clearSha1HashCode()Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1

    .prologue
    .line 9414
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    .line 9415
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    .line 9416
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 9522
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9523
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9524
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    .line 9525
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 9527
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9528
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    .line 9529
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 9531
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9532
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 9533
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9535
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9467
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 9489
    :cond_0
    :goto_0
    return v1

    .line 9470
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$Media;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 9473
    check-cast v0, Lcom/google/glass/companion/nano/Proto$Media;

    .line 9474
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$Media;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    .line 9475
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9478
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    .line 9479
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9482
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 9483
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9486
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9487
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 9489
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 9386
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9430
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1HashCode()[B
    .locals 1

    .prologue
    .line 9408
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    return-object v0
.end method

.method public hasBytes()Z
    .locals 1

    .prologue
    .line 9389
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 1

    .prologue
    .line 9433
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSha1HashCode()Z
    .locals 1

    .prologue
    .line 9411
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

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
    .line 9494
    const/16 v0, 0x11

    .line 9495
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 9496
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 9497
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 9498
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 9499
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9500
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 9501
    :goto_0
    add-int v0, v2, v1

    .line 9502
    return v0

    .line 9501
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Media;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9543
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9544
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9548
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9549
    :sswitch_0
    return-object p0

    .line 9554
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    .line 9555
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 9559
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    .line 9560
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 9564
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 9565
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 9544
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 9364
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$Media;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Media;

    move-result-object v0

    return-object v0
.end method

.method public setBytes([B)Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 9397
    if-nez p1, :cond_0

    .line 9398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9400
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    .line 9401
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    .line 9402
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9441
    if-nez p1, :cond_0

    .line 9442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9444
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 9445
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    .line 9446
    return-object p0
.end method

.method public setSha1HashCode([B)Lcom/google/glass/companion/nano/Proto$Media;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 9419
    if-nez p1, :cond_0

    .line 9420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9422
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    .line 9423
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    .line 9424
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
    .line 9508
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9509
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->bytes_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 9511
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9512
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->sha1HashCode_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 9514
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9515
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Media;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9517
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9518
    return-void
.end method
