.class public final Lcom/google/e/a/eq;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/ep;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9525
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9526
    invoke-direct {p0}, Lcom/google/e/a/eq;->a()Lcom/google/e/a/eq;

    .line 9527
    return-void
.end method

.method private a()Lcom/google/e/a/eq;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9530
    iput v0, p0, Lcom/google/e/a/eq;->b:I

    .line 9531
    iput-boolean v0, p0, Lcom/google/e/a/eq;->c:Z

    .line 9532
    iput-boolean v0, p0, Lcom/google/e/a/eq;->d:Z

    .line 9533
    invoke-static {}, Lcom/google/e/a/ep;->a()[Lcom/google/e/a/ep;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    .line 9534
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/eq;->cachedSize:I

    .line 9535
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/eq;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9587
    sparse-switch v0, :sswitch_data_0

    .line 9591
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9592
    :sswitch_0
    return-object p0

    .line 9597
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/eq;->c:Z

    .line 9598
    iget v0, p0, Lcom/google/e/a/eq;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/eq;->b:I

    goto :goto_0

    .line 9602
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/eq;->d:Z

    .line 9603
    iget v0, p0, Lcom/google/e/a/eq;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/eq;->b:I

    goto :goto_0

    .line 9607
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 9609
    iget-object v0, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    if-nez v0, :cond_2

    move v0, v1

    .line 9610
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ep;

    .line 9612
    if-eqz v0, :cond_1

    .line 9613
    iget-object v3, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9615
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 9616
    new-instance v3, Lcom/google/e/a/ep;

    invoke-direct {v3}, Lcom/google/e/a/ep;-><init>()V

    aput-object v3, v2, v0

    .line 9617
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9618
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9615
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9609
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    array-length v0, v0

    goto :goto_1

    .line 9621
    :cond_3
    new-instance v3, Lcom/google/e/a/ep;

    invoke-direct {v3}, Lcom/google/e/a/ep;-><init>()V

    aput-object v3, v2, v0

    .line 9622
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9623
    iput-object v2, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    goto :goto_0

    .line 9587
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 9559
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9560
    iget v1, p0, Lcom/google/e/a/eq;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9561
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/e/a/eq;->c:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9564
    :cond_0
    iget v1, p0, Lcom/google/e/a/eq;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9565
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/e/a/eq;->d:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9568
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 9569
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 9570
    iget-object v2, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    aget-object v2, v2, v0

    .line 9571
    if-eqz v2, :cond_2

    .line 9572
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 9569
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 9577
    :cond_4
    iput v0, p0, Lcom/google/e/a/eq;->cachedSize:I

    .line 9578
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9465
    invoke-direct {p0, p1}, Lcom/google/e/a/eq;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/eq;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 9541
    iget v0, p0, Lcom/google/e/a/eq;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9542
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/e/a/eq;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9544
    :cond_0
    iget v0, p0, Lcom/google/e/a/eq;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9545
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/e/a/eq;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9547
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 9548
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 9549
    iget-object v1, p0, Lcom/google/e/a/eq;->a:[Lcom/google/e/a/ep;

    aget-object v1, v1, v0

    .line 9550
    if-eqz v1, :cond_2

    .line 9551
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9548
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9555
    :cond_3
    return-void
.end method
