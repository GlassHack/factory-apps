.class public final Lcom/google/speech/s3/S3$S3ClientInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ClientInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$S3ClientInfo;


# instance fields
.field private applicationId_:Ljava/lang/String;

.field private applicationVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private clientId_:Ljava/lang/String;

.field private deviceDisplayDensityDpi_:I

.field private deviceDisplayHeightPixels_:I

.field private deviceDisplayWidthPixels_:I

.field private deviceModel_:Ljava/lang/String;

.field public experimentId:[Ljava/lang/String;

.field public noiseSuppressorId:[Ljava/lang/String;

.field private platformId_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private triggerApplicationId_:Ljava/lang/String;

.field private userAgent_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1874
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1875
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clear()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1876
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 2

    .prologue
    .line 1622
    sget-object v0, Lcom/google/speech/s3/S3$S3ClientInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ClientInfo;

    if-nez v0, :cond_1

    .line 1623
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1625
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$S3ClientInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ClientInfo;

    if-nez v0, :cond_0

    .line 1626
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$S3ClientInfo;

    sput-object v0, Lcom/google/speech/s3/S3$S3ClientInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1628
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$S3ClientInfo;->_emptyArray:[Lcom/google/speech/s3/S3$S3ClientInfo;

    return-object v0

    .line 1628
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2146
    new-instance v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2140
    new-instance v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1879
    iput v1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1880
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    .line 1881
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    .line 1882
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    .line 1883
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    .line 1884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 1885
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    .line 1886
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 1887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 1888
    iput v1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    .line 1889
    iput v1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    .line 1890
    iput v1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    .line 1891
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    .line 1892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 1893
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->cachedSize:I

    .line 1894
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1743
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    .line 1744
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1745
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 1766
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1767
    return-object p0
.end method

.method public clearClientId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    .line 1653
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1654
    return-object p0
.end method

.method public clearDeviceDisplayDensityDpi()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    .line 1845
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1846
    return-object p0
.end method

.method public clearDeviceDisplayHeightPixels()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1825
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    .line 1826
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1827
    return-object p0
.end method

.method public clearDeviceDisplayWidthPixels()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1806
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    .line 1807
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1808
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 1788
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1789
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1699
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    .line 1700
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1701
    return-object p0
.end method

.method public clearPlatformVersion()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1721
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 1722
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1723
    return-object p0
.end method

.method public clearTriggerApplicationId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 1870
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1871
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    .line 1675
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1676
    return-object p0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDisplayDensityDpi()I
    .locals 1

    .prologue
    .line 1833
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    return v0
.end method

.method public getDeviceDisplayHeightPixels()I
    .locals 1

    .prologue
    .line 1814
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    return v0
.end method

.method public getDeviceDisplayWidthPixels()I
    .locals 1

    .prologue
    .line 1795
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1953
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 1954
    .local v4, "size":I
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1955
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1958
    :cond_0
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    .line 1959
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1962
    :cond_1
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 1963
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1966
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 1967
    const/4 v0, 0x0

    .line 1968
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 1969
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 1970
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 1971
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1972
    add-int/lit8 v0, v0, 0x1

    .line 1973
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1969
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1977
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 1978
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 1980
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_6

    .line 1981
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1984
    :cond_6
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    .line 1985
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1988
    :cond_7
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_8

    .line 1989
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1992
    :cond_8
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9

    .line 1993
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1996
    :cond_9
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_a

    .line 1997
    const/16 v5, 0xc

    iget v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2000
    :cond_a
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_b

    .line 2001
    const/16 v5, 0xd

    iget v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2004
    :cond_b
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_c

    .line 2005
    const/16 v5, 0xe

    iget v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2008
    :cond_c
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_f

    .line 2009
    const/4 v0, 0x0

    .line 2010
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 2011
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    .line 2012
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2013
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 2014
    add-int/lit8 v0, v0, 0x1

    .line 2015
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2011
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2019
    .end local v2    # "element":Ljava/lang/String;
    :cond_e
    add-int/2addr v4, v1

    .line 2020
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 2022
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_f
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_10

    .line 2023
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2026
    :cond_10
    iput v4, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->cachedSize:I

    .line 2027
    return v4
.end method

.method public getTriggerApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 1740
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApplicationVersion()Z
    .locals 1

    .prologue
    .line 1762
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceDisplayDensityDpi()Z
    .locals 1

    .prologue
    .line 1841
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceDisplayHeightPixels()Z
    .locals 1

    .prologue
    .line 1822
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceDisplayWidthPixels()Z
    .locals 1

    .prologue
    .line 1803
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceModel()Z
    .locals 1

    .prologue
    .line 1784
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlatformId()Z
    .locals 1

    .prologue
    .line 1696
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlatformVersion()Z
    .locals 1

    .prologue
    .line 1718
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTriggerApplicationId()Z
    .locals 1

    .prologue
    .line 1866
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAgent()Z
    .locals 1

    .prologue
    .line 1671
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 1616
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2035
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2036
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2040
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2041
    :sswitch_0
    return-object p0

    .line 2046
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    .line 2047
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto :goto_0

    .line 2051
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    .line 2052
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto :goto_0

    .line 2056
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    .line 2057
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto :goto_0

    .line 2061
    :sswitch_4
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2063
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 2064
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2065
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2066
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2068
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2069
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2070
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2068
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2063
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 2073
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2074
    iput-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    goto :goto_0

    .line 2078
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    .line 2079
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto :goto_0

    .line 2083
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 2084
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2088
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 2089
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2093
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 2094
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2098
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    .line 2099
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2103
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    .line 2104
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2108
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    .line 2109
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2113
    :sswitch_c
    const/16 v5, 0x7a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2115
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    .line 2116
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2117
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 2118
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2120
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 2121
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2122
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2120
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2115
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    .line 2125
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2126
    iput-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2130
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 2131
    iget v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2036
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x42 -> :sswitch_5
        0x4a -> :sswitch_6
        0x52 -> :sswitch_7
        0x5a -> :sswitch_8
        0x60 -> :sswitch_9
        0x68 -> :sswitch_a
        0x70 -> :sswitch_b
        0x7a -> :sswitch_c
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1732
    if-nez p1, :cond_0

    .line 1733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1735
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    .line 1736
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1737
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1754
    if-nez p1, :cond_0

    .line 1755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1757
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 1758
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1759
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1641
    if-nez p1, :cond_0

    .line 1642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1644
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    .line 1645
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1646
    return-object p0
.end method

.method public setDeviceDisplayDensityDpi(I)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1836
    iput p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    .line 1837
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1838
    return-object p0
.end method

.method public setDeviceDisplayHeightPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1817
    iput p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    .line 1818
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1819
    return-object p0
.end method

.method public setDeviceDisplayWidthPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1798
    iput p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    .line 1799
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1800
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1776
    if-nez p1, :cond_0

    .line 1777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1779
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 1780
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1781
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1688
    if-nez p1, :cond_0

    .line 1689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1691
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    .line 1692
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1693
    return-object p0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1710
    if-nez p1, :cond_0

    .line 1711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1713
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 1714
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1715
    return-object p0
.end method

.method public setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1858
    if-nez p1, :cond_0

    .line 1859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1861
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 1862
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1863
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1663
    if-nez p1, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1666
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    .line 1667
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    .line 1668
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1900
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1901
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1903
    :cond_0
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 1904
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1906
    :cond_1
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 1907
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1909
    :cond_2
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1910
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1911
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1912
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1913
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1910
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1917
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 1918
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1920
    :cond_5
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 1921
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1923
    :cond_6
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7

    .line 1924
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1926
    :cond_7
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 1927
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1929
    :cond_8
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_9

    .line 1930
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1932
    :cond_9
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_a

    .line 1933
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1935
    :cond_a
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b

    .line 1936
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1938
    :cond_b
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 1939
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 1940
    iget-object v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1941
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 1942
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1939
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1946
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_d
    iget v2, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_e

    .line 1947
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1949
    :cond_e
    return-void
.end method
