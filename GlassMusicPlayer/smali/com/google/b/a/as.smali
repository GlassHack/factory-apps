.class public final Lcom/google/b/a/as;
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
    .line 1605
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1606
    invoke-direct {p0}, Lcom/google/b/a/as;->a()Lcom/google/b/a/as;

    .line 1607
    return-void
.end method

.method private a()Lcom/google/b/a/as;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1610
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/as;->a:I

    .line 1611
    iput-wide v1, p0, Lcom/google/b/a/as;->b:J

    .line 1612
    iput-wide v1, p0, Lcom/google/b/a/as;->c:J

    .line 1613
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/as;->cachedSize:I

    .line 1614
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/as;
    .locals 2

    .prologue
    .line 1648
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1649
    sparse-switch v0, :sswitch_data_0

    .line 1653
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    :sswitch_0
    return-object p0

    .line 1659
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/as;->b:J

    .line 1660
    iget v0, p0, Lcom/google/b/a/as;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/as;->a:I

    goto :goto_0

    .line 1664
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/as;->c:J

    .line 1665
    iget v0, p0, Lcom/google/b/a/as;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/as;->a:I

    goto :goto_0

    .line 1649
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
    .line 1630
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1631
    iget v1, p0, Lcom/google/b/a/as;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1632
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/b/a/as;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1635
    :cond_0
    iget v1, p0, Lcom/google/b/a/as;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1636
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/b/a/as;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1639
    :cond_1
    iput v0, p0, Lcom/google/b/a/as;->cachedSize:I

    .line 1640
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1548
    invoke-direct {p0, p1}, Lcom/google/b/a/as;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1620
    iget v0, p0, Lcom/google/b/a/as;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1621
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/b/a/as;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 1623
    :cond_0
    iget v0, p0, Lcom/google/b/a/as;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1624
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/b/a/as;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 1626
    :cond_1
    return-void
.end method
