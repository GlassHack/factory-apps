.class public final Lcom/google/b/a/ew;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9749
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9750
    invoke-direct {p0}, Lcom/google/b/a/ew;->a()Lcom/google/b/a/ew;

    .line 9751
    return-void
.end method

.method private a()Lcom/google/b/a/ew;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9754
    iput v1, p0, Lcom/google/b/a/ew;->b:I

    .line 9755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ew;->c:Ljava/lang/String;

    .line 9756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ew;->d:Ljava/lang/String;

    .line 9757
    iput v1, p0, Lcom/google/b/a/ew;->e:I

    .line 9758
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/b/a/ew;->a:[I

    .line 9759
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ew;->f:Ljava/lang/String;

    .line 9760
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ew;->cachedSize:I

    .line 9761
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ew;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 9824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9825
    sparse-switch v0, :sswitch_data_0

    .line 9829
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9830
    :sswitch_0
    return-object p0

    .line 9835
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ew;->c:Ljava/lang/String;

    .line 9836
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ew;->b:I

    goto :goto_0

    .line 9840
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ew;->d:Ljava/lang/String;

    .line 9841
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ew;->b:I

    goto :goto_0

    .line 9845
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ew;->e:I

    .line 9846
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ew;->b:I

    goto :goto_0

    .line 9850
    :sswitch_4
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 9852
    iget-object v0, p0, Lcom/google/b/a/ew;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 9853
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 9854
    if-eqz v0, :cond_1

    .line 9855
    iget-object v3, p0, Lcom/google/b/a/ew;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9857
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 9858
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 9859
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9857
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9852
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ew;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 9862
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 9863
    iput-object v2, p0, Lcom/google/b/a/ew;->a:[I

    goto :goto_0

    .line 9867
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 9868
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 9871
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 9872
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_4

    .line 9873
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 9874
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 9876
    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9877
    iget-object v2, p0, Lcom/google/b/a/ew;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 9878
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 9879
    if-eqz v2, :cond_5

    .line 9880
    iget-object v4, p0, Lcom/google/b/a/ew;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9882
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 9883
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 9882
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 9877
    :cond_6
    iget-object v2, p0, Lcom/google/b/a/ew;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 9885
    :cond_7
    iput-object v0, p0, Lcom/google/b/a/ew;->a:[I

    .line 9886
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 9890
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ew;->f:Ljava/lang/String;

    .line 9891
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ew;->b:I

    goto/16 :goto_0

    .line 9825
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9788
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9789
    iget v2, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 9790
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/ew;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9793
    :cond_0
    iget v2, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 9794
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/b/a/ew;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9797
    :cond_1
    iget v2, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 9798
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/b/a/ew;->e:I

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9801
    :cond_2
    iget-object v2, p0, Lcom/google/b/a/ew;->a:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/b/a/ew;->a:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    .line 9803
    :goto_0
    iget-object v3, p0, Lcom/google/b/a/ew;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 9804
    iget-object v3, p0, Lcom/google/b/a/ew;->a:[I

    aget v3, v3, v1

    .line 9805
    invoke-static {v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 9803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9808
    :cond_3
    add-int/2addr v0, v2

    .line 9809
    iget-object v1, p0, Lcom/google/b/a/ew;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9811
    :cond_4
    iget v1, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 9812
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/ew;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9815
    :cond_5
    iput v0, p0, Lcom/google/b/a/ew;->cachedSize:I

    .line 9816
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9642
    invoke-direct {p0, p1}, Lcom/google/b/a/ew;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ew;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 9767
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9768
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ew;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9770
    :cond_0
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9771
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ew;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9773
    :cond_1
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9774
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/ew;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9776
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ew;->a:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/ew;->a:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 9777
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/ew;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 9778
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ew;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9781
    :cond_3
    iget v0, p0, Lcom/google/b/a/ew;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 9782
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/ew;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9784
    :cond_4
    return-void
.end method
