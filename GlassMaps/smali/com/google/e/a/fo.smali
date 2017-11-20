.class public final Lcom/google/e/a/fo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 411
    invoke-direct {p0}, Lcom/google/e/a/fo;->a()Lcom/google/e/a/fo;

    .line 412
    return-void
.end method

.method private a()Lcom/google/e/a/fo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    iput v2, p0, Lcom/google/e/a/fo;->a:I

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/fo;->b:J

    .line 417
    iput v2, p0, Lcom/google/e/a/fo;->c:I

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/fo;->cachedSize:I

    .line 419
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fo;
    .locals 2

    .prologue
    .line 453
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 454
    sparse-switch v0, :sswitch_data_0

    .line 458
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    :sswitch_0
    return-object p0

    .line 464
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/fo;->b:J

    .line 465
    iget v0, p0, Lcom/google/e/a/fo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/fo;->a:I

    goto :goto_0

    .line 469
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/fo;->c:I

    .line 470
    iget v0, p0, Lcom/google/e/a/fo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/fo;->a:I

    goto :goto_0

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 435
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 436
    iget v1, p0, Lcom/google/e/a/fo;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 437
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/e/a/fo;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_0
    iget v1, p0, Lcom/google/e/a/fo;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 441
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/fo;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_1
    iput v0, p0, Lcom/google/e/a/fo;->cachedSize:I

    .line 445
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/google/e/a/fo;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 425
    iget v0, p0, Lcom/google/e/a/fo;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/e/a/fo;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 428
    :cond_0
    iget v0, p0, Lcom/google/e/a/fo;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/fo;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 431
    :cond_1
    return-void
.end method
