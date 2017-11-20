.class public final Lcom/google/speech/common/Alternates$AlternateSpan;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/Alternates$AlternateSpan;


# instance fields
.field public alternates:[Lcom/google/speech/common/Alternates$Alternate;

.field private bitField0_:I

.field private confidence_:F

.field public length:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 384
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->clear()Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 385
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 2

    .prologue
    .line 342
    sget-object v0, Lcom/google/speech/common/Alternates$AlternateSpan;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateSpan;

    if-nez v0, :cond_1

    .line 343
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    sget-object v0, Lcom/google/speech/common/Alternates$AlternateSpan;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateSpan;

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/Alternates$AlternateSpan;

    sput-object v0, Lcom/google/speech/common/Alternates$AlternateSpan;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 348
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_1
    sget-object v0, Lcom/google/speech/common/Alternates$AlternateSpan;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateSpan;

    return-object v0

    .line 348
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateSpan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateSpan;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 389
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    .line 390
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length:I

    .line 391
    invoke-static {}, Lcom/google/speech/common/Alternates$Alternate;->emptyArray()[Lcom/google/speech/common/Alternates$Alternate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->cachedSize:I

    .line 394
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 379
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 380
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 417
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 418
    .local v2, "size":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 420
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 422
    iget-object v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 424
    iget-object v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    aget-object v0, v3, v1

    .line 425
    .local v0, "element":Lcom/google/speech/common/Alternates$Alternate;
    if-eqz v0, :cond_0

    .line 426
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "element":Lcom/google/speech/common/Alternates$Alternate;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 432
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 435
    :cond_2
    iput v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->cachedSize:I

    .line 436
    return v2
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 336
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$AlternateSpan;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 444
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 445
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 449
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 450
    :sswitch_0
    return-object p0

    .line 455
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    goto :goto_0

    .line 459
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length:I

    goto :goto_0

    .line 463
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 465
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    if-nez v5, :cond_2

    move v1, v4

    .line 466
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/common/Alternates$Alternate;

    .line 468
    .local v2, "newArray":[Lcom/google/speech/common/Alternates$Alternate;
    if-eqz v1, :cond_1

    .line 469
    iget-object v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 472
    new-instance v5, Lcom/google/speech/common/Alternates$Alternate;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$Alternate;-><init>()V

    aput-object v5, v2, v1

    .line 473
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 474
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 465
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/Alternates$Alternate;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    array-length v1, v5

    goto :goto_1

    .line 477
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/common/Alternates$Alternate;
    :cond_3
    new-instance v5, Lcom/google/speech/common/Alternates$Alternate;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$Alternate;-><init>()V

    aput-object v5, v2, v1

    .line 478
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 479
    iput-object v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    goto :goto_0

    .line 483
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/Alternates$Alternate;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 484
    iget v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    goto :goto_0

    .line 445
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 370
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 371
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 372
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 401
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 402
    iget-object v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates:[Lcom/google/speech/common/Alternates$Alternate;

    aget-object v0, v2, v1

    .line 405
    .local v0, "element":Lcom/google/speech/common/Alternates$Alternate;
    if-eqz v0, :cond_0

    .line 406
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 403
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "element":Lcom/google/speech/common/Alternates$Alternate;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 411
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 413
    :cond_2
    return-void
.end method
