.class public final Lcom/google/e/a/eo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8410
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8411
    invoke-direct {p0}, Lcom/google/e/a/eo;->a()Lcom/google/e/a/eo;

    .line 8412
    return-void
.end method

.method private a()Lcom/google/e/a/eo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8415
    iput v1, p0, Lcom/google/e/a/eo;->a:I

    .line 8416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/eo;->b:Ljava/lang/String;

    .line 8417
    iput v1, p0, Lcom/google/e/a/eo;->c:I

    .line 8418
    iput v1, p0, Lcom/google/e/a/eo;->d:I

    .line 8419
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/eo;->cachedSize:I

    .line 8420
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/eo;
    .locals 1

    .prologue
    .line 8461
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8462
    sparse-switch v0, :sswitch_data_0

    .line 8466
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8467
    :sswitch_0
    return-object p0

    .line 8472
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/eo;->b:Ljava/lang/String;

    .line 8473
    iget v0, p0, Lcom/google/e/a/eo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/eo;->a:I

    goto :goto_0

    .line 8477
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/eo;->c:I

    .line 8478
    iget v0, p0, Lcom/google/e/a/eo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/eo;->a:I

    goto :goto_0

    .line 8482
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/eo;->d:I

    .line 8483
    iget v0, p0, Lcom/google/e/a/eo;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/eo;->a:I

    goto :goto_0

    .line 8462
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8439
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8440
    iget v1, p0, Lcom/google/e/a/eo;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8441
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/eo;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8444
    :cond_0
    iget v1, p0, Lcom/google/e/a/eo;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8445
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/eo;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8448
    :cond_1
    iget v1, p0, Lcom/google/e/a/eo;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8449
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/eo;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8452
    :cond_2
    iput v0, p0, Lcom/google/e/a/eo;->cachedSize:I

    .line 8453
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8331
    invoke-direct {p0, p1}, Lcom/google/e/a/eo;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/eo;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8426
    iget v0, p0, Lcom/google/e/a/eo;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8427
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/eo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8429
    :cond_0
    iget v0, p0, Lcom/google/e/a/eo;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8430
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/eo;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8432
    :cond_1
    iget v0, p0, Lcom/google/e/a/eo;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8433
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/eo;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8435
    :cond_2
    return-void
.end method
