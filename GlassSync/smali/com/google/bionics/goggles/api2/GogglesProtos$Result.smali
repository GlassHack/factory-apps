.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;


# instance fields
.field private bitField0_:I

.field public boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

.field private fifeImageUrl_:Ljava/lang/String;

.field private highestSequenceNumberMatched_:I

.field public peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

.field private resultId_:Ljava/lang/String;

.field private searchCorpus_:Ljava/lang/String;

.field private searchQuery_:Ljava/lang/String;

.field private subtitle_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1744
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1745
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    .line 1746
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 2

    .prologue
    .line 1574
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    if-nez v0, :cond_1

    .line 1575
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1577
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    if-nez v0, :cond_0

    .line 1578
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    .line 1580
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    return-object v0

    .line 1580
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1914
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1908
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1749
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1750
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->resultId_:Ljava/lang/String;

    .line 1751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->title_:Ljava/lang/String;

    .line 1752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->subtitle_:Ljava/lang/String;

    .line 1753
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->fifeImageUrl_:Ljava/lang/String;

    .line 1754
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchQuery_:Ljava/lang/String;

    .line 1755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchCorpus_:Ljava/lang/String;

    .line 1756
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 1757
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->highestSequenceNumberMatched_:I

    .line 1758
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 1759
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->cachedSize:I

    .line 1760
    return-object p0
.end method

.method public clearFifeImageUrl()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1

    .prologue
    .line 1670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->fifeImageUrl_:Ljava/lang/String;

    .line 1671
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1672
    return-object p0
.end method

.method public clearHighestSequenceNumberMatched()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->highestSequenceNumberMatched_:I

    .line 1737
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1738
    return-object p0
.end method

.method public clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1

    .prologue
    .line 1604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->resultId_:Ljava/lang/String;

    .line 1605
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1606
    return-object p0
.end method

.method public clearSearchCorpus()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1

    .prologue
    .line 1714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchCorpus_:Ljava/lang/String;

    .line 1715
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1716
    return-object p0
.end method

.method public clearSearchQuery()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1

    .prologue
    .line 1692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchQuery_:Ljava/lang/String;

    .line 1693
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1694
    return-object p0
.end method

.method public clearSubtitle()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1

    .prologue
    .line 1648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->subtitle_:Ljava/lang/String;

    .line 1649
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1650
    return-object p0
.end method

.method public clearTitle()Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1

    .prologue
    .line 1626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->title_:Ljava/lang/String;

    .line 1627
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1628
    return-object p0
.end method

.method public getFifeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->fifeImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getHighestSequenceNumberMatched()I
    .locals 1

    .prologue
    .line 1725
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->highestSequenceNumberMatched_:I

    return v0
.end method

.method public getResultId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->resultId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchCorpus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchCorpus_:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1797
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1798
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1799
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->resultId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1802
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1803
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1806
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1807
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->subtitle_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1810
    :cond_2
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1811
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->fifeImageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1814
    :cond_3
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1815
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchQuery_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1818
    :cond_4
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-eqz v1, :cond_5

    .line 1819
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1822
    :cond_5
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1823
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->highestSequenceNumberMatched_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1826
    :cond_6
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-eqz v1, :cond_7

    .line 1827
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1830
    :cond_7
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 1831
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchCorpus_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1834
    :cond_8
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->cachedSize:I

    .line 1835
    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFifeImageUrl()Z
    .locals 1

    .prologue
    .line 1667
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighestSequenceNumberMatched()Z
    .locals 1

    .prologue
    .line 1733
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultId()Z
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchCorpus()Z
    .locals 1

    .prologue
    .line 1711
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchQuery()Z
    .locals 1

    .prologue
    .line 1689
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubtitle()Z
    .locals 1

    .prologue
    .line 1645
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 1623
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1843
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1844
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1848
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1849
    :sswitch_0
    return-object p0

    .line 1854
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->resultId_:Ljava/lang/String;

    .line 1855
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    goto :goto_0

    .line 1859
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->title_:Ljava/lang/String;

    .line 1860
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    goto :goto_0

    .line 1864
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->subtitle_:Ljava/lang/String;

    .line 1865
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    goto :goto_0

    .line 1869
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->fifeImageUrl_:Ljava/lang/String;

    .line 1870
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    goto :goto_0

    .line 1874
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchQuery_:Ljava/lang/String;

    .line 1875
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    goto :goto_0

    .line 1879
    :sswitch_6
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-nez v1, :cond_1

    .line 1880
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 1882
    :cond_1
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1886
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->highestSequenceNumberMatched_:I

    .line 1887
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    goto :goto_0

    .line 1891
    :sswitch_8
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-nez v1, :cond_2

    .line 1892
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 1894
    :cond_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1898
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchCorpus_:Ljava/lang/String;

    .line 1899
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    goto/16 :goto_0

    .line 1844
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
        0x52 -> :sswitch_8
        0x5a -> :sswitch_9
    .end sparse-switch
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
    .line 1568
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    move-result-object v0

    return-object v0
.end method

.method public setFifeImageUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1659
    if-nez p1, :cond_0

    .line 1660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1662
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->fifeImageUrl_:Ljava/lang/String;

    .line 1663
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1664
    return-object p0
.end method

.method public setHighestSequenceNumberMatched(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1728
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->highestSequenceNumberMatched_:I

    .line 1729
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1730
    return-object p0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1593
    if-nez p1, :cond_0

    .line 1594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1596
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->resultId_:Ljava/lang/String;

    .line 1597
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1598
    return-object p0
.end method

.method public setSearchCorpus(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1703
    if-nez p1, :cond_0

    .line 1704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1706
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchCorpus_:Ljava/lang/String;

    .line 1707
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1708
    return-object p0
.end method

.method public setSearchQuery(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1681
    if-nez p1, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1684
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchQuery_:Ljava/lang/String;

    .line 1685
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1686
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1637
    if-nez p1, :cond_0

    .line 1638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1640
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->subtitle_:Ljava/lang/String;

    .line 1641
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1642
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1615
    if-nez p1, :cond_0

    .line 1616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1618
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->title_:Ljava/lang/String;

    .line 1619
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    .line 1620
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1766
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1767
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->resultId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1769
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1770
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1772
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1773
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->subtitle_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1775
    :cond_2
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1776
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->fifeImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1778
    :cond_3
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1779
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchQuery_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1781
    :cond_4
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-eqz v0, :cond_5

    .line 1782
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->boundingBox:Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1784
    :cond_5
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1785
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->highestSequenceNumberMatched_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1787
    :cond_6
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    if-eqz v0, :cond_7

    .line 1788
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1790
    :cond_7
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 1791
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;->searchCorpus_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1793
    :cond_8
    return-void
.end method
