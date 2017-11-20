.class public final Lcom/google/glass/companion/Proto$Photo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Photo$Operation;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Photo;


# instance fields
.field private bitField0_:I

.field private numOfPhotosToSync_:I

.field private op_:I

.field private photoId_:Ljava/lang/String;

.field private thumbnailBytes_:[B

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7217
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Photo;

    sput-object v0, Lcom/google/glass/companion/Proto$Photo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Photo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7218
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7229
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 7251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 7270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 7292
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 7311
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 7218
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7471
    new-instance v0, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Photo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7465
    new-instance v0, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Photo;

    return-object v0
.end method


# virtual methods
.method public clearNumOfPhotosToSync()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 7324
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 7325
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7326
    return-object p0
.end method

.method public clearOp()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 7305
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 7306
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7307
    return-object p0
.end method

.method public clearPhotoId()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 7286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 7287
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7288
    return-object p0
.end method

.method public clearThumbnailBytes()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 7245
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 7246
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7247
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/glass/companion/Proto$Photo;
    .locals 2

    .prologue
    .line 7264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 7265
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7266
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7331
    if-ne p1, p0, :cond_1

    .line 7339
    :cond_0
    :goto_0
    return v1

    .line 7332
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Photo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7333
    check-cast v0, Lcom/google/glass/companion/Proto$Photo;

    .line 7334
    .local v0, "other":Lcom/google/glass/companion/Proto$Photo;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 7336
    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7339
    goto :goto_0

    .line 7334
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 7336
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    .line 7339
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNumOfPhotosToSync()I
    .locals 1

    .prologue
    .line 7313
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 7294
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    return v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7272
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 7381
    const/4 v0, 0x0

    .line 7382
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7383
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 7384
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7386
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7387
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 7388
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7390
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7391
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 7392
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7394
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 7395
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 7396
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7398
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 7399
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 7400
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7402
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7403
    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->cachedSize:I

    .line 7404
    return v0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 7253
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    return-wide v0
.end method

.method public hasNumOfPhotosToSync()Z
    .locals 1

    .prologue
    .line 7321
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

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
    .line 7302
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

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
    .line 7283
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

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
    .line 7242
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

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
    .line 7261
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

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
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 7343
    const/16 v1, 0x11

    .line 7344
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 7350
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 7351
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 7352
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    add-int v1, v2, v4

    .line 7353
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    add-int v1, v2, v4

    .line 7354
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_1
    add-int v1, v2, v3

    .line 7355
    return v1

    .line 7346
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 7347
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 7346
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7351
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 7354
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 7412
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7413
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7417
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 7418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    .line 7421
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7423
    :sswitch_0
    return-object p0

    .line 7428
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 7429
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 7433
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 7434
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 7438
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 7439
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 7443
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 7444
    .local v1, "temp":I
    if-eq v1, v4, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 7447
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 7448
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 7450
    :cond_3
    iput v4, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    goto :goto_0

    .line 7455
    .end local v1    # "temp":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 7456
    iget v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    goto :goto_0

    .line 7413
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 7214
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Photo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Photo;

    move-result-object v0

    return-object v0
.end method

.method public setNumOfPhotosToSync(I)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7316
    iput p1, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    .line 7317
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7318
    return-object p0
.end method

.method public setOp(I)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7297
    iput p1, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    .line 7298
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7299
    return-object p0
.end method

.method public setPhotoId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7275
    if-nez p1, :cond_0

    .line 7276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7278
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    .line 7279
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7280
    return-object p0
.end method

.method public setThumbnailBytes([B)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 7234
    if-nez p1, :cond_0

    .line 7235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7237
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    .line 7238
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7239
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/glass/companion/Proto$Photo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 7256
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    .line 7257
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    .line 7258
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7360
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7361
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Photo;->thumbnailBytes_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 7363
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7364
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Photo;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 7366
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7367
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Photo;->photoId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7369
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7370
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->op_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7372
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7373
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Photo;->numOfPhotosToSync_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7375
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Photo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7377
    return-void
.end method
