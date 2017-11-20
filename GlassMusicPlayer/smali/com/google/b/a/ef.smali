.class public final Lcom/google/b/a/ef;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5782
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5783
    invoke-direct {p0}, Lcom/google/b/a/ef;->a()Lcom/google/b/a/ef;

    .line 5784
    return-void
.end method

.method private a()Lcom/google/b/a/ef;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 5787
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/ef;->a:I

    .line 5788
    iput-wide v1, p0, Lcom/google/b/a/ef;->b:J

    .line 5789
    iput-wide v1, p0, Lcom/google/b/a/ef;->c:J

    .line 5790
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ef;->cachedSize:I

    .line 5791
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ef;
    .locals 2

    .prologue
    .line 5825
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5826
    sparse-switch v0, :sswitch_data_0

    .line 5830
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5831
    :sswitch_0
    return-object p0

    .line 5836
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/ef;->b:J

    .line 5837
    iget v0, p0, Lcom/google/b/a/ef;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ef;->a:I

    goto :goto_0

    .line 5841
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/ef;->c:J

    .line 5842
    iget v0, p0, Lcom/google/b/a/ef;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ef;->a:I

    goto :goto_0

    .line 5826
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 5807
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5808
    iget v1, p0, Lcom/google/b/a/ef;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5809
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/b/a/ef;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5812
    :cond_0
    iget v1, p0, Lcom/google/b/a/ef;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5813
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/b/a/ef;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5816
    :cond_1
    iput v0, p0, Lcom/google/b/a/ef;->cachedSize:I

    .line 5817
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5725
    invoke-direct {p0, p1}, Lcom/google/b/a/ef;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ef;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 5797
    iget v0, p0, Lcom/google/b/a/ef;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5798
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/b/a/ef;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 5800
    :cond_0
    iget v0, p0, Lcom/google/b/a/ef;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5801
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/b/a/ef;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 5803
    :cond_1
    return-void
.end method
