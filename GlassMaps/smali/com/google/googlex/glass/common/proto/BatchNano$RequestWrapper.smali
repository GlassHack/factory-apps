.class public final Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;


# instance fields
.field private bitField0_:I

.field private data_:[B

.field private path_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 310
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 445
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    return-object v0
.end method


# virtual methods
.method public final clearData()Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 354
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 355
    return-object p0
.end method

.method public final clearPath()Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 332
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 333
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    if-ne p1, p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 362
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 363
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 364
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 365
    goto :goto_0

    .line 363
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 364
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    .line 365
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 398
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 401
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 402
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->cachedSize:I

    .line 406
    return v0
.end method

.method public final hasData()Z
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPath()Z
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

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

    .line 369
    .line 370
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 371
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 377
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_1
    add-int/2addr v0, v1

    .line 378
    return v0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    .line 373
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 374
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 2

    .prologue
    .line 414
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 415
    sparse-switch v0, :sswitch_data_0

    .line 419
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :sswitch_0
    return-object p0

    .line 430
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 431
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    goto :goto_0

    .line 435
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 436
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    goto :goto_0

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final setData([B)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 346
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 347
    return-object p0
.end method

.method public final setPath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 324
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 325
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 386
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 387
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 391
    return-void
.end method
