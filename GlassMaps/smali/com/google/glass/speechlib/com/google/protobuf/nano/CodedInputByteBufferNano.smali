.class public final Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 407
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 410
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 416
    iput-object p1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    .line 417
    iput p2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    .line 418
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 419
    iput p2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 420
    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2

    .prologue
    .line 376
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    .prologue
    .line 390
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 2

    .prologue
    .line 493
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 494
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 495
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 497
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 498
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    goto :goto_0
.end method


# virtual methods
.method public final checkLastTagWas(I)V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 95
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public final getBytesUntilLimit()I
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 520
    const/4 v0, -0x1

    .line 524
    :goto_0
    return v0

    .line 523
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 524
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final getData(II)[B
    .locals 4

    .prologue
    .line 551
    if-nez p2, :cond_0

    .line 552
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    .line 557
    :goto_0
    return-object v0

    .line 554
    :cond_0
    new-array v0, p2, [B

    .line 555
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v1, p1

    .line 556
    iget-object v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final getPosition()I
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final popLimit(I)V
    .locals 0

    .prologue
    .line 510
    iput p1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 511
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 512
    return-void
.end method

.method public final pushLimit(I)I
    .locals 2

    .prologue
    .line 477
    if-gez p1, :cond_0

    .line 478
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 480
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    .line 481
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 482
    if-le v0, v1, :cond_1

    .line 483
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 485
    :cond_1
    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 487
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 489
    return v1
.end method

.method public final readBool()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readBytes()[B
    .locals 5

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 232
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 235
    new-array v0, v1, [B

    .line 236
    iget-object v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 241
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readEnum()I
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readFixed32()I
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readFixed64()J
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readGroup(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;I)V
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 206
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 208
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 209
    invoke-virtual {p1, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 210
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 212
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 213
    return-void
.end method

.method public final readInt32()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readInt64()J
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 219
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 225
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 227
    return-void
.end method

.method public final readRawByte()B
    .locals 3

    .prologue
    .line 581
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 582
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final readRawBytes(I)[B
    .locals 4

    .prologue
    .line 594
    if-gez p1, :cond_0

    .line 595
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 598
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 600
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 602
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 605
    :cond_1
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 607
    new-array v0, p1, [B

    .line 608
    iget-object v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 610
    return-object v0

    .line 612
    :cond_2
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readRawLittleEndian32()I
    .locals 4

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 336
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 337
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 338
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 339
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final readRawLittleEndian64()J
    .locals 13

    .prologue
    const-wide/16 v11, 0xff

    .line 347
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 348
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 349
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 350
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 351
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    .line 352
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    .line 353
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    .line 354
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    .line 355
    int-to-long v8, v0

    and-long/2addr v8, v11

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readRawVarint32()I
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 286
    if-ltz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 290
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    .line 291
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 293
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 294
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    .line 295
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 297
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 298
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_4

    .line 299
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 301
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 302
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 303
    if-gez v1, :cond_0

    .line 305
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-gez v2, :cond_0

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_5
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readRawVarint64()J
    .locals 6

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 321
    const-wide/16 v0, 0x0

    .line 322
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 324
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 325
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 326
    return-wide v0

    .line 328
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 329
    goto :goto_0

    .line 330
    :cond_1
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readSFixed32()I
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readSFixed64()J
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readSInt32()I
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public final readSInt64()J
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 190
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 194
    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public final readTag()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 81
    :goto_0
    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 77
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 81
    :cond_1
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    goto :goto_0
.end method

.method public final readUInt32()I
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readUInt64()J
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final resetSizeCounter()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public final rewindToPosition(I)V
    .locals 4

    .prologue
    .line 564
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v3, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    if-gez p1, :cond_1

    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_1
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 572
    return-void
.end method

.method public final setRecursionLimit(I)I
    .locals 3

    .prologue
    .line 430
    if-gez p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 435
    iput p1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 436
    return v0
.end method

.method public final setSizeLimit(I)I
    .locals 3

    .prologue
    .line 455
    if-gez p1, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 460
    iput p1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 461
    return v0
.end method

.method public final skipField(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 126
    :goto_0
    return v0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 118
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    goto :goto_0

    .line 123
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final skipMessage()V
    .locals 1

    .prologue
    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :cond_1
    return-void
.end method

.method public final skipRawBytes(I)V
    .locals 2

    .prologue
    .line 623
    if-gez p1, :cond_0

    .line 624
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 627
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 629
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 631
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 634
    :cond_1
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 636
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 640
    return-void

    .line 638
    :cond_2
    invoke-static {}, Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
