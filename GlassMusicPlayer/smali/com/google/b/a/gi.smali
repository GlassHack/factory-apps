.class public final Lcom/google/b/a/gi;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/gq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4286
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4287
    invoke-direct {p0}, Lcom/google/b/a/gi;->a()Lcom/google/b/a/gi;

    .line 4288
    return-void
.end method

.method private a()Lcom/google/b/a/gi;
    .locals 1

    .prologue
    .line 4291
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    .line 4292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gi;->cachedSize:I

    .line 4293
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4330
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4331
    sparse-switch v0, :sswitch_data_0

    .line 4335
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4336
    :sswitch_0
    return-object p0

    .line 4341
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4343
    iget-object v0, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    if-nez v0, :cond_2

    move v0, v1

    .line 4344
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4346
    if-eqz v0, :cond_1

    .line 4347
    iget-object v3, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4349
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4350
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4351
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4352
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4349
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4343
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_1

    .line 4355
    :cond_3
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4356
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4357
    iput-object v2, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    goto :goto_0

    .line 4331
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
    .line 4311
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 4312
    iget-object v0, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4313
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4314
    iget-object v2, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4315
    if-eqz v2, :cond_0

    .line 4316
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4321
    :cond_1
    iput v1, p0, Lcom/google/b/a/gi;->cachedSize:I

    .line 4322
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4266
    invoke-direct {p0, p1}, Lcom/google/b/a/gi;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 4299
    iget-object v0, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 4300
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4301
    iget-object v1, p0, Lcom/google/b/a/gi;->a:[Lcom/google/b/a/gq;

    aget-object v1, v1, v0

    .line 4302
    if-eqz v1, :cond_0

    .line 4303
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4307
    :cond_1
    return-void
.end method
