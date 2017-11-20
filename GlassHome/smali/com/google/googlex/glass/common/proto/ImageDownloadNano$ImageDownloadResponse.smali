.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ImageDownloadNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageDownloadResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse$Status;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;


# instance fields
.field private bitField0_:I

.field private image_:[B

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 380
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    .line 370
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    return-object v0
.end method


# virtual methods
.method public clearImage()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    .line 397
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    .line 398
    return-object p0
.end method

.method public clearStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    .line 416
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    .line 417
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    if-ne p1, p0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 423
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 424
    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    .line 425
    .local v0, "other":Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 427
    goto :goto_0

    .line 425
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    .line 427
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getImage()[B
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 459
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    .line 460
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 463
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    .line 464
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->cachedSize:I

    .line 468
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

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
    .line 431
    const/16 v1, 0x11

    .line 432
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 438
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    add-int v1, v2, v3

    .line 439
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 440
    return v1

    .line 434
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 435
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 477
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 481
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    .line 485
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    :sswitch_0
    return-object p0

    .line 492
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    .line 493
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    goto :goto_0

    .line 497
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 498
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 500
    :cond_2
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    .line 501
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    goto :goto_0

    .line 503
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    goto :goto_0

    .line 477
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 366
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public setImage([B)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    .line 389
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    .line 390
    return-object p0
.end method

.method public setStatus(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    .line 408
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    .line 409
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
    .line 445
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 448
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 449
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 453
    return-void
.end method
