.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StockResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;


# instance fields
.field private avgVolumeText_:Ljava/lang/String;

.field private avgVolume_:Ljava/lang/String;

.field private bitField0_:I

.field private delay_:Ljava/lang/String;

.field private disclaimerUrl_:Ljava/lang/String;

.field private disclaimer_:Ljava/lang/String;

.field private highPrice_:F

.field private highText_:Ljava/lang/String;

.field private lastChangeTime_:Ljava/lang/String;

.field private lastPrice_:F

.field private lowPrice_:F

.field private lowText_:Ljava/lang/String;

.field private marketCapText_:Ljava/lang/String;

.field private marketCap_:Ljava/lang/String;

.field private openPrice_:F

.field private openText_:Ljava/lang/String;

.field private priceChange_:F

.field private pricePercentChange_:F

.field private volumeText_:Ljava/lang/String;

.field private volume_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1710
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1711
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1712
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2

    .prologue
    .line 1297
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    if-nez v0, :cond_1

    .line 1298
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1300
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    if-nez v0, :cond_0

    .line 1301
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1303
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    return-object v0

    .line 1303
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2006
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2000
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1715
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1716
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    .line 1717
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    .line 1718
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    .line 1719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    .line 1720
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    .line 1721
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    .line 1722
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    .line 1723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    .line 1724
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    .line 1725
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    .line 1726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    .line 1727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    .line 1728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    .line 1729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    .line 1730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    .line 1731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    .line 1732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    .line 1733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    .line 1734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    .line 1735
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->cachedSize:I

    .line 1736
    return-object p0
.end method

.method public clearAvgVolume()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    .line 1574
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1575
    return-object p0
.end method

.method public clearAvgVolumeText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    .line 1596
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1597
    return-object p0
.end method

.method public clearDelay()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2

    .prologue
    .line 1661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    .line 1662
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1663
    return-object p0
.end method

.method public clearDisclaimer()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2

    .prologue
    .line 1683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    .line 1684
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1685
    return-object p0
.end method

.method public clearDisclaimerUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2

    .prologue
    .line 1705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    .line 1706
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1707
    return-object p0
.end method

.method public clearHighPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1444
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    .line 1445
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1446
    return-object p0
.end method

.method public clearHighText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    .line 1467
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1468
    return-object p0
.end method

.method public clearLastChangeTime()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1384
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    .line 1385
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1386
    return-object p0
.end method

.method public clearLastPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    .line 1325
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1326
    return-object p0
.end method

.method public clearLowPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1485
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    .line 1486
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1487
    return-object p0
.end method

.method public clearLowText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    .line 1508
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1509
    return-object p0
.end method

.method public clearMarketCap()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    .line 1618
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1619
    return-object p0
.end method

.method public clearMarketCapText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2

    .prologue
    .line 1639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    .line 1640
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1641
    return-object p0
.end method

.method public clearOpenPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    .line 1404
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1405
    return-object p0
.end method

.method public clearOpenText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    .line 1426
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1427
    return-object p0
.end method

.method public clearPriceChange()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    .line 1344
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1345
    return-object p0
.end method

.method public clearPricePercentChange()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    .line 1363
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1364
    return-object p0
.end method

.method public clearVolume()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    .line 1530
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1531
    return-object p0
.end method

.method public clearVolumeText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1551
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    .line 1552
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1553
    return-object p0
.end method

.method public getAvgVolume()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    return-object v0
.end method

.method public getAvgVolumeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getHighPrice()F
    .locals 1

    .prologue
    .line 1433
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    return v0
.end method

.method public getHighText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChangeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPrice()F
    .locals 1

    .prologue
    .line 1313
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    return v0
.end method

.method public getLowPrice()F
    .locals 1

    .prologue
    .line 1474
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    return v0
.end method

.method public getLowText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketCap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketCapText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenPrice()F
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    return v0
.end method

.method public getOpenText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceChange()F
    .locals 1

    .prologue
    .line 1332
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    return v0
.end method

.method public getPricePercentChange()F
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1803
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1804
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1805
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1808
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1809
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1812
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1813
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1816
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1817
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1820
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1821
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1824
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1825
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1828
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1829
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1832
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1833
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1836
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 1837
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1840
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 1841
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1844
    :cond_9
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 1845
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1848
    :cond_a
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 1849
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1852
    :cond_b
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 1853
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1856
    :cond_c
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 1857
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1860
    :cond_d
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 1861
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1864
    :cond_e
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 1865
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1868
    :cond_f
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 1869
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1872
    :cond_10
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 1873
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1876
    :cond_11
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 1877
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1880
    :cond_12
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->cachedSize:I

    .line 1881
    return v0
.end method

