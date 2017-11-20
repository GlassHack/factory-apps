.class public final Lcom/google/b/a/ae;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/dm;

.field public b:Lcom/google/b/a/hg;

.field public c:Lcom/google/b/a/hg;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4696
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4697
    invoke-direct {p0}, Lcom/google/b/a/ae;->a()Lcom/google/b/a/ae;

    .line 4698
    return-void
.end method

.method private a()Lcom/google/b/a/ae;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4701
    iput v1, p0, Lcom/google/b/a/ae;->d:I

    .line 4702
    invoke-static {}, Lcom/google/b/a/dm;->a()[Lcom/google/b/a/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    .line 4703
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ae;->e:Ljava/lang/String;

    .line 4704
    iput-object v2, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    .line 4705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ae;->f:Ljava/lang/String;

    .line 4706
    iput-object v2, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    .line 4707
    iput v1, p0, Lcom/google/b/a/ae;->g:I

    .line 4708
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ae;->cachedSize:I

    .line 4709
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ae;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4781
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4782
    sparse-switch v0, :sswitch_data_0

    .line 4786
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4787
    :sswitch_0
    return-object p0

    .line 4792
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ae;->e:Ljava/lang/String;

    .line 4793
    iget v0, p0, Lcom/google/b/a/ae;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ae;->d:I

    goto :goto_0

    .line 4797
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ae;->f:Ljava/lang/String;

    .line 4798
    iget v0, p0, Lcom/google/b/a/ae;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ae;->d:I

    goto :goto_0

    .line 4802
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    if-nez v0, :cond_1

    .line 4803
    new-instance v0, Lcom/google/b/a/hg;

    invoke-direct {v0}, Lcom/google/b/a/hg;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    .line 4805
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4809
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    if-nez v0, :cond_2

    .line 4810
    new-instance v0, Lcom/google/b/a/hg;

    invoke-direct {v0}, Lcom/google/b/a/hg;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    .line 4812
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4816
    :sswitch_5
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4818
    iget-object v0, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    if-nez v0, :cond_4

    move v0, v1

    .line 4819
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dm;

    .line 4821
    if-eqz v0, :cond_3

    .line 4822
    iget-object v3, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4824
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 4825
    new-instance v3, Lcom/google/b/a/dm;

    invoke-direct {v3}, Lcom/google/b/a/dm;-><init>()V

    aput-object v3, v2, v0

    .line 4826
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4827
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4824
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4818
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    array-length v0, v0

    goto :goto_1

    .line 4830
    :cond_5
    new-instance v3, Lcom/google/b/a/dm;

    invoke-direct {v3}, Lcom/google/b/a/dm;-><init>()V

    aput-object v3, v2, v0

    .line 4831
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4832
    iput-object v2, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    goto/16 :goto_0

    .line 4836
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ae;->g:I

    .line 4837
    iget v0, p0, Lcom/google/b/a/ae;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ae;->d:I

    goto/16 :goto_0

    .line 4782
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2a -> :sswitch_2
        0x32 -> :sswitch_3
        0x3a -> :sswitch_4
        0x42 -> :sswitch_5
        0x48 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 4742
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4743
    iget v1, p0, Lcom/google/b/a/ae;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4744
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ae;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4747
    :cond_0
    iget v1, p0, Lcom/google/b/a/ae;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4748
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/ae;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4751
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    if-eqz v1, :cond_2

    .line 4752
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4755
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    if-eqz v1, :cond_3

    .line 4756
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4759
    :cond_3
    iget-object v1, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 4760
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 4761
    iget-object v2, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    aget-object v2, v2, v0

    .line 4762
    if-eqz v2, :cond_4

    .line 4763
    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4760
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 4768
    :cond_6
    iget v1, p0, Lcom/google/b/a/ae;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 4769
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/b/a/ae;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4772
    :cond_7
    iput v0, p0, Lcom/google/b/a/ae;->cachedSize:I

    .line 4773
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4599
    invoke-direct {p0, p1}, Lcom/google/b/a/ae;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 4715
    iget v0, p0, Lcom/google/b/a/ae;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4716
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ae;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4718
    :cond_0
    iget v0, p0, Lcom/google/b/a/ae;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4719
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/ae;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4721
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    if-eqz v0, :cond_2

    .line 4722
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/ae;->b:Lcom/google/b/a/hg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4724
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    if-eqz v0, :cond_3

    .line 4725
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/ae;->c:Lcom/google/b/a/hg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4727
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 4728
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 4729
    iget-object v1, p0, Lcom/google/b/a/ae;->a:[Lcom/google/b/a/dm;

    aget-object v1, v1, v0

    .line 4730
    if-eqz v1, :cond_4

    .line 4731
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4728
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4735
    :cond_5
    iget v0, p0, Lcom/google/b/a/ae;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 4736
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/b/a/ae;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4738
    :cond_6
    return-void
.end method
