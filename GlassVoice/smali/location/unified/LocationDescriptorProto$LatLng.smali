.class public final Llocation/unified/LocationDescriptorProto$LatLng;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# static fields
.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LatLng;


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 403
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->clear()Llocation/unified/LocationDescriptorProto$LatLng;

    .line 404
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 2

    .prologue
    .line 351
    sget-object v0, Llocation/unified/LocationDescriptorProto$LatLng;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLng;

    if-nez v0, :cond_1

    .line 352
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LatLng;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLng;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LatLng;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LatLng;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLng;

    .line 357
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LatLng;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0

    .line 357
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LatLng;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 407
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 408
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 409
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    .line 411
    return-object p0
.end method

.method public clearLatitudeE7()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 379
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 380
    return-object p0
.end method

.method public clearLongitudeE7()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 398
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 399
    return-object p0
.end method

.method public getLatitudeE7()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 427
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 428
    .local v0, "size":I
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x1

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_0
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 433
    const/4 v1, 0x2

    iget v2, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    .line 437
    return v0
.end method

.method public hasLatitudeE7()Z
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitudeE7()Z
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LatLng;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 446
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 450
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    :sswitch_0
    return-object p0

    .line 456
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 457
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    goto :goto_0

    .line 461
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v1

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 462
    iget v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    goto :goto_0

    .line 446
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 370
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 371
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 372
    return-object p0
.end method

.method public setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 389
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 390
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 391
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x1

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 420
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 421
    const/4 v0, 0x2

    iget v1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 423
    :cond_1
    return-void
.end method
