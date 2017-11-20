.class public final Lcom/google/b/a/dg;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/b/a/dg;


# instance fields
.field public a:[Lcom/google/b/a/dk;

.field public b:[Lcom/google/b/a/dh;

.field public c:[Lcom/google/b/a/dj;

.field public d:[Lcom/google/b/a/di;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1428
    invoke-direct {p0}, Lcom/google/b/a/dg;->c()Lcom/google/b/a/dg;

    .line 1429
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dg;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1566
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1567
    sparse-switch v0, :sswitch_data_0

    .line 1571
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1572
    :sswitch_0
    return-object p0

    .line 1577
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->g:Ljava/lang/String;

    .line 1578
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dg;->f:I

    goto :goto_0

    .line 1582
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->i:Ljava/lang/String;

    .line 1583
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/dg;->f:I

    goto :goto_0

    .line 1587
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->j:Ljava/lang/String;

    .line 1588
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/dg;->f:I

    goto :goto_0

    .line 1592
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1594
    iget-object v0, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    if-nez v0, :cond_2

    move v0, v1

    .line 1595
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dk;

    .line 1597
    if-eqz v0, :cond_1

    .line 1598
    iget-object v3, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1600
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1601
    new-instance v3, Lcom/google/b/a/dk;

    invoke-direct {v3}, Lcom/google/b/a/dk;-><init>()V

    aput-object v3, v2, v0

    .line 1602
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1603
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    array-length v0, v0

    goto :goto_1

    .line 1606
    :cond_3
    new-instance v3, Lcom/google/b/a/dk;

    invoke-direct {v3}, Lcom/google/b/a/dk;-><init>()V

    aput-object v3, v2, v0

    .line 1607
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1608
    iput-object v2, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    goto :goto_0

    .line 1612
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1614
    iget-object v0, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    if-nez v0, :cond_5

    move v0, v1

    .line 1615
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dh;

    .line 1617
    if-eqz v0, :cond_4

    .line 1618
    iget-object v3, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1620
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1621
    new-instance v3, Lcom/google/b/a/dh;

    invoke-direct {v3}, Lcom/google/b/a/dh;-><init>()V

    aput-object v3, v2, v0

    .line 1622
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1623
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1620
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1614
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    array-length v0, v0

    goto :goto_3

    .line 1626
    :cond_6
    new-instance v3, Lcom/google/b/a/dh;

    invoke-direct {v3}, Lcom/google/b/a/dh;-><init>()V

    aput-object v3, v2, v0

    .line 1627
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1628
    iput-object v2, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    goto/16 :goto_0

    .line 1632
    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1634
    iget-object v0, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    if-nez v0, :cond_8

    move v0, v1

    .line 1635
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/dj;

    .line 1637
    if-eqz v0, :cond_7

    .line 1638
    iget-object v3, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1640
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1641
    new-instance v3, Lcom/google/b/a/dj;

    invoke-direct {v3}, Lcom/google/b/a/dj;-><init>()V

    aput-object v3, v2, v0

    .line 1642
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1643
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1640
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1634
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    array-length v0, v0

    goto :goto_5

    .line 1646
    :cond_9
    new-instance v3, Lcom/google/b/a/dj;

    invoke-direct {v3}, Lcom/google/b/a/dj;-><init>()V

    aput-object v3, v2, v0

    .line 1647
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1648
    iput-object v2, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    goto/16 :goto_0

    .line 1652
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/dg;->k:Z

    .line 1653
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/dg;->f:I

    goto/16 :goto_0

    .line 1657
    :sswitch_8
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1659
    iget-object v0, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    if-nez v0, :cond_b

    move v0, v1

    .line 1660
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/di;

    .line 1662
    if-eqz v0, :cond_a

    .line 1663
    iget-object v3, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1665
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 1666
    new-instance v3, Lcom/google/b/a/di;

    invoke-direct {v3}, Lcom/google/b/a/di;-><init>()V

    aput-object v3, v2, v0

    .line 1667
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1668
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1665
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1659
    :cond_b
    iget-object v0, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    array-length v0, v0

    goto :goto_7

    .line 1671
    :cond_c
    new-instance v3, Lcom/google/b/a/di;

    invoke-direct {v3}, Lcom/google/b/a/di;-><init>()V

    aput-object v3, v2, v0

    .line 1672
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1673
    iput-object v2, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    goto/16 :goto_0

    .line 1677
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->h:Ljava/lang/String;

    .line 1678
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/dg;->f:I

    goto/16 :goto_0

    .line 1567
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/dg;
    .locals 2

    .prologue
    .line 1295
    sget-object v0, Lcom/google/b/a/dg;->e:[Lcom/google/b/a/dg;

    if-nez v0, :cond_1

    .line 1296
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1298
    :try_start_0
    sget-object v0, Lcom/google/b/a/dg;->e:[Lcom/google/b/a/dg;

    if-nez v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/dg;

    sput-object v0, Lcom/google/b/a/dg;->e:[Lcom/google/b/a/dg;

    .line 1301
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    :cond_1
    sget-object v0, Lcom/google/b/a/dg;->e:[Lcom/google/b/a/dg;

    return-object v0

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()Lcom/google/b/a/dg;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1432
    iput v1, p0, Lcom/google/b/a/dg;->f:I

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dg;->g:Ljava/lang/String;

    .line 1434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dg;->h:Ljava/lang/String;

    .line 1435
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dg;->i:Ljava/lang/String;

    .line 1436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dg;->j:Ljava/lang/String;

    .line 1437
    invoke-static {}, Lcom/google/b/a/dk;->a()[Lcom/google/b/a/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    .line 1438
    invoke-static {}, Lcom/google/b/a/dh;->a()[Lcom/google/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    .line 1439
    invoke-static {}, Lcom/google/b/a/dj;->a()[Lcom/google/b/a/dj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    .line 1440
    invoke-static {}, Lcom/google/b/a/di;->a()[Lcom/google/b/a/di;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    .line 1441
    iput-boolean v1, p0, Lcom/google/b/a/dg;->k:Z

    .line 1442
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dg;->cachedSize:I

    .line 1443
    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/b/a/dg;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1500
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1501
    iget v2, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1502
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/dg;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1505
    :cond_0
    iget v2, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 1506
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/b/a/dg;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1509
    :cond_1
    iget v2, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 1510
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/b/a/dg;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1513
    :cond_2
    iget-object v2, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 1514
    :goto_0
    iget-object v3, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1515
    iget-object v3, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    aget-object v3, v3, v0

    .line 1516
    if-eqz v3, :cond_3

    .line 1517
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1514
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1522
    :cond_5
    iget-object v2, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 1523
    :goto_1
    iget-object v3, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 1524
    iget-object v3, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    aget-object v3, v3, v0

    .line 1525
    if-eqz v3, :cond_6

    .line 1526
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1523
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    .line 1531
    :cond_8
    iget-object v2, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    .line 1532
    :goto_2
    iget-object v3, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 1533
    iget-object v3, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    aget-object v3, v3, v0

    .line 1534
    if-eqz v3, :cond_9

    .line 1535
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1532
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v2

    .line 1540
    :cond_b
    iget v2, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c

    .line 1541
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/b/a/dg;->k:Z

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1544
    :cond_c
    iget-object v2, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    array-length v2, v2

    if-lez v2, :cond_e

    .line 1545
    :goto_3
    iget-object v2, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 1546
    iget-object v2, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    aget-object v2, v2, v1

    .line 1547
    if-eqz v2, :cond_d

    .line 1548
    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1545
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1553
    :cond_e
    iget v1, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_f

    .line 1554
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/dg;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1557
    :cond_f
    iput v0, p0, Lcom/google/b/a/dg;->cachedSize:I

    .line 1558
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/google/b/a/dg;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1449
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1450
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/b/a/dg;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1452
    :cond_0
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1453
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/b/a/dg;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1455
    :cond_1
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1456
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/b/a/dg;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 1459
    :goto_0
    iget-object v2, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1460
    iget-object v2, p0, Lcom/google/b/a/dg;->a:[Lcom/google/b/a/dk;

    aget-object v2, v2, v0

    .line 1461
    if-eqz v2, :cond_3

    .line 1462
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1459
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 1467
    :goto_1
    iget-object v2, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1468
    iget-object v2, p0, Lcom/google/b/a/dg;->b:[Lcom/google/b/a/dh;

    aget-object v2, v2, v0

    .line 1469
    if-eqz v2, :cond_5

    .line 1470
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1467
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1474
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 1475
    :goto_2
    iget-object v2, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 1476
    iget-object v2, p0, Lcom/google/b/a/dg;->c:[Lcom/google/b/a/dj;

    aget-object v2, v2, v0

    .line 1477
    if-eqz v2, :cond_7

    .line 1478
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1475
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1482
    :cond_8
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 1483
    const/4 v0, 0x7

    iget-boolean v2, p0, Lcom/google/b/a/dg;->k:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1485
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 1486
    :goto_3
    iget-object v0, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 1487
    iget-object v0, p0, Lcom/google/b/a/dg;->d:[Lcom/google/b/a/di;

    aget-object v0, v0, v1

    .line 1488
    if-eqz v0, :cond_a

    .line 1489
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1486
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1493
    :cond_b
    iget v0, p0, Lcom/google/b/a/dg;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 1494
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/dg;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1496
    :cond_c
    return-void
.end method
