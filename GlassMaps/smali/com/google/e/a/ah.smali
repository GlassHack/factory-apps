.class public final Lcom/google/e/a/ah;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/cd;

.field public b:Lcom/google/e/a/cd;

.field public c:[Lcom/google/e/a/ai;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10784
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10785
    invoke-direct {p0}, Lcom/google/e/a/ah;->a()Lcom/google/e/a/ah;

    .line 10786
    return-void
.end method

.method private a()Lcom/google/e/a/ah;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10789
    iput-object v0, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    .line 10790
    iput-object v0, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    .line 10791
    invoke-static {}, Lcom/google/e/a/ai;->a()[Lcom/google/e/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    .line 10792
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ah;->cachedSize:I

    .line 10793
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ah;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10844
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10845
    sparse-switch v0, :sswitch_data_0

    .line 10849
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10850
    :sswitch_0
    return-object p0

    .line 10855
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    if-nez v0, :cond_1

    .line 10856
    new-instance v0, Lcom/google/e/a/cd;

    invoke-direct {v0}, Lcom/google/e/a/cd;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    .line 10858
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10862
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    if-nez v0, :cond_2

    .line 10863
    new-instance v0, Lcom/google/e/a/cd;

    invoke-direct {v0}, Lcom/google/e/a/cd;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    .line 10865
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10869
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10871
    iget-object v0, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    if-nez v0, :cond_4

    move v0, v1

    .line 10872
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ai;

    .line 10874
    if-eqz v0, :cond_3

    .line 10875
    iget-object v3, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10877
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 10878
    new-instance v3, Lcom/google/e/a/ai;

    invoke-direct {v3}, Lcom/google/e/a/ai;-><init>()V

    aput-object v3, v2, v0

    .line 10879
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10880
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10877
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10871
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    array-length v0, v0

    goto :goto_1

    .line 10883
    :cond_5
    new-instance v3, Lcom/google/e/a/ai;

    invoke-direct {v3}, Lcom/google/e/a/ai;-><init>()V

    aput-object v3, v2, v0

    .line 10884
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10885
    iput-object v2, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    goto :goto_0

    .line 10845
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 10817
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10818
    iget-object v1, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    if-eqz v1, :cond_0

    .line 10819
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10822
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    if-eqz v1, :cond_1

    .line 10823
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10826
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 10827
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 10828
    iget-object v2, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    aget-object v2, v2, v0

    .line 10829
    if-eqz v2, :cond_2

    .line 10830
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10827
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 10835
    :cond_4
    iput v0, p0, Lcom/google/e/a/ah;->cachedSize:I

    .line 10836
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10109
    invoke-direct {p0, p1}, Lcom/google/e/a/ah;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 10799
    iget-object v0, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    if-eqz v0, :cond_0

    .line 10800
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/ah;->a:Lcom/google/e/a/cd;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10802
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    if-eqz v0, :cond_1

    .line 10803
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/ah;->b:Lcom/google/e/a/cd;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10805
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 10806
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 10807
    iget-object v1, p0, Lcom/google/e/a/ah;->c:[Lcom/google/e/a/ai;

    aget-object v1, v1, v0

    .line 10808
    if-eqz v1, :cond_2

    .line 10809
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10806
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10813
    :cond_3
    return-void
.end method
