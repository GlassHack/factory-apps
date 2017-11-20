.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;


# instance fields
.field private bitField0_:I

.field public blacklistMccMnc:[I

.field private connectionTimeoutMsec_:I

.field private header_:Ljava/lang/String;

.field private host_:Ljava/lang/String;

.field private inBufferSize_:I

.field private openConnectionTimeoutMsec_:I

.field private outBufferSize_:I

.field private port_:I

.field private useSsl_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1678
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1679
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1680
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 2

    .prologue
    .line 1504
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-nez v0, :cond_1

    .line 1505
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1507
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    if-nez v0, :cond_0

    .line 1508
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1510
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    return-object v0

    .line 1510
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1887
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1881
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1683
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    .line 1685
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    .line 1686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    .line 1687
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    .line 1688
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    .line 1689
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    .line 1690
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    .line 1691
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    .line 1692
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    .line 1693
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->cachedSize:I

    .line 1694
    return-object p0
.end method

.method public clearConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1651
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    .line 1652
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1653
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    .line 1576
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1577
    return-object p0
.end method

.method public clearHost()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    .line 1535
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1536
    return-object p0
.end method

.method public clearInBufferSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1613
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    .line 1614
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1615
    return-object p0
.end method

.method public clearOpenConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1632
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    .line 1633
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1634
    return-object p0
.end method

.method public clearOutBufferSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    .line 1595
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1596
    return-object p0
.end method

.method public clearPort()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    .line 1554
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1555
    return-object p0
.end method

.method public clearUseSsl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    .line 1671
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1672
    return-object p0
.end method

.method public getConnectionTimeoutMsec()I
    .locals 1

    .prologue
    .line 1640
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getInBufferSize()I
    .locals 1

    .prologue
    .line 1602
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    return v0
.end method

.method public getOpenConnectionTimeoutMsec()I
    .locals 1

    .prologue
    .line 1621
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    return v0
.end method

.method public getOutBufferSize()I
    .locals 1

    .prologue
    .line 1583
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1542
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1733
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 1734
    .local v3, "size":I
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1735
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1738
    :cond_0
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1739
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1742
    :cond_1
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1743
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1746
    :cond_2
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 1747
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1750
    :cond_3
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 1751
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1754
    :cond_4
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    .line 1755
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1758
    :cond_5
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 1759
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1762
    :cond_6
    iget v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_7

    .line 1763
    const/16 v4, 0x8

    iget-boolean v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1766
    :cond_7
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    array-length v4, v4

    if-lez v4, :cond_9

    .line 1767
    const/4 v0, 0x0

    .line 1768
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_8

    .line 1769
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    aget v1, v4, v2

    .line 1770
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1768
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1773
    .end local v1    # "element":I
    :cond_8
    add-int/2addr v3, v0

    .line 1774
    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1776
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_9
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->cachedSize:I

    .line 1777
    return v3
.end method

.method public getUseSsl()Z
    .locals 1

    .prologue
    .line 1659
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    return v0
.end method

.method public hasConnectionTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1648
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 1572
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 1531
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInBufferSize()Z
    .locals 1

    .prologue
    .line 1610
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenConnectionTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOutBufferSize()Z
    .locals 1

    .prologue
    .line 1591
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 1550
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUseSsl()Z
    .locals 1

    .prologue
    .line 1667
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1498
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1785
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 1786
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 1790
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1791
    :sswitch_0
    return-object p0

    .line 1796
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    .line 1797
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1801
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    .line 1802
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1806
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    .line 1807
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1811
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    .line 1812
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1816
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    .line 1817
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1821
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    .line 1822
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1826
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    .line 1827
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1831
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    .line 1832
    iget v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    goto :goto_0

    .line 1836
    :sswitch_9
    const/16 v8, 0x48

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1838
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 1839
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1840
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 1841
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1843
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 1844
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1845
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1843
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1838
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    array-length v1, v8

    goto :goto_1

    .line 1848
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1849
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    goto/16 :goto_0

    .line 1853
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1854
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1856
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 1857
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1858
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 1859
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1860
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1862
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1863
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 1864
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1865
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 1866
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1868
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 1869
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1868
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1863
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    array-length v1, v8

    goto :goto_4

    .line 1871
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    .line 1872
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1786
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x4a -> :sswitch_a
    .end sparse-switch
.end method

.method public setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1643
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    .line 1644
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1645
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1564
    if-nez p1, :cond_0

    .line 1565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1567
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    .line 1568
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1569
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1523
    if-nez p1, :cond_0

    .line 1524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1526
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    .line 1527
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1528
    return-object p0
.end method

.method public setInBufferSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1605
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    .line 1606
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1607
    return-object p0
.end method

.method public setOpenConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1624
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    .line 1625
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1626
    return-object p0
.end method

.method public setOutBufferSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1586
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    .line 1587
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1588
    return-object p0
.end method

.method public setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1545
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    .line 1546
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1547
    return-object p0
.end method

.method public setUseSsl(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1662
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    .line 1663
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    .line 1664
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1700
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1701
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1703
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1704
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1706
    :cond_1
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1707
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1709
    :cond_2
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1710
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1712
    :cond_3
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1713
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1715
    :cond_4
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1716
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1718
    :cond_5
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1719
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1721
    :cond_6
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1722
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1724
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    array-length v1, v1

    if-lez v1, :cond_8

    .line 1725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 1726
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1729
    .end local v0    # "i":I
    :cond_8
    return-void
.end method
