.class public final Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ImageDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;,
        Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$CropType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;


# instance fields
.field private bitField0_:I

.field private clientSupportsWebp_:Z

.field private cropType_:I

.field public requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 271
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clear()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    .line 272
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    if-nez v0, :cond_1

    .line 193
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    .line 198
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 275
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 277
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    .line 278
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    .line 279
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 280
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cachedSize:I

    .line 282
    return-object p0
.end method

.method public clearClientSupportsWebp()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 259
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    .line 260
    return-object p0
.end method

.method public clearCropType()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    .line 246
    return-object p0
.end method

.method public clearUrl()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1

    .prologue
    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 215
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    .line 216
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 356
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 357
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 359
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    if-eqz v1, :cond_1

    .line 362
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    .line 363
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 366
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    .line 367
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 370
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 371
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 290
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 293
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    .line 294
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    if-nez v3, :cond_5

    .line 299
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    if-nez v3, :cond_0

    .line 307
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    if-ne v3, v4, :cond_0

    .line 311
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    if-ne v3, v4, :cond_0

    .line 315
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 316
    :cond_3
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 303
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getClientSupportsWebp()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    return v0
.end method

.method public getCropType()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientSupportsWebp()Z
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCropType()Z
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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

    .line 323
    const/16 v0, 0x11

    .line 324
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 325
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 326
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    if-nez v1, :cond_1

    move v1, v2

    .line 327
    :goto_0
    add-int v0, v3, v1

    .line 328
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    add-int v0, v1, v3

    .line 329
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v3, v1

    .line 330
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 331
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    :cond_0
    :goto_2
    add-int v0, v1, v2

    .line 333
    return v0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;->hashCode()I

    move-result v1

    goto :goto_0

    .line 329
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 382
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 386
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    :sswitch_0
    return-object p0

    .line 392
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 393
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    goto :goto_0

    .line 397
    :sswitch_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    if-nez v3, :cond_1

    .line 398
    new-instance v3, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;-><init>()V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 404
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 405
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 406
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 413
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 414
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 409
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    .line 410
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    goto :goto_0

    .line 420
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 421
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    goto :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 406
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientSupportsWebp(Z)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    .line 264
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    .line 265
    return-object p0
.end method

.method public setCropType(I)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    .line 237
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    .line 238
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    .line 223
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    .line 224
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
    .line 339
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 345
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 346
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->cropType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 348
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 349
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->clientSupportsWebp_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 351
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 352
    return-void
.end method
