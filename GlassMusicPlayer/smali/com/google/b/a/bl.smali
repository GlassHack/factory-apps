.class public final Lcom/google/b/a/bl;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6501
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6502
    invoke-direct {p0}, Lcom/google/b/a/bl;->a()Lcom/google/b/a/bl;

    .line 6503
    return-void
.end method

.method private a()Lcom/google/b/a/bl;
    .locals 1

    .prologue
    .line 6506
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/bl;->a:I

    .line 6507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bl;->b:Ljava/lang/String;

    .line 6508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bl;->c:Ljava/lang/String;

    .line 6509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bl;->d:Ljava/lang/String;

    .line 6510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bl;->e:Ljava/lang/String;

    .line 6511
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bl;->cachedSize:I

    .line 6512
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bl;
    .locals 1

    .prologue
    .line 6560
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6561
    sparse-switch v0, :sswitch_data_0

    .line 6565
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6566
    :sswitch_0
    return-object p0

    .line 6571
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bl;->b:Ljava/lang/String;

    .line 6572
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bl;->a:I

    goto :goto_0

    .line 6576
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bl;->c:Ljava/lang/String;

    .line 6577
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bl;->a:I

    goto :goto_0

    .line 6581
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bl;->d:Ljava/lang/String;

    .line 6582
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/bl;->a:I

    goto :goto_0

    .line 6586
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bl;->e:Ljava/lang/String;

    .line 6587
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/bl;->a:I

    goto :goto_0

    .line 6561
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 6534
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6535
    iget v1, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6536
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/bl;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6539
    :cond_0
    iget v1, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6540
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/bl;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6543
    :cond_1
    iget v1, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6544
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/bl;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6547
    :cond_2
    iget v1, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6548
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/bl;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6551
    :cond_3
    iput v0, p0, Lcom/google/b/a/bl;->cachedSize:I

    .line 6552
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6394
    invoke-direct {p0, p1}, Lcom/google/b/a/bl;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 6518
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6519
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/bl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6521
    :cond_0
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6522
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/bl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6524
    :cond_1
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6525
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/bl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6527
    :cond_2
    iget v0, p0, Lcom/google/b/a/bl;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6528
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/bl;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6530
    :cond_3
    return-void
.end method