.method public getVolume()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAvgVolume()Z
    .locals 1

    .prologue
    .line 1570
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgVolumeText()Z
    .locals 1

    .prologue
    .line 1592
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDelay()Z
    .locals 2

    .prologue
    .line 1658
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimer()Z
    .locals 2

    .prologue
    .line 1680
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimerUrl()Z
    .locals 2

    .prologue
    .line 1702
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighPrice()Z
    .locals 1

    .prologue
    .line 1441
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighText()Z
    .locals 1

    .prologue
    .line 1463
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastChangeTime()Z
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastPrice()Z
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLowPrice()Z
    .locals 1

    .prologue
    .line 1482
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLowText()Z
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMarketCap()Z
    .locals 1

    .prologue
    .line 1614
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMarketCapText()Z
    .locals 2

    .prologue
    .line 1636
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenPrice()Z
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenText()Z
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriceChange()Z
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPricePercentChange()Z
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVolume()Z
    .locals 1

    .prologue
    .line 1526
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVolumeText()Z
    .locals 1

    .prologue
    .line 1548
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

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
    .line 1291
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1889
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1890
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1894
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1895
    :sswitch_0
    return-object p0

    .line 1900
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    .line 1901
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1905
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    .line 1906
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1910
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    .line 1911
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1915
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    .line 1916
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1920
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    .line 1921
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1925
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    .line 1926
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1930
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    .line 1931
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1935
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    .line 1936
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto :goto_0

    .line 1940
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    .line 1941
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1945
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    .line 1946
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1950
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    .line 1951
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1955
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    .line 1956
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1960
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    .line 1961
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1965
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    .line 1966
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1970
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    .line 1971
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1975
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    .line 1976
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1980
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    .line 1981
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1985
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    .line 1986
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1990
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    .line 1991
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    goto/16 :goto_0

    .line 1890
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
    .end sparse-switch
.end method

.method public setAvgVolume(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1562
    if-nez p1, :cond_0

    .line 1563
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1565
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    .line 1566
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1567
    return-object p0
.end method

.method public setAvgVolumeText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1584
    if-nez p1, :cond_0

    .line 1585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1587
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    .line 1588
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1589
    return-object p0
.end method

.method public setDelay(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1650
    if-nez p1, :cond_0

    .line 1651
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1653
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    .line 1654
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1655
    return-object p0
.end method

.method public setDisclaimer(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1672
    if-nez p1, :cond_0

    .line 1673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1675
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    .line 1676
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1677
    return-object p0
.end method

.method public setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1694
    if-nez p1, :cond_0

    .line 1695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1697
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    .line 1698
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1699
    return-object p0
.end method

.method public setHighPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1436
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    .line 1437
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1438
    return-object p0
.end method

.method public setHighText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1455
    if-nez p1, :cond_0

    .line 1456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1458
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    .line 1459
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1460
    return-object p0
.end method

.method public setLastChangeTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1373
    if-nez p1, :cond_0

    .line 1374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1376
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    .line 1377
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1378
    return-object p0
.end method

.method public setLastPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1316
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    .line 1317
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1318
    return-object p0
.end method

.method public setLowPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1477
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    .line 1478
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1479
    return-object p0
.end method

.method public setLowText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1496
    if-nez p1, :cond_0

    .line 1497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1499
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    .line 1500
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1501
    return-object p0
.end method

.method public setMarketCap(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1606
    if-nez p1, :cond_0

    .line 1607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1609
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    .line 1610
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1611
    return-object p0
.end method

.method public setMarketCapText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1628
    if-nez p1, :cond_0

    .line 1629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1631
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    .line 1632
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1633
    return-object p0
.end method

.method public setOpenPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1395
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    .line 1396
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1397
    return-object p0
.end method

.method public setOpenText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1414
    if-nez p1, :cond_0

    .line 1415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1417
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    .line 1418
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1419
    return-object p0
.end method

.method public setPriceChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1335
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    .line 1336
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1337
    return-object p0
.end method

.method public setPricePercentChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1354
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    .line 1355
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1356
    return-object p0
.end method

.method public setVolume(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1518
    if-nez p1, :cond_0

    .line 1519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1521
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    .line 1522
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1523
    return-object p0
.end method

.method public setVolumeText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1543
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    .line 1544
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    .line 1545
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
    .line 1742
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1743
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1745
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1746
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1748
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1749
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1751
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1752
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1754
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1755
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1757
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1758
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1760
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1761
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1763
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 1764
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1766
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 1767
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1769
    :cond_8
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 1770
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1772
    :cond_9
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 1773
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1775
    :cond_a
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 1776
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1778
    :cond_b
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 1779
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1781
    :cond_c
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 1782
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1784
    :cond_d
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 1785
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1787
    :cond_e
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 1788
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1790
    :cond_f
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 1791
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1793
    :cond_10
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 1794
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1796
    :cond_11
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 1797
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1799
    :cond_12
    return-void
.end method
