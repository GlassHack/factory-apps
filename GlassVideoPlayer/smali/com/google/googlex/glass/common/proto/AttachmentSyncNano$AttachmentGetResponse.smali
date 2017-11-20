.class public final Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;


# instance fields
.field private bitField0_:I

.field private content_:[B

.field private mimeType_:Ljava/lang/String;

.field private responseCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 344
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    .line 293
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 478
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 472
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    return-object v0
.end method


# virtual methods
.method public final clearContent()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    .line 361
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    .line 362
    return-object p0
.end method

.method public final clearMimeType()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 339
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    .line 340
    return-object p0
.end method

.method public final clearResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    .line 317
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    .line 318
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    if-ne p1, p0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 368
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 369
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    .line 370
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 371
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    .line 372
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 373
    goto :goto_0

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 372
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    .line 373
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getContent()[B
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 409
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    .line 410
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 413
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 414
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 417
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    .line 418
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->cachedSize:I

    .line 422
    return v0
.end method

.method public final hasContent()Z
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMimeType()Z
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseCode()Z
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 377
    .line 378
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    add-int/lit16 v0, v0, 0x20f

    .line 379
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 380
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 386
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_1
    add-int/2addr v0, v1

    .line 387
    return v0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    .line 382
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 383
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 2

    .prologue
    .line 430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 431
    sparse-switch v0, :sswitch_data_0

    .line 435
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    :sswitch_0
    return-object p0

    .line 446
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 447
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 449
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    .line 450
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 452
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    goto :goto_0

    .line 457
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 458
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 462
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    .line 463
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setContent([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 352
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    .line 353
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    .line 354
    return-object p0
.end method

.method public final setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 331
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    .line 332
    return-object p0
.end method

.method public final setResponseCode(I)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 308
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    .line 309
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    .line 310
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 395
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 396
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 398
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 399
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->content_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 403
    return-void
.end method
