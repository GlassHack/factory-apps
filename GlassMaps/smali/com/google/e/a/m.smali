.class public final Lcom/google/e/a/m;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8473
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8474
    invoke-direct {p0}, Lcom/google/e/a/m;->a()Lcom/google/e/a/m;

    .line 8475
    return-void
.end method

.method private a()Lcom/google/e/a/m;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8478
    iput v2, p0, Lcom/google/e/a/m;->a:I

    .line 8479
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/m;->b:J

    .line 8480
    iput v2, p0, Lcom/google/e/a/m;->c:I

    .line 8481
    iput-boolean v2, p0, Lcom/google/e/a/m;->d:Z

    .line 8482
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/m;->cachedSize:I

    .line 8483
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/m;
    .locals 2

    .prologue
    .line 8524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8525
    sparse-switch v0, :sswitch_data_0

    .line 8529
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8530
    :sswitch_0
    return-object p0

    .line 8535
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/m;->b:J

    .line 8536
    iget v0, p0, Lcom/google/e/a/m;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/m;->a:I

    goto :goto_0

    .line 8540
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/m;->c:I

    .line 8541
    iget v0, p0, Lcom/google/e/a/m;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/m;->a:I

    goto :goto_0

    .line 8545
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/m;->d:Z

    .line 8546
    iget v0, p0, Lcom/google/e/a/m;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/m;->a:I

    goto :goto_0

    .line 8525
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 8502
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8503
    iget v1, p0, Lcom/google/e/a/m;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8504
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/e/a/m;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8507
    :cond_0
    iget v1, p0, Lcom/google/e/a/m;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8508
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/m;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8511
    :cond_1
    iget v1, p0, Lcom/google/e/a/m;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8512
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/e/a/m;->d:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8515
    :cond_2
    iput v0, p0, Lcom/google/e/a/m;->cachedSize:I

    .line 8516
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8389
    invoke-direct {p0, p1}, Lcom/google/e/a/m;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 8489
    iget v0, p0, Lcom/google/e/a/m;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8490
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/e/a/m;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8492
    :cond_0
    iget v0, p0, Lcom/google/e/a/m;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8493
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/m;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8495
    :cond_1
    iget v0, p0, Lcom/google/e/a/m;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8496
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/e/a/m;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8498
    :cond_2
    return-void
.end method
