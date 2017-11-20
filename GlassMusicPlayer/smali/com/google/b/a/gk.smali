.class public final Lcom/google/b/a/gk;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/gq;

.field public b:[Lcom/google/b/a/gj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2482
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2483
    invoke-direct {p0}, Lcom/google/b/a/gk;->a()Lcom/google/b/a/gk;

    .line 2484
    return-void
.end method

.method private a()Lcom/google/b/a/gk;
    .locals 1

    .prologue
    .line 2487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    .line 2488
    invoke-static {}, Lcom/google/b/a/gj;->a()[Lcom/google/b/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    .line 2489
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gk;->cachedSize:I

    .line 2490
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gk;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2534
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2535
    sparse-switch v0, :sswitch_data_0

    .line 2539
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2540
    :sswitch_0
    return-object p0

    .line 2545
    :sswitch_1
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2547
    iget-object v0, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    if-nez v0, :cond_2

    move v0, v1

    .line 2548
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gj;

    .line 2550
    if-eqz v0, :cond_1

    .line 2551
    iget-object v3, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2553
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2554
    new-instance v3, Lcom/google/b/a/gj;

    invoke-direct {v3}, Lcom/google/b/a/gj;-><init>()V

    aput-object v3, v2, v0

    .line 2555
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2556
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2553
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2547
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    array-length v0, v0

    goto :goto_1

    .line 2559
    :cond_3
    new-instance v3, Lcom/google/b/a/gj;

    invoke-direct {v3}, Lcom/google/b/a/gj;-><init>()V

    aput-object v3, v2, v0

    .line 2560
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2561
    iput-object v2, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    goto :goto_0

    .line 2565
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    if-nez v0, :cond_4

    .line 2566
    new-instance v0, Lcom/google/b/a/gq;

    invoke-direct {v0}, Lcom/google/b/a/gq;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    .line 2568
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2535
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 2511
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 2512
    iget-object v0, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2513
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2514
    iget-object v2, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    aget-object v2, v2, v0

    .line 2515
    if-eqz v2, :cond_0

    .line 2516
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2513
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2521
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    if-eqz v0, :cond_2

    .line 2522
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 2525
    :cond_2
    iput v1, p0, Lcom/google/b/a/gk;->cachedSize:I

    .line 2526
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2459
    invoke-direct {p0, p1}, Lcom/google/b/a/gk;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2497
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2498
    iget-object v1, p0, Lcom/google/b/a/gk;->b:[Lcom/google/b/a/gj;

    aget-object v1, v1, v0

    .line 2499
    if-eqz v1, :cond_0

    .line 2500
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2497
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2504
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    if-eqz v0, :cond_2

    .line 2505
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/gk;->a:Lcom/google/b/a/gq;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2507
    :cond_2
    return-void
.end method
