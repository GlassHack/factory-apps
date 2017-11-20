.class public final Lcom/google/e/a/fg;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 324
    invoke-direct {p0}, Lcom/google/e/a/fg;->a()Lcom/google/e/a/fg;

    .line 325
    return-void
.end method

.method private a()Lcom/google/e/a/fg;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iput v1, p0, Lcom/google/e/a/fg;->a:I

    .line 329
    iput v1, p0, Lcom/google/e/a/fg;->b:I

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fg;->c:Ljava/lang/String;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fg;->d:Ljava/lang/String;

    .line 332
    iput v1, p0, Lcom/google/e/a/fg;->e:I

    .line 333
    iput v1, p0, Lcom/google/e/a/fg;->f:I

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/fg;->cachedSize:I

    .line 335
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fg;
    .locals 1

    .prologue
    .line 390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 391
    sparse-switch v0, :sswitch_data_0

    .line 395
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    :sswitch_0
    return-object p0

    .line 401
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/fg;->b:I

    .line 402
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/fg;->a:I

    goto :goto_0

    .line 406
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fg;->c:Ljava/lang/String;

    .line 407
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/fg;->a:I

    goto :goto_0

    .line 411
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fg;->d:Ljava/lang/String;

    .line 412
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/fg;->a:I

    goto :goto_0

    .line 416
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/fg;->e:I

    .line 417
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/fg;->a:I

    goto :goto_0

    .line 421
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/fg;->f:I

    .line 422
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/fg;->a:I

    goto :goto_0

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 361
    iget v1, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/fg;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_0
    iget v1, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 366
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/fg;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_1
    iget v1, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 370
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/fg;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_2
    iget v1, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 374
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/fg;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_3
    iget v1, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 378
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/e/a/fg;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_4
    iput v0, p0, Lcom/google/e/a/fg;->cachedSize:I

    .line 382
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/google/e/a/fg;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fg;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/fg;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 344
    :cond_0
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 345
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/fg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 347
    :cond_1
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 348
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/fg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 350
    :cond_2
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 351
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/fg;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 353
    :cond_3
    iget v0, p0, Lcom/google/e/a/fg;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 354
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/e/a/fg;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 356
    :cond_4
    return-void
.end method
