.class public final Lcom/google/b/a/bd;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15282
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15283
    invoke-direct {p0}, Lcom/google/b/a/bd;->a()Lcom/google/b/a/bd;

    .line 15284
    return-void
.end method

.method private a()Lcom/google/b/a/bd;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15287
    iput v1, p0, Lcom/google/b/a/bd;->c:I

    .line 15288
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/b/a/bd;->a:[I

    .line 15289
    iput-boolean v1, p0, Lcom/google/b/a/bd;->d:Z

    .line 15290
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    .line 15291
    iput v1, p0, Lcom/google/b/a/bd;->e:I

    .line 15292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bd;->cachedSize:I

    .line 15293
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bd;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 15364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 15365
    sparse-switch v0, :sswitch_data_0

    .line 15369
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15370
    :sswitch_0
    return-object p0

    .line 15375
    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 15377
    iget-object v0, p0, Lcom/google/b/a/bd;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 15378
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 15379
    if-eqz v0, :cond_1

    .line 15380
    iget-object v3, p0, Lcom/google/b/a/bd;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15382
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 15383
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 15384
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15382
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15377
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/bd;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 15387
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 15388
    iput-object v2, p0, Lcom/google/b/a/bd;->a:[I

    goto :goto_0

    .line 15392
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 15393
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 15396
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 15397
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_4

    .line 15398
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 15399
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15401
    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 15402
    iget-object v2, p0, Lcom/google/b/a/bd;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 15403
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 15404
    if-eqz v2, :cond_5

    .line 15405
    iget-object v4, p0, Lcom/google/b/a/bd;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15407
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 15408
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 15407
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 15402
    :cond_6
    iget-object v2, p0, Lcom/google/b/a/bd;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 15410
    :cond_7
    iput-object v0, p0, Lcom/google/b/a/bd;->a:[I

    .line 15411
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 15415
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/bd;->d:Z

    .line 15416
    iget v0, p0, Lcom/google/b/a/bd;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bd;->c:I

    goto/16 :goto_0

    .line 15420
    :sswitch_4
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 15422
    iget-object v0, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    .line 15423
    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 15424
    if-eqz v0, :cond_8

    .line 15425
    iget-object v3, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15427
    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 15428
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 15429
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15427
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 15422
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_6

    .line 15432
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 15433
    iput-object v2, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    goto/16 :goto_0

    .line 15437
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/bd;->e:I

    .line 15438
    iget v0, p0, Lcom/google/b/a/bd;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bd;->c:I

    goto/16 :goto_0

    .line 15365
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 15322
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 15323
    iget-object v0, p0, Lcom/google/b/a/bd;->a:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/b/a/bd;->a:[I

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    move v2, v1

    .line 15325
    :goto_0
    iget-object v4, p0, Lcom/google/b/a/bd;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 15326
    iget-object v4, p0, Lcom/google/b/a/bd;->a:[I

    aget v4, v4, v0

    .line 15327
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 15325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15330
    :cond_0
    add-int v0, v3, v2

    .line 15331
    iget-object v2, p0, Lcom/google/b/a/bd;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 15333
    :goto_1
    iget v2, p0, Lcom/google/b/a/bd;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 15334
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/b/a/bd;->d:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15337
    :cond_1
    iget-object v2, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 15340
    :goto_2
    iget-object v4, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 15341
    iget-object v4, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 15342
    if-eqz v4, :cond_2

    .line 15343
    add-int/lit8 v3, v3, 0x1

    .line 15344
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 15340
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15348
    :cond_3
    add-int/2addr v0, v2

    .line 15349
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 15351
    :cond_4
    iget v1, p0, Lcom/google/b/a/bd;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 15352
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/bd;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15355
    :cond_5
    iput v0, p0, Lcom/google/b/a/bd;->cachedSize:I

    .line 15356
    return v0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 15216
    invoke-direct {p0, p1}, Lcom/google/b/a/bd;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 15299
    iget-object v0, p0, Lcom/google/b/a/bd;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/b/a/bd;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 15300
    :goto_0
    iget-object v2, p0, Lcom/google/b/a/bd;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 15301
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/bd;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 15300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15304
    :cond_0
    iget v0, p0, Lcom/google/b/a/bd;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 15305
    const/4 v0, 0x2

    iget-boolean v2, p0, Lcom/google/b/a/bd;->d:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 15307
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 15308
    :goto_1
    iget-object v0, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 15309
    iget-object v0, p0, Lcom/google/b/a/bd;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 15310
    if-eqz v0, :cond_2

    .line 15311
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15308
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15315
    :cond_3
    iget v0, p0, Lcom/google/b/a/bd;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 15316
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/bd;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 15318
    :cond_4
    return-void
.end method
