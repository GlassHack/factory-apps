.class public final Lcom/google/b/a/eg;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/eh;

.field public b:Lcom/google/b/a/fc;

.field public c:Lcom/google/b/a/eb;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2572
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2573
    invoke-direct {p0}, Lcom/google/b/a/eg;->a()Lcom/google/b/a/eg;

    .line 2574
    return-void
.end method

.method private a()Lcom/google/b/a/eg;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2577
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    .line 2578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eg;->e:Ljava/lang/String;

    .line 2579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eg;->f:Ljava/lang/String;

    .line 2580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eg;->g:Ljava/lang/String;

    .line 2581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eg;->h:Ljava/lang/String;

    .line 2582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eg;->i:Ljava/lang/String;

    .line 2583
    invoke-static {}, Lcom/google/b/a/eh;->a()[Lcom/google/b/a/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    .line 2584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eg;->j:Ljava/lang/String;

    .line 2585
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/eg;->k:Ljava/lang/String;

    .line 2586
    iput-object v1, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    .line 2587
    iput-object v1, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    .line 2588
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/eg;->cachedSize:I

    .line 2589
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/eg;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2690
    sparse-switch v0, :sswitch_data_0

    .line 2694
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2695
    :sswitch_0
    return-object p0

    .line 2700
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->e:Ljava/lang/String;

    .line 2701
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    goto :goto_0

    .line 2705
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->f:Ljava/lang/String;

    .line 2706
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    goto :goto_0

    .line 2710
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->g:Ljava/lang/String;

    .line 2711
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    goto :goto_0

    .line 2715
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->h:Ljava/lang/String;

    .line 2716
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    goto :goto_0

    .line 2720
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->i:Ljava/lang/String;

    .line 2721
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    goto :goto_0

    .line 2725
    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2727
    iget-object v0, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    if-nez v0, :cond_2

    move v0, v1

    .line 2728
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/eh;

    .line 2730
    if-eqz v0, :cond_1

    .line 2731
    iget-object v3, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2733
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2734
    new-instance v3, Lcom/google/b/a/eh;

    invoke-direct {v3}, Lcom/google/b/a/eh;-><init>()V

    aput-object v3, v2, v0

    .line 2735
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2736
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2733
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2727
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    array-length v0, v0

    goto :goto_1

    .line 2739
    :cond_3
    new-instance v3, Lcom/google/b/a/eh;

    invoke-direct {v3}, Lcom/google/b/a/eh;-><init>()V

    aput-object v3, v2, v0

    .line 2740
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2741
    iput-object v2, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    goto/16 :goto_0

    .line 2745
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->j:Ljava/lang/String;

    .line 2746
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    goto/16 :goto_0

    .line 2750
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/eg;->k:Ljava/lang/String;

    .line 2751
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/eg;->d:I

    goto/16 :goto_0

    .line 2755
    :sswitch_9
    iget-object v0, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    if-nez v0, :cond_4

    .line 2756
    new-instance v0, Lcom/google/b/a/fc;

    invoke-direct {v0}, Lcom/google/b/a/fc;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    .line 2758
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2762
    :sswitch_a
    iget-object v0, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    if-nez v0, :cond_5

    .line 2763
    new-instance v0, Lcom/google/b/a/eb;

    invoke-direct {v0}, Lcom/google/b/a/eb;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    .line 2765
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2690
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 2634
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2635
    iget v1, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2636
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/eg;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2639
    :cond_0
    iget v1, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2640
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/eg;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2643
    :cond_1
    iget v1, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2644
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/eg;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2647
    :cond_2
    iget v1, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2648
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/eg;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2651
    :cond_3
    iget v1, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2652
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/eg;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2655
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 2656
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 2657
    iget-object v2, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    aget-object v2, v2, v0

    .line 2658
    if-eqz v2, :cond_5

    .line 2659
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2656
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 2664
    :cond_7
    iget v1, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 2665
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/eg;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2668
    :cond_8
    iget v1, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    .line 2669
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/eg;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2672
    :cond_9
    iget-object v1, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    if-eqz v1, :cond_a

    .line 2673
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2676
    :cond_a
    iget-object v1, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    if-eqz v1, :cond_b

    .line 2677
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2680
    :cond_b
    iput v0, p0, Lcom/google/b/a/eg;->cachedSize:I

    .line 2681
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2248
    invoke-direct {p0, p1}, Lcom/google/b/a/eg;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/eg;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2595
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2596
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/eg;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2598
    :cond_0
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2599
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/eg;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2601
    :cond_1
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2602
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/eg;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2604
    :cond_2
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2605
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/eg;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2607
    :cond_3
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2608
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/eg;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2610
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 2611
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 2612
    iget-object v1, p0, Lcom/google/b/a/eg;->a:[Lcom/google/b/a/eh;

    aget-object v1, v1, v0

    .line 2613
    if-eqz v1, :cond_5

    .line 2614
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2611
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2618
    :cond_6
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 2619
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/eg;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2621
    :cond_7
    iget v0, p0, Lcom/google/b/a/eg;->d:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 2622
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/eg;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2624
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    if-eqz v0, :cond_9

    .line 2625
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/eg;->b:Lcom/google/b/a/fc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2627
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    if-eqz v0, :cond_a

    .line 2628
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/eg;->c:Lcom/google/b/a/eb;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2630
    :cond_a
    return-void
.end method
