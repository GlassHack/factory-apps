.class public final Lcom/google/b/a/cd;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9691
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9692
    invoke-direct {p0}, Lcom/google/b/a/cd;->a()Lcom/google/b/a/cd;

    .line 9693
    return-void
.end method

.method private a()Lcom/google/b/a/cd;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9696
    iput v1, p0, Lcom/google/b/a/cd;->a:I

    .line 9697
    const/16 v0, 0x36

    iput v0, p0, Lcom/google/b/a/cd;->b:I

    .line 9698
    iput v1, p0, Lcom/google/b/a/cd;->c:I

    .line 9699
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cd;->d:Ljava/lang/String;

    .line 9700
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/cd;->cachedSize:I

    .line 9701
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cd;
    .locals 1

    .prologue
    .line 9742
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9743
    sparse-switch v0, :sswitch_data_0

    .line 9747
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9748
    :sswitch_0
    return-object p0

    .line 9753
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/cd;->b:I

    .line 9754
    iget v0, p0, Lcom/google/b/a/cd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/cd;->a:I

    goto :goto_0

    .line 9758
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/cd;->c:I

    .line 9759
    iget v0, p0, Lcom/google/b/a/cd;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/cd;->a:I

    goto :goto_0

    .line 9763
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cd;->d:Ljava/lang/String;

    .line 9764
    iget v0, p0, Lcom/google/b/a/cd;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/cd;->a:I

    goto :goto_0

    .line 9743
    nop

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
    .locals 3

    .prologue
    .line 9720
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9721
    iget v1, p0, Lcom/google/b/a/cd;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9722
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/cd;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9725
    :cond_0
    iget v1, p0, Lcom/google/b/a/cd;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9726
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/cd;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9729
    :cond_1
    iget v1, p0, Lcom/google/b/a/cd;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9730
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/cd;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9733
    :cond_2
    iput v0, p0, Lcom/google/b/a/cd;->cachedSize:I

    .line 9734
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9612
    invoke-direct {p0, p1}, Lcom/google/b/a/cd;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 9707
    iget v0, p0, Lcom/google/b/a/cd;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9708
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/cd;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9710
    :cond_0
    iget v0, p0, Lcom/google/b/a/cd;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9711
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/cd;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9713
    :cond_1
    iget v0, p0, Lcom/google/b/a/cd;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9714
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/cd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9716
    :cond_2
    return-void
.end method
