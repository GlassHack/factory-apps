.class public final Lcom/google/b/a/cx;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/ch;

.field public b:[Ljava/lang/String;

.field public c:Lcom/google/b/a/ci;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2655
    invoke-direct {p0}, Lcom/google/b/a/cx;->a()Lcom/google/b/a/cx;

    .line 2656
    return-void
.end method

.method private a()Lcom/google/b/a/cx;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2659
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/cx;->d:I

    .line 2660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cx;->e:Ljava/lang/String;

    .line 2661
    iput-object v1, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    .line 2662
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    .line 2663
    iput-object v1, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    .line 2664
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/cx;->cachedSize:I

    .line 2665
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cx;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2728
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2729
    sparse-switch v0, :sswitch_data_0

    .line 2733
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2734
    :sswitch_0
    return-object p0

    .line 2739
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cx;->e:Ljava/lang/String;

    .line 2740
    iget v0, p0, Lcom/google/b/a/cx;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/cx;->d:I

    goto :goto_0

    .line 2744
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    if-nez v0, :cond_1

    .line 2745
    new-instance v0, Lcom/google/b/a/ch;

    invoke-direct {v0}, Lcom/google/b/a/ch;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    .line 2747
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2751
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2753
    iget-object v0, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 2754
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2755
    if-eqz v0, :cond_2

    .line 2756
    iget-object v3, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2758
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2759
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2760
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2758
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2753
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2763
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2764
    iput-object v2, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    goto :goto_0

    .line 2768
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    if-nez v0, :cond_5

    .line 2769
    new-instance v0, Lcom/google/b/a/ci;

    invoke-direct {v0}, Lcom/google/b/a/ci;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    .line 2771
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2729
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2692
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2693
    iget v2, p0, Lcom/google/b/a/cx;->d:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2694
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/cx;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2697
    :cond_0
    iget-object v2, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    if-eqz v2, :cond_1

    .line 2698
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2701
    :cond_1
    iget-object v2, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 2704
    :goto_0
    iget-object v4, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 2705
    iget-object v4, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 2706
    if-eqz v4, :cond_2

    .line 2707
    add-int/lit8 v3, v3, 0x1

    .line 2708
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2704
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2712
    :cond_3
    add-int/2addr v0, v2

    .line 2713
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 2715
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    if-eqz v1, :cond_5

    .line 2716
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2719
    :cond_5
    iput v0, p0, Lcom/google/b/a/cx;->cachedSize:I

    .line 2720
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2604
    invoke-direct {p0, p1}, Lcom/google/b/a/cx;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2671
    iget v0, p0, Lcom/google/b/a/cx;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2672
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/cx;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2674
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    if-eqz v0, :cond_1

    .line 2675
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/cx;->a:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2677
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 2678
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2679
    iget-object v1, p0, Lcom/google/b/a/cx;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2680
    if-eqz v1, :cond_2

    .line 2681
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2678
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2685
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    if-eqz v0, :cond_4

    .line 2686
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/cx;->c:Lcom/google/b/a/ci;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2688
    :cond_4
    return-void
.end method
