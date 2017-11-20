.class public final Lcom/google/b/a/he;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/hf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 322
    invoke-direct {p0}, Lcom/google/b/a/he;->a()Lcom/google/b/a/he;

    .line 323
    return-void
.end method

.method private a()Lcom/google/b/a/he;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/google/b/a/hf;->a()[Lcom/google/b/a/hf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/he;->cachedSize:I

    .line 328
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/he;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 365
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 366
    sparse-switch v0, :sswitch_data_0

    .line 370
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    :sswitch_0
    return-object p0

    .line 376
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 378
    iget-object v0, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    if-nez v0, :cond_2

    move v0, v1

    .line 379
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/hf;

    .line 381
    if-eqz v0, :cond_1

    .line 382
    iget-object v3, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 385
    new-instance v3, Lcom/google/b/a/hf;

    invoke-direct {v3}, Lcom/google/b/a/hf;-><init>()V

    aput-object v3, v2, v0

    .line 386
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 387
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    array-length v0, v0

    goto :goto_1

    .line 390
    :cond_3
    new-instance v3, Lcom/google/b/a/hf;

    invoke-direct {v3}, Lcom/google/b/a/hf;-><init>()V

    aput-object v3, v2, v0

    .line 391
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 392
    iput-object v2, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 346
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 347
    iget-object v0, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 348
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    aget-object v2, v2, v0

    .line 350
    if-eqz v2, :cond_0

    .line 351
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    iput v1, p0, Lcom/google/b/a/he;->cachedSize:I

    .line 357
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/google/b/a/he;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/he;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 335
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/google/b/a/he;->a:[Lcom/google/b/a/hf;

    aget-object v1, v1, v0

    .line 337
    if-eqz v1, :cond_0

    .line 338
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_1
    return-void
.end method
