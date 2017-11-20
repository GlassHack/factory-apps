.class public final Lcom/google/e/a/ac;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11613
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11614
    invoke-direct {p0}, Lcom/google/e/a/ac;->a()Lcom/google/e/a/ac;

    .line 11615
    return-void
.end method

.method private a()Lcom/google/e/a/ac;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11618
    iput v1, p0, Lcom/google/e/a/ac;->a:I

    .line 11619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ac;->b:Ljava/lang/String;

    .line 11620
    iput v1, p0, Lcom/google/e/a/ac;->c:I

    .line 11621
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ac;->cachedSize:I

    .line 11622
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ac;
    .locals 1

    .prologue
    .line 11656
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11657
    sparse-switch v0, :sswitch_data_0

    .line 11661
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11662
    :sswitch_0
    return-object p0

    .line 11667
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ac;->b:Ljava/lang/String;

    .line 11668
    iget v0, p0, Lcom/google/e/a/ac;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ac;->a:I

    goto :goto_0

    .line 11672
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/ac;->c:I

    .line 11673
    iget v0, p0, Lcom/google/e/a/ac;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ac;->a:I

    goto :goto_0

    .line 11657
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 11638
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11639
    iget v1, p0, Lcom/google/e/a/ac;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11640
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/ac;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11643
    :cond_0
    iget v1, p0, Lcom/google/e/a/ac;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11644
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/ac;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11647
    :cond_1
    iput v0, p0, Lcom/google/e/a/ac;->cachedSize:I

    .line 11648
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11553
    invoke-direct {p0, p1}, Lcom/google/e/a/ac;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 11628
    iget v0, p0, Lcom/google/e/a/ac;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11629
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/ac;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11631
    :cond_0
    iget v0, p0, Lcom/google/e/a/ac;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11632
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/ac;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11634
    :cond_1
    return-void
.end method
