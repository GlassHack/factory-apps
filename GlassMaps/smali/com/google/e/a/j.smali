.class public final Lcom/google/e/a/j;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/e;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 364
    invoke-direct {p0}, Lcom/google/e/a/j;->a()Lcom/google/e/a/j;

    .line 365
    return-void
.end method

.method private a()Lcom/google/e/a/j;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/j;->b:I

    .line 369
    invoke-static {}, Lcom/google/e/a/e;->a()[Lcom/google/e/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/j;->c:Ljava/lang/String;

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/j;->cachedSize:I

    .line 372
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 416
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 417
    sparse-switch v0, :sswitch_data_0

    .line 421
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :sswitch_0
    return-object p0

    .line 427
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 429
    iget-object v0, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    if-nez v0, :cond_2

    move v0, v1

    .line 430
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/e;

    .line 432
    if-eqz v0, :cond_1

    .line 433
    iget-object v3, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 436
    new-instance v3, Lcom/google/e/a/e;

    invoke-direct {v3}, Lcom/google/e/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 437
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 438
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    array-length v0, v0

    goto :goto_1

    .line 441
    :cond_3
    new-instance v3, Lcom/google/e/a/e;

    invoke-direct {v3}, Lcom/google/e/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 442
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 443
    iput-object v2, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    goto :goto_0

    .line 447
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/j;->c:Ljava/lang/String;

    .line 448
    iget v0, p0, Lcom/google/e/a/j;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/j;->b:I

    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 393
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 394
    iget-object v0, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 395
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    aget-object v2, v2, v0

    .line 397
    if-eqz v2, :cond_0

    .line 398
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    iget v0, p0, Lcom/google/e/a/j;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 404
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/e/a/j;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 407
    :cond_2
    iput v1, p0, Lcom/google/e/a/j;->cachedSize:I

    .line 408
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/google/e/a/j;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 379
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/google/e/a/j;->a:[Lcom/google/e/a/e;

    aget-object v1, v1, v0

    .line 381
    if-eqz v1, :cond_0

    .line 382
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 379
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    iget v0, p0, Lcom/google/e/a/j;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 387
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 389
    :cond_2
    return-void
.end method
