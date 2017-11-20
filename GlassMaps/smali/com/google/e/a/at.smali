.class public final Lcom/google/e/a/at;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/ar;

.field public b:[Lcom/google/e/a/an;

.field public c:Lcom/google/e/a/an;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8745
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8746
    invoke-direct {p0}, Lcom/google/e/a/at;->a()Lcom/google/e/a/at;

    .line 8747
    return-void
.end method

.method private a()Lcom/google/e/a/at;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8750
    iput v1, p0, Lcom/google/e/a/at;->d:I

    .line 8751
    iput-object v2, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    .line 8752
    invoke-static {}, Lcom/google/e/a/an;->a()[Lcom/google/e/a/an;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    .line 8753
    iput-object v2, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    .line 8754
    iput v1, p0, Lcom/google/e/a/at;->e:I

    .line 8755
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/at;->cachedSize:I

    .line 8756
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/at;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8814
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8815
    sparse-switch v0, :sswitch_data_0

    .line 8819
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8820
    :sswitch_0
    return-object p0

    .line 8825
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    if-nez v0, :cond_1

    .line 8826
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    .line 8828
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8832
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/at;->e:I

    .line 8833
    iget v0, p0, Lcom/google/e/a/at;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/at;->d:I

    goto :goto_0

    .line 8837
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 8839
    iget-object v0, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    if-nez v0, :cond_3

    move v0, v1

    .line 8840
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/an;

    .line 8842
    if-eqz v0, :cond_2

    .line 8843
    iget-object v3, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8845
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 8846
    new-instance v3, Lcom/google/e/a/an;

    invoke-direct {v3}, Lcom/google/e/a/an;-><init>()V

    aput-object v3, v2, v0

    .line 8847
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8848
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8845
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8839
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    array-length v0, v0

    goto :goto_1

    .line 8851
    :cond_4
    new-instance v3, Lcom/google/e/a/an;

    invoke-direct {v3}, Lcom/google/e/a/an;-><init>()V

    aput-object v3, v2, v0

    .line 8852
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8853
    iput-object v2, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    goto :goto_0

    .line 8857
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    if-nez v0, :cond_5

    .line 8858
    new-instance v0, Lcom/google/e/a/an;

    invoke-direct {v0}, Lcom/google/e/a/an;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    .line 8860
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8815
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 8783
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8784
    iget-object v1, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    if-eqz v1, :cond_0

    .line 8785
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8788
    :cond_0
    iget v1, p0, Lcom/google/e/a/at;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 8789
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/at;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8792
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 8793
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 8794
    iget-object v2, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    aget-object v2, v2, v0

    .line 8795
    if-eqz v2, :cond_2

    .line 8796
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8793
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 8801
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    if-eqz v1, :cond_5

    .line 8802
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8805
    :cond_5
    iput v0, p0, Lcom/google/e/a/at;->cachedSize:I

    .line 8806
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8693
    invoke-direct {p0, p1}, Lcom/google/e/a/at;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 8762
    iget-object v0, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    if-eqz v0, :cond_0

    .line 8763
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/at;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8765
    :cond_0
    iget v0, p0, Lcom/google/e/a/at;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 8766
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/at;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8768
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 8769
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 8770
    iget-object v1, p0, Lcom/google/e/a/at;->b:[Lcom/google/e/a/an;

    aget-object v1, v1, v0

    .line 8771
    if-eqz v1, :cond_2

    .line 8772
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8769
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8776
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    if-eqz v0, :cond_4

    .line 8777
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/at;->c:Lcom/google/e/a/an;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8779
    :cond_4
    return-void
.end method
