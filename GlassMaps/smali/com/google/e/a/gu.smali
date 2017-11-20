.class public final Lcom/google/e/a/gu;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile g:[Lcom/google/e/a/gu;


# instance fields
.field public a:Lcom/google/e/a/i;

.field public b:Lcom/google/e/a/j;

.field public c:Lcom/google/e/a/h;

.field public d:Lcom/google/e/a/g;

.field public e:Lcom/google/e/a/f;

.field public f:Lcom/google/e/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1539
    invoke-direct {p0}, Lcom/google/e/a/gu;->b()Lcom/google/e/a/gu;

    .line 1540
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gu;
    .locals 1

    .prologue
    .line 1612
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1613
    sparse-switch v0, :sswitch_data_0

    .line 1617
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    :sswitch_0
    return-object p0

    .line 1623
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    if-nez v0, :cond_1

    .line 1624
    new-instance v0, Lcom/google/e/a/i;

    invoke-direct {v0}, Lcom/google/e/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1630
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    if-nez v0, :cond_2

    .line 1631
    new-instance v0, Lcom/google/e/a/j;

    invoke-direct {v0}, Lcom/google/e/a/j;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    .line 1633
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1637
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    if-nez v0, :cond_3

    .line 1638
    new-instance v0, Lcom/google/e/a/h;

    invoke-direct {v0}, Lcom/google/e/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    .line 1640
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1644
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    if-nez v0, :cond_4

    .line 1645
    new-instance v0, Lcom/google/e/a/g;

    invoke-direct {v0}, Lcom/google/e/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    .line 1647
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1651
    :sswitch_5
    iget-object v0, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    if-nez v0, :cond_5

    .line 1652
    new-instance v0, Lcom/google/e/a/f;

    invoke-direct {v0}, Lcom/google/e/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    .line 1654
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1658
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    if-nez v0, :cond_6

    .line 1659
    new-instance v0, Lcom/google/e/a/k;

    invoke-direct {v0}, Lcom/google/e/a/k;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    .line 1661
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1613
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/gu;
    .locals 2

    .prologue
    .line 1509
    sget-object v0, Lcom/google/e/a/gu;->g:[Lcom/google/e/a/gu;

    if-nez v0, :cond_1

    .line 1510
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1512
    :try_start_0
    sget-object v0, Lcom/google/e/a/gu;->g:[Lcom/google/e/a/gu;

    if-nez v0, :cond_0

    .line 1513
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/gu;

    sput-object v0, Lcom/google/e/a/gu;->g:[Lcom/google/e/a/gu;

    .line 1515
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    :cond_1
    sget-object v0, Lcom/google/e/a/gu;->g:[Lcom/google/e/a/gu;

    return-object v0

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/gu;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1543
    iput-object v0, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    .line 1544
    iput-object v0, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    .line 1545
    iput-object v0, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    .line 1546
    iput-object v0, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    .line 1547
    iput-object v0, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    .line 1548
    iput-object v0, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    .line 1549
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/gu;->cachedSize:I

    .line 1550
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1578
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1579
    iget-object v1, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    if-eqz v1, :cond_0

    .line 1580
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    if-eqz v1, :cond_1

    .line 1584
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1587
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    if-eqz v1, :cond_2

    .line 1588
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1591
    :cond_2
    iget-object v1, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    if-eqz v1, :cond_3

    .line 1592
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1595
    :cond_3
    iget-object v1, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    if-eqz v1, :cond_4

    .line 1596
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1599
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    if-eqz v1, :cond_5

    .line 1600
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    :cond_5
    iput v0, p0, Lcom/google/e/a/gu;->cachedSize:I

    .line 1604
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1503
    invoke-direct {p0, p1}, Lcom/google/e/a/gu;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gu;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    if-eqz v0, :cond_0

    .line 1557
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/gu;->a:Lcom/google/e/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    if-eqz v0, :cond_1

    .line 1560
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/gu;->b:Lcom/google/e/a/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    if-eqz v0, :cond_2

    .line 1563
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/gu;->c:Lcom/google/e/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1565
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    if-eqz v0, :cond_3

    .line 1566
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/gu;->d:Lcom/google/e/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1568
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    if-eqz v0, :cond_4

    .line 1569
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/gu;->e:Lcom/google/e/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1571
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    if-eqz v0, :cond_5

    .line 1572
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/gu;->f:Lcom/google/e/a/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1574
    :cond_5
    return-void
.end method
