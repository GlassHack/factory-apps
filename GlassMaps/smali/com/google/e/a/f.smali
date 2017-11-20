.class public final Lcom/google/e/a/f;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/e/a/e;

.field public b:[Lcom/google/e/a/e;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 685
    invoke-direct {p0}, Lcom/google/e/a/f;->a()Lcom/google/e/a/f;

    .line 686
    return-void
.end method

.method private a()Lcom/google/e/a/f;
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/f;->c:I

    .line 690
    invoke-static {}, Lcom/google/e/a/e;->a()[Lcom/google/e/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    .line 691
    invoke-static {}, Lcom/google/e/a/e;->a()[Lcom/google/e/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/f;->d:Ljava/lang/String;

    .line 693
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/f;->e:Ljava/lang/String;

    .line 694
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/f;->cachedSize:I

    .line 695
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/f;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 764
    sparse-switch v0, :sswitch_data_0

    .line 768
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    :sswitch_0
    return-object p0

    .line 774
    :sswitch_1
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 776
    iget-object v0, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    if-nez v0, :cond_2

    move v0, v1

    .line 777
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/e;

    .line 779
    if-eqz v0, :cond_1

    .line 780
    iget-object v3, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 783
    new-instance v3, Lcom/google/e/a/e;

    invoke-direct {v3}, Lcom/google/e/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 784
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 785
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    array-length v0, v0

    goto :goto_1

    .line 788
    :cond_3
    new-instance v3, Lcom/google/e/a/e;

    invoke-direct {v3}, Lcom/google/e/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 789
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 790
    iput-object v2, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    goto :goto_0

    .line 794
    :sswitch_2
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 796
    iget-object v0, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    if-nez v0, :cond_5

    move v0, v1

    .line 797
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/e;

    .line 799
    if-eqz v0, :cond_4

    .line 800
    iget-object v3, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 803
    new-instance v3, Lcom/google/e/a/e;

    invoke-direct {v3}, Lcom/google/e/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 804
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 805
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 796
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    array-length v0, v0

    goto :goto_3

    .line 808
    :cond_6
    new-instance v3, Lcom/google/e/a/e;

    invoke-direct {v3}, Lcom/google/e/a/e;-><init>()V

    aput-object v3, v2, v0

    .line 809
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 810
    iput-object v2, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    goto/16 :goto_0

    .line 814
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/f;->d:Ljava/lang/String;

    .line 815
    iget v0, p0, Lcom/google/e/a/f;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/f;->c:I

    goto/16 :goto_0

    .line 819
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/f;->e:Ljava/lang/String;

    .line 820
    iget v0, p0, Lcom/google/e/a/f;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/f;->c:I

    goto/16 :goto_0

    .line 764
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 727
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 728
    iget-object v2, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 729
    :goto_0
    iget-object v3, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 730
    iget-object v3, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    aget-object v3, v3, v0

    .line 731
    if-eqz v3, :cond_0

    .line 732
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 729
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 737
    :cond_2
    iget-object v2, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 738
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 739
    iget-object v2, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    aget-object v2, v2, v1

    .line 740
    if-eqz v2, :cond_3

    .line 741
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 738
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 746
    :cond_4
    iget v1, p0, Lcom/google/e/a/f;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 747
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/f;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_5
    iget v1, p0, Lcom/google/e/a/f;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 751
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/f;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_6
    iput v0, p0, Lcom/google/e/a/f;->cachedSize:I

    .line 755
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/google/e/a/f;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 701
    iget-object v0, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 702
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 703
    iget-object v2, p0, Lcom/google/e/a/f;->a:[Lcom/google/e/a/e;

    aget-object v2, v2, v0

    .line 704
    if-eqz v2, :cond_0

    .line 705
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 702
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 710
    :goto_1
    iget-object v0, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/google/e/a/f;->b:[Lcom/google/e/a/e;

    aget-object v0, v0, v1

    .line 712
    if-eqz v0, :cond_2

    .line 713
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 710
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 717
    :cond_3
    iget v0, p0, Lcom/google/e/a/f;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 718
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 720
    :cond_4
    iget v0, p0, Lcom/google/e/a/f;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 721
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 723
    :cond_5
    return-void
.end method
