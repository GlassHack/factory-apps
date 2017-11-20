.class public final Lcom/google/glass/companion/nano/Proto$Photo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/nano/Proto$Photo$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$Photo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$Photo;


# instance fields
.field private bitField0_:I

.field private numOfPhotosToSync_:I

.field private op_:I

.field private photoId_:Ljava/lang/String;

.field private thumbnailBytes_:[B

.field private timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8378
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8379
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Photo;->clear()Lcom/google/glass/companion/nano/Proto$Photo;

    .line 8380
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 2

    .prologue
    .line 8262
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Photo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Photo;

    if-nez v0, :cond_1

    .line 8263
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8265
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Photo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Photo;

    if-nez v0, :cond_0

    .line 8266
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$Photo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$Photo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Photo;

    .line 8268
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8270
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Photo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Photo;

    return-object v0

    .line 8268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8555
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Photo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Photo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$Photo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8549
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Photo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Photo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$Photo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8383
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8384
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    .line 8385
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    .line 8386
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 8387
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    .line 8388
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    .line 8389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8390
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->cachedSize:I

    .line 8391
    return-object p0
.end method

.method public clearNumOfPhotosToSync()Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1

    .prologue
    .line 8366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    .line 8367
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8368
    return-object p0
.end method

.method public clearOp()Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1

    .prologue
    .line 8352
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8353
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    .line 8354
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1

    .prologue
    .line 8325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 8326
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8327
    return-object p0
.end method

.method public clearThumbnailBytes()Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1

    .prologue
    .line 8284
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    .line 8285
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8286
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 2

    .prologue
    .line 8306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    .line 8307
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8308
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 8467
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8468
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8469
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    .line 8470
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 8472
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8473
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    .line 8474
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8476
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8477
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 8478
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8480
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 8481
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    .line 8482
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8484
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 8485
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    .line 8486
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8488
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8396
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 8426
    :cond_0
    :goto_0
    return v1

    .line 8399
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$Photo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 8402
    check-cast v0, Lcom/google/glass/companion/nano/Proto$Photo;

    .line 8403
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$Photo;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    .line 8404
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8407
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 8411
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 8412
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8415
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    if-ne v3, v4, :cond_0

    .line 8419
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    if-ne v3, v4, :cond_0

    .line 8423
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8424
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 8426
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getNumOfPhotosToSync()I
    .locals 1

    .prologue
    .line 8360
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 8341
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    return v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8319
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .prologue
    .line 8278
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 8300
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    return-wide v0
.end method

.method public hasNumOfPhotosToSync()Z
    .locals 1

    .prologue
    .line 8363
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOp()Z
    .locals 1

    .prologue
    .line 8349
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhotoId()Z
    .locals 1

    .prologue
    .line 8322
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnailBytes()Z
    .locals 1

    .prologue
    .line 8281
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 8303
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

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
    .locals 7

    .prologue
    .line 8431
    const/16 v0, 0x11

    .line 8432
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 8433
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 8434
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 8435
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 8436
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    add-int v0, v1, v2

    .line 8437
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    add-int v0, v1, v2

    .line 8438
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8439
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 8440
    :goto_0
    add-int v0, v2, v1

    .line 8441
    return v0

    .line 8440
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8496
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 8497
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 8501
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8502
    :sswitch_0
    return-object p0

    .line 8507
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    .line 8508
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 8512
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    .line 8513
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 8517
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 8518
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 8522
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 8523
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 8524
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 8532
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8533
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$Photo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 8528
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    .line 8529
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 8539
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    .line 8540
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 8497
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 8524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 8249
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$Photo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Photo;

    move-result-object v0

    return-object v0
.end method

.method public setNumOfPhotosToSync(I)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8371
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    .line 8372
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8373
    return-object p0
.end method

.method public setOp(I)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8344
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    .line 8345
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8346
    return-object p0
.end method

.method public setPhotoId(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8330
    if-nez p1, :cond_0

    .line 8331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8333
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 8334
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8335
    return-object p0
.end method

.method public setThumbnailBytes([B)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 8289
    if-nez p1, :cond_0

    .line 8290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8292
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    .line 8293
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8294
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/glass/companion/nano/Proto$Photo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 8311
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    .line 8312
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    .line 8313
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8447
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8448
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->thumbnailBytes_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 8450
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8451
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Photo;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 8453
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8454
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->photoId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8456
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8457
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->op_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8459
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8460
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Photo;->numOfPhotosToSync_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8462
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8463
    return-void
.end method
