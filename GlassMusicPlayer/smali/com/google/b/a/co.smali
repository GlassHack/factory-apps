.class public final Lcom/google/b/a/co;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile j:[Lcom/google/b/a/co;


# instance fields
.field public a:Lcom/google/b/a/cq;

.field public b:Lcom/google/b/a/cq;

.field public c:Lcom/google/b/a/cp;

.field public d:Lcom/google/b/a/cv;

.field public e:Lcom/google/b/a/cw;

.field public f:Lcom/google/b/a/fl;

.field public g:Lcom/google/b/a/cz;

.field public h:Lcom/google/b/a/hc;

.field public i:Lcom/google/b/a/cx;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1567
    invoke-direct {p0}, Lcom/google/b/a/co;->b()Lcom/google/b/a/co;

    .line 1568
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/co;
    .locals 1

    .prologue
    .line 1729
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1730
    sparse-switch v0, :sswitch_data_0

    .line 1734
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    :sswitch_0
    return-object p0

    .line 1740
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/co;->l:Ljava/lang/String;

    .line 1741
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto :goto_0

    .line 1745
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    if-nez v0, :cond_1

    .line 1746
    new-instance v0, Lcom/google/b/a/cq;

    invoke-direct {v0}, Lcom/google/b/a/cq;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    .line 1748
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1752
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    if-nez v0, :cond_2

    .line 1753
    new-instance v0, Lcom/google/b/a/cq;

    invoke-direct {v0}, Lcom/google/b/a/cq;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    .line 1755
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1759
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/co;->m:Z

    .line 1760
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto :goto_0

    .line 1764
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/co;->o:I

    .line 1765
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto :goto_0

    .line 1769
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    if-nez v0, :cond_3

    .line 1770
    new-instance v0, Lcom/google/b/a/cp;

    invoke-direct {v0}, Lcom/google/b/a/cp;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    .line 1772
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1776
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/co;->p:I

    .line 1777
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto :goto_0

    .line 1781
    :sswitch_8
    iget-object v0, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    if-nez v0, :cond_4

    .line 1782
    new-instance v0, Lcom/google/b/a/cv;

    invoke-direct {v0}, Lcom/google/b/a/cv;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    .line 1784
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1788
    :sswitch_9
    iget-object v0, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    if-nez v0, :cond_5

    .line 1789
    new-instance v0, Lcom/google/b/a/cw;

    invoke-direct {v0}, Lcom/google/b/a/cw;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    .line 1791
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1795
    :sswitch_a
    iget-object v0, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    if-nez v0, :cond_6

    .line 1796
    new-instance v0, Lcom/google/b/a/fl;

    invoke-direct {v0}, Lcom/google/b/a/fl;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    .line 1798
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1802
    :sswitch_b
    iget-object v0, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    if-nez v0, :cond_7

    .line 1803
    new-instance v0, Lcom/google/b/a/cz;

    invoke-direct {v0}, Lcom/google/b/a/cz;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    .line 1805
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1809
    :sswitch_c
    iget-object v0, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    if-nez v0, :cond_8

    .line 1810
    new-instance v0, Lcom/google/b/a/hc;

    invoke-direct {v0}, Lcom/google/b/a/hc;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    .line 1812
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1816
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/co;->n:I

    .line 1817
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto/16 :goto_0

    .line 1821
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/co;->q:Ljava/lang/String;

    .line 1822
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto/16 :goto_0

    .line 1826
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/co;->r:Ljava/lang/String;

    .line 1827
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto/16 :goto_0

    .line 1831
    :sswitch_10
    iget-object v0, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    if-nez v0, :cond_9

    .line 1832
    new-instance v0, Lcom/google/b/a/cx;

    invoke-direct {v0}, Lcom/google/b/a/cx;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    .line 1834
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1838
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/co;->s:Ljava/lang/String;

    .line 1839
    iget v0, p0, Lcom/google/b/a/co;->k:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/co;->k:I

    goto/16 :goto_0

    .line 1730
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/co;
    .locals 2

    .prologue
    .line 1362
    sget-object v0, Lcom/google/b/a/co;->j:[Lcom/google/b/a/co;

    if-nez v0, :cond_1

    .line 1363
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1365
    :try_start_0
    sget-object v0, Lcom/google/b/a/co;->j:[Lcom/google/b/a/co;

    if-nez v0, :cond_0

    .line 1366
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/co;

    sput-object v0, Lcom/google/b/a/co;->j:[Lcom/google/b/a/co;

    .line 1368
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    :cond_1
    sget-object v0, Lcom/google/b/a/co;->j:[Lcom/google/b/a/co;

    return-object v0

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/co;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1571
    iput v2, p0, Lcom/google/b/a/co;->k:I

    .line 1572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/co;->l:Ljava/lang/String;

    .line 1573
    iput-object v1, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    .line 1574
    iput-object v1, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    .line 1575
    iput-boolean v2, p0, Lcom/google/b/a/co;->m:Z

    .line 1576
    iput v2, p0, Lcom/google/b/a/co;->n:I

    .line 1577
    iput v2, p0, Lcom/google/b/a/co;->o:I

    .line 1578
    iput-object v1, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    .line 1579
    iput v2, p0, Lcom/google/b/a/co;->p:I

    .line 1580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/co;->q:Ljava/lang/String;

    .line 1581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/co;->r:Ljava/lang/String;

    .line 1582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/co;->s:Ljava/lang/String;

    .line 1583
    iput-object v1, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    .line 1584
    iput-object v1, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    .line 1585
    iput-object v1, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    .line 1586
    iput-object v1, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    .line 1587
    iput-object v1, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    .line 1588
    iput-object v1, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    .line 1589
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/co;->cachedSize:I

    .line 1590
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1651
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1652
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1653
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/co;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1656
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    if-eqz v1, :cond_1

    .line 1657
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1660
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    if-eqz v1, :cond_2

    .line 1661
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1664
    :cond_2
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 1665
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/b/a/co;->m:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1668
    :cond_3
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 1669
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/co;->o:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1672
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    if-eqz v1, :cond_5

    .line 1673
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1676
    :cond_5
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 1677
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/b/a/co;->p:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1680
    :cond_6
    iget-object v1, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    if-eqz v1, :cond_7

    .line 1681
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1684
    :cond_7
    iget-object v1, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    if-eqz v1, :cond_8

    .line 1685
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1688
    :cond_8
    iget-object v1, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    if-eqz v1, :cond_9

    .line 1689
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1692
    :cond_9
    iget-object v1, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    if-eqz v1, :cond_a

    .line 1693
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1696
    :cond_a
    iget-object v1, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    if-eqz v1, :cond_b

    .line 1697
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1700
    :cond_b
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    .line 1701
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/b/a/co;->n:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1704
    :cond_c
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_d

    .line 1705
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/b/a/co;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1708
    :cond_d
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_e

    .line 1709
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/b/a/co;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1712
    :cond_e
    iget-object v1, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    if-eqz v1, :cond_f

    .line 1713
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1716
    :cond_f
    iget v1, p0, Lcom/google/b/a/co;->k:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_10

    .line 1717
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/b/a/co;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1720
    :cond_10
    iput v0, p0, Lcom/google/b/a/co;->cachedSize:I

    .line 1721
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Lcom/google/b/a/co;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/co;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1596
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1597
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/co;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    if-eqz v0, :cond_1

    .line 1600
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/co;->a:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1602
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    if-eqz v0, :cond_2

    .line 1603
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/co;->b:Lcom/google/b/a/cq;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1605
    :cond_2
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1606
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/b/a/co;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1608
    :cond_3
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 1609
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/co;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1611
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    if-eqz v0, :cond_5

    .line 1612
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/co;->c:Lcom/google/b/a/cp;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1614
    :cond_5
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 1615
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/b/a/co;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1617
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    if-eqz v0, :cond_7

    .line 1618
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/co;->d:Lcom/google/b/a/cv;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1620
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    if-eqz v0, :cond_8

    .line 1621
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/co;->e:Lcom/google/b/a/cw;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1623
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    if-eqz v0, :cond_9

    .line 1624
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/b/a/co;->f:Lcom/google/b/a/fl;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1626
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    if-eqz v0, :cond_a

    .line 1627
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/b/a/co;->g:Lcom/google/b/a/cz;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1629
    :cond_a
    iget-object v0, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    if-eqz v0, :cond_b

    .line 1630
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/b/a/co;->h:Lcom/google/b/a/hc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1632
    :cond_b
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 1633
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/b/a/co;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1635
    :cond_c
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    .line 1636
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/b/a/co;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1638
    :cond_d
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 1639
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/b/a/co;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1641
    :cond_e
    iget-object v0, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    if-eqz v0, :cond_f

    .line 1642
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/b/a/co;->i:Lcom/google/b/a/cx;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1644
    :cond_f
    iget v0, p0, Lcom/google/b/a/co;->k:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_10

    .line 1645
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/b/a/co;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1647
    :cond_10
    return-void
.end method
