.class public final Lcom/google/b/a/go;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/ed;

.field public b:Lcom/google/b/a/fv;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1475
    invoke-direct {p0}, Lcom/google/b/a/go;->a()Lcom/google/b/a/go;

    .line 1476
    return-void
.end method

.method private a()Lcom/google/b/a/go;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/go;->c:I

    .line 1480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/go;->d:Ljava/lang/String;

    .line 1481
    iput-object v1, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    .line 1482
    iput-object v1, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    .line 1483
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/go;->cachedSize:I

    .line 1484
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/go;
    .locals 1

    .prologue
    .line 1525
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1526
    sparse-switch v0, :sswitch_data_0

    .line 1530
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    :sswitch_0
    return-object p0

    .line 1536
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/go;->d:Ljava/lang/String;

    .line 1537
    iget v0, p0, Lcom/google/b/a/go;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/go;->c:I

    goto :goto_0

    .line 1541
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    if-nez v0, :cond_1

    .line 1542
    new-instance v0, Lcom/google/b/a/ed;

    invoke-direct {v0}, Lcom/google/b/a/ed;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1548
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    if-nez v0, :cond_2

    .line 1549
    new-instance v0, Lcom/google/b/a/fv;

    invoke-direct {v0}, Lcom/google/b/a/fv;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    .line 1551
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1526
    nop

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
    .locals 3

    .prologue
    .line 1503
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1504
    iget v1, p0, Lcom/google/b/a/go;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1505
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/go;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    if-eqz v1, :cond_1

    .line 1509
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1512
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    if-eqz v1, :cond_2

    .line 1513
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1516
    :cond_2
    iput v0, p0, Lcom/google/b/a/go;->cachedSize:I

    .line 1517
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1427
    invoke-direct {p0, p1}, Lcom/google/b/a/go;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/go;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1490
    iget v0, p0, Lcom/google/b/a/go;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1491
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/go;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    if-eqz v0, :cond_1

    .line 1494
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/go;->a:Lcom/google/b/a/ed;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    if-eqz v0, :cond_2

    .line 1497
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/go;->b:Lcom/google/b/a/fv;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1499
    :cond_2
    return-void
.end method
