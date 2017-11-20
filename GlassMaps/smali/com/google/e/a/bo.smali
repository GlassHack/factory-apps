.class public final Lcom/google/e/a/bo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5719
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5720
    invoke-direct {p0}, Lcom/google/e/a/bo;->a()Lcom/google/e/a/bo;

    .line 5721
    return-void
.end method

.method private a()Lcom/google/e/a/bo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5724
    iput v1, p0, Lcom/google/e/a/bo;->b:I

    .line 5725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bo;->c:Ljava/lang/String;

    .line 5726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bo;->d:Ljava/lang/String;

    .line 5727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bo;->e:Ljava/lang/String;

    .line 5728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bo;->f:Ljava/lang/String;

    .line 5729
    iput-boolean v1, p0, Lcom/google/e/a/bo;->g:Z

    .line 5730
    iput-boolean v1, p0, Lcom/google/e/a/bo;->h:Z

    .line 5731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bo;->i:Ljava/lang/String;

    .line 5732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bo;->j:Ljava/lang/String;

    .line 5733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bo;->k:Ljava/lang/String;

    .line 5734
    iput-boolean v1, p0, Lcom/google/e/a/bo;->l:Z

    .line 5735
    iput-boolean v1, p0, Lcom/google/e/a/bo;->m:Z

    .line 5736
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    .line 5737
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bo;->cachedSize:I

    .line 5738
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5857
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5858
    sparse-switch v0, :sswitch_data_0

    .line 5862
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5863
    :sswitch_0
    return-object p0

    .line 5868
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bo;->c:Ljava/lang/String;

    .line 5869
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5873
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bo;->d:Ljava/lang/String;

    .line 5874
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5878
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bo;->e:Ljava/lang/String;

    .line 5879
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5883
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bo;->f:Ljava/lang/String;

    .line 5884
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5888
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bo;->g:Z

    .line 5889
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5893
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bo;->h:Z

    .line 5894
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5898
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bo;->i:Ljava/lang/String;

    .line 5899
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5903
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bo;->j:Ljava/lang/String;

    .line 5904
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto :goto_0

    .line 5908
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bo;->k:Ljava/lang/String;

    .line 5909
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto/16 :goto_0

    .line 5913
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bo;->l:Z

    .line 5914
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto/16 :goto_0

    .line 5918
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/bo;->m:Z

    .line 5919
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/e/a/bo;->b:I

    goto/16 :goto_0

    .line 5923
    :sswitch_c
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 5925
    iget-object v0, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 5926
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 5927
    if-eqz v0, :cond_1

    .line 5928
    iget-object v3, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5930
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5931
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5932
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5930
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5925
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 5935
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5936
    iput-object v2, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    goto/16 :goto_0

    .line 5858
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5789
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5790
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5791
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/bo;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5794
    :cond_0
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5795
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/e/a/bo;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5798
    :cond_1
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5799
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/e/a/bo;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5802
    :cond_2
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 5803
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/e/a/bo;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5806
    :cond_3
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 5807
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/e/a/bo;->g:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5810
    :cond_4
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 5811
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/e/a/bo;->h:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5814
    :cond_5
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 5815
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/e/a/bo;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5818
    :cond_6
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 5819
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/e/a/bo;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5822
    :cond_7
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 5823
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/e/a/bo;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5826
    :cond_8
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 5827
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/e/a/bo;->l:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5830
    :cond_9
    iget v2, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    .line 5831
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/e/a/bo;->m:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5834
    :cond_a
    iget-object v2, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v1

    move v3, v1

    .line 5837
    :goto_0
    iget-object v4, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_c

    .line 5838
    iget-object v4, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 5839
    if-eqz v4, :cond_b

    .line 5840
    add-int/lit8 v3, v3, 0x1

    .line 5841
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 5837
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5845
    :cond_c
    add-int/2addr v0, v2

    .line 5846
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 5848
    :cond_d
    iput v0, p0, Lcom/google/e/a/bo;->cachedSize:I

    .line 5849
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5467
    invoke-direct {p0, p1}, Lcom/google/e/a/bo;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bo;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 5744
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5745
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5747
    :cond_0
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5748
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/bo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5750
    :cond_1
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5751
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/bo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5753
    :cond_2
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5754
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/bo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5756
    :cond_3
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5757
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/e/a/bo;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5759
    :cond_4
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5760
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/e/a/bo;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5762
    :cond_5
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 5763
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/bo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5765
    :cond_6
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 5766
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/e/a/bo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5768
    :cond_7
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 5769
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/e/a/bo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5771
    :cond_8
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 5772
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/e/a/bo;->l:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5774
    :cond_9
    iget v0, p0, Lcom/google/e/a/bo;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 5775
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/e/a/bo;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5777
    :cond_a
    iget-object v0, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 5778
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 5779
    iget-object v1, p0, Lcom/google/e/a/bo;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 5780
    if-eqz v1, :cond_b

    .line 5781
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5778
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5785
    :cond_c
    return-void
.end method
