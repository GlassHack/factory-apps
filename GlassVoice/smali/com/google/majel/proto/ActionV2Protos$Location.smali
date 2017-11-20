.class public final Lcom/google/majel/proto/ActionV2Protos$Location;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location;


# instance fields
.field private addressForMapImageUrl_:Ljava/lang/String;

.field private address_:Ljava/lang/String;

.field public alias:Lcom/google/majel/proto/AliasProto$Alias;

.field private bitField0_:I

.field private clusterId_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field public featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

.field private latDegrees_:D

.field private latSpanDegrees_:D

.field private lngDegrees_:D

.field private lngSpanDegrees_:D

.field private mapsUrl_:Ljava/lang/String;

.field private originalDescription_:Ljava/lang/String;

.field private radiusMeters_:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1933
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1934
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->clear()Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1935
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1687
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$Location;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v0, :cond_1

    .line 1688
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1690
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$Location;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v0, :cond_0

    .line 1691
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$Location;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$Location;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 1693
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$Location;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0

    .line 1693
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2155
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2149
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1938
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1939
    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    .line 1940
    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    .line 1941
    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    .line 1942
    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    .line 1943
    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->radiusMeters_:D

    .line 1944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    .line 1945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    .line 1946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    .line 1947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    .line 1948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    .line 1949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    .line 1950
    iput-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    .line 1951
    iput-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    .line 1952
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->cachedSize:I

    .line 1953
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    .line 1879
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1880
    return-object p0
.end method

.method public clearAddressForMapImageUrl()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    .line 1901
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1902
    return-object p0
.end method

.method public clearClusterId()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1922
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    .line 1923
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1924
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1812
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    .line 1813
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1814
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    .line 1715
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1716
    return-object p0
.end method

.method public clearLatSpanDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1752
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    .line 1753
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1754
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1733
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    .line 1734
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1735
    return-object p0
.end method

.method public clearLngSpanDegrees()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1771
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    .line 1772
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1773
    return-object p0
.end method

.method public clearMapsUrl()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    .line 1857
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1858
    return-object p0
.end method

.method public clearOriginalDescription()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    .line 1835
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1836
    return-object p0
.end method

.method public clearRadiusMeters()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 2

    .prologue
    .line 1790
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->radiusMeters_:D

    .line 1791
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1792
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressForMapImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatDegrees()D
    .locals 2

    .prologue
    .line 1703
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    return-wide v0
.end method

.method public getLatSpanDegrees()D
    .locals 2

    .prologue
    .line 1741
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    return-wide v0
.end method

.method public getLngDegrees()D
    .locals 2

    .prologue
    .line 1722
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    return-wide v0
.end method

.method public getLngSpanDegrees()D
    .locals 2

    .prologue
    .line 1760
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    return-wide v0
.end method

.method public getMapsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiusMeters()D
    .locals 2

    .prologue
    .line 1779
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->radiusMeters_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2003
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2004
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2007
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2008
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2011
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 2012
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2015
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 2016
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2019
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4

    .line 2020
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2023
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 2024
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2027
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    .line 2028
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2031
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 2032
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2035
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 2036
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2039
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    if-eqz v1, :cond_9

    .line 2040
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2043
    :cond_9
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    .line 2044
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2047
    :cond_a
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    .line 2048
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->radiusMeters_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2051
    :cond_b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    if-eqz v1, :cond_c

    .line 2052
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2055
    :cond_c
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->cachedSize:I

    .line 2056
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 1875
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddressForMapImageUrl()Z
    .locals 1

    .prologue
    .line 1897
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClusterId()Z
    .locals 1

    .prologue
    .line 1919
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1809
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 1711
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatSpanDegrees()Z
    .locals 1

    .prologue
    .line 1749
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngSpanDegrees()Z
    .locals 1

    .prologue
    .line 1768
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMapsUrl()Z
    .locals 1

    .prologue
    .line 1853
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOriginalDescription()Z
    .locals 1

    .prologue
    .line 1831
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRadiusMeters()Z
    .locals 1

    .prologue
    .line 1787
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 1545
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$Location;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2064
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2065
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2069
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2070
    :sswitch_0
    return-object p0

    .line 2075
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    .line 2076
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2080
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    .line 2081
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2085
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    .line 2086
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2090
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    .line 2091
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2095
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    .line 2096
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2100
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    .line 2101
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2105
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    .line 2106
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2110
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    .line 2111
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto :goto_0

    .line 2115
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    .line 2116
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2120
    :sswitch_a
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    if-nez v1, :cond_1

    .line 2121
    new-instance v1, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v1}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    .line 2123
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2127
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    .line 2128
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2132
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->radiusMeters_:D

    .line 2133
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2137
    :sswitch_d
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    if-nez v1, :cond_2

    .line 2138
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    .line 2140
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2065
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x41 -> :sswitch_8
        0x49 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x61 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1867
    if-nez p1, :cond_0

    .line 1868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1870
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    .line 1871
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1872
    return-object p0
.end method

.method public setAddressForMapImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1889
    if-nez p1, :cond_0

    .line 1890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1892
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    .line 1893
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1894
    return-object p0
.end method

.method public setClusterId(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1911
    if-nez p1, :cond_0

    .line 1912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1914
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    .line 1915
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1916
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1801
    if-nez p1, :cond_0

    .line 1802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1804
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    .line 1805
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1806
    return-object p0
.end method

.method public setLatDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1706
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    .line 1707
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1708
    return-object p0
.end method

.method public setLatSpanDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1744
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    .line 1745
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1746
    return-object p0
.end method

.method public setLngDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1725
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    .line 1726
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1727
    return-object p0
.end method

.method public setLngSpanDegrees(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1763
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    .line 1764
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1765
    return-object p0
.end method

.method public setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1845
    if-nez p1, :cond_0

    .line 1846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1848
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    .line 1849
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1850
    return-object p0
.end method

.method public setOriginalDescription(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1823
    if-nez p1, :cond_0

    .line 1824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1826
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    .line 1827
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1828
    return-object p0
.end method

.method public setRadiusMeters(D)Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1782
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->radiusMeters_:D

    .line 1783
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    .line 1784
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
    .line 1959
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1960
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latDegrees_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1962
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1963
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngDegrees_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1965
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 1966
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1968
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 1969
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->mapsUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1971
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    .line 1972
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->address_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1974
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 1975
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->originalDescription_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1977
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    .line 1978
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->clusterId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1980
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 1981
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->latSpanDegrees_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1983
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 1984
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->lngSpanDegrees_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1986
    :cond_8
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    if-eqz v0, :cond_9

    .line 1987
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1989
    :cond_9
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 1990
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->addressForMapImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1992
    :cond_a
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 1993
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->radiusMeters_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1995
    :cond_b
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    if-eqz v0, :cond_c

    .line 1996
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location;->featureId:Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1998
    :cond_c
    return-void
.end method
