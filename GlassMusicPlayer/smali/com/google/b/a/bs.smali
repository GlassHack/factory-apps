.class public final Lcom/google/b/a/bs;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/dm;

.field public b:[Lcom/google/b/a/hg;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4444
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4445
    invoke-direct {p0}, Lcom/google/b/a/bs;->a()Lcom/google/b/a/bs;

    .line 4446
    return-void
.end method

.method private a()Lcom/google/b/a/bs;
    .locals 1

    .prologue
    .line 4449
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/bs;->c:I

    .line 4450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bs;->d:Ljava/lang/String;

    .line 4451
    invoke-static {}, Lcom/google/b/a/dm;->a()[Lcom/google/b/a/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    .line 4452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bs;->e:Ljava/lang/String;

    .line 4453
    invoke-static {}, Lcom/google/b/a/hg;->a()[Lcom/google/b/a/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    .line 4454
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bs;->cachedSize:I

    .line 4455
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bs;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4524
    sparse-switch v0, :sswitch_data_0

    .line 4528
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4529
    :sswitch_0
    return-object p0

    .line 4534
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bs;->d:Ljava/lang/String;

    .line 4535
    iget v0, p0, Lcom/google/b/a/bs;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bs;->c:I

    goto :goto_0

    .line 4539
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bs;->e:Ljava/lang/String;

    .line 4540
    iget v0, p0, Lcom/google/b/a/bs;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bs;->c:I

    goto :goto_0

    .line 4544
    :sswitch_3
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4546
    iget-object v0, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    if-nez v0, :cond_2

    move v0, v1

    .line 4547
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/hg;

    .line 4549
    if-eqz v0, :cond_1

    .line 4550
    iget-object v3, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4552
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4553
    new-instance v3, Lcom/google/b/a/hg;

    invoke-direct {v3}, Lcom/google/b/a/hg;-><init>()V

    aput-object v3, v2, v0

    .line 4554
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4555
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4552
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4546
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    array-length v0, v0

    goto :goto_1

    .line 4558
    :cond_3
    new-instance v3, Lcom/google/b/a/hg;

    invoke-direct {v3}, Lcom/google/b/a/hg;-><init>()V

    aput-object v3, v2, v0

    .line 4559
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4560
    iput-object v2, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    goto :goto_0

    .line 4564
    :sswitch_4
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4566
    iget-object v0, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    if-nez v0, :cond_5

    move v0, v1

    .line 4567
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dm;

    .line 4569
    if-eqz v0, :cond_4

    .line 4570
    iget-object v3, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4572
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 4573
    new-instance v3, Lcom/google/b/a/dm;

    invoke-direct {v3}, Lcom/google/b/a/dm;-><init>()V

    aput-object v3, v2, v0

    .line 4574
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4575
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4572
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4566
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    array-length v0, v0

    goto :goto_3

    .line 4578
    :cond_6
    new-instance v3, Lcom/google/b/a/dm;

    invoke-direct {v3}, Lcom/google/b/a/dm;-><init>()V

    aput-object v3, v2, v0

    .line 4579
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4580
    iput-object v2, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    goto/16 :goto_0

    .line 4524
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4487
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4488
    iget v2, p0, Lcom/google/b/a/bs;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4489
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/bs;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4492
    :cond_0
    iget v2, p0, Lcom/google/b/a/bs;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 4493
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/b/a/bs;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4496
    :cond_1
    iget-object v2, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 4497
    :goto_0
    iget-object v3, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 4498
    iget-object v3, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    aget-object v3, v3, v0

    .line 4499
    if-eqz v3, :cond_2

    .line 4500
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4497
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4505
    :cond_4
    iget-object v2, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 4506
    :goto_1
    iget-object v2, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 4507
    iget-object v2, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    aget-object v2, v2, v1

    .line 4508
    if-eqz v2, :cond_5

    .line 4509
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4506
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4514
    :cond_6
    iput v0, p0, Lcom/google/b/a/bs;->cachedSize:I

    .line 4515
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4375
    invoke-direct {p0, p1}, Lcom/google/b/a/bs;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4461
    iget v0, p0, Lcom/google/b/a/bs;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4462
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/b/a/bs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4464
    :cond_0
    iget v0, p0, Lcom/google/b/a/bs;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4465
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/b/a/bs;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4467
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 4468
    :goto_0
    iget-object v2, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 4469
    iget-object v2, p0, Lcom/google/b/a/bs;->b:[Lcom/google/b/a/hg;

    aget-object v2, v2, v0

    .line 4470
    if-eqz v2, :cond_2

    .line 4471
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4468
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4475
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 4476
    :goto_1
    iget-object v0, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 4477
    iget-object v0, p0, Lcom/google/b/a/bs;->a:[Lcom/google/b/a/dm;

    aget-object v0, v0, v1

    .line 4478
    if-eqz v0, :cond_4

    .line 4479
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4476
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4483
    :cond_5
    return-void
.end method
