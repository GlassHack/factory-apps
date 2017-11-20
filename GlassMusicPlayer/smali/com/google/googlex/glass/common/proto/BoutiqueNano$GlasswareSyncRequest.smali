.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;


# instance fields
.field public apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

.field private bitField0_:I

.field private deviceId_:Ljava/lang/String;

.field private glassBuildFingerprint_:Ljava/lang/String;

.field private glassBuildType_:Ljava/lang/String;

.field private glassVersion_:I

.field private lastSyncedTimestampUs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1670
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 1698
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    .line 1717
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 1739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 1761
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 1780
    sget-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 1671
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1952
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1946
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    return-object v0
.end method


# virtual methods
.method public final clearDeviceId()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 1693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1694
    return-object p0
.end method

.method public final clearGlassBuildFingerprint()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 1756
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1757
    return-object p0
.end method

.method public final clearGlassBuildType()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 1734
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1735
    return-object p0
.end method

.method public final clearGlassVersion()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1711
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    .line 1712
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1713
    return-object p0
.end method

.method public final clearLastSyncedTimestampUs()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 2

    .prologue
    .line 1774
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 1775
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1776
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1784
    if-ne p1, p0, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return v0

    .line 1785
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1786
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    .line 1787
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1789
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1790
    :goto_3
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 1792
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1793
    goto :goto_0

    .line 1787
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 1789
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 1790
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 1792
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    .line 1793
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlassBuildFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlassBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlassVersion()I
    .locals 1

    .prologue
    .line 1700
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    return v0
.end method

.method public final getLastSyncedTimestampUs()J
    .locals 2

    .prologue
    .line 1763
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1843
    .line 1844
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 1845
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    .line 1846
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 1848
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-eqz v2, :cond_1

    .line 1849
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1850
    if-eqz v4, :cond_0

    .line 1851
    const/4 v5, 0x2

    .line 1852
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1849
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1856
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1857
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 1858
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1860
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 1861
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 1862
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1864
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 1865
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 1866
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1868
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 1869
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 1870
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1872
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1873
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->cachedSize:I

    .line 1874
    return v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final hasDeviceId()Z
    .locals 1

    .prologue
    .line 1689
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGlassBuildFingerprint()Z
    .locals 1

    .prologue
    .line 1752
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGlassBuildType()Z
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGlassVersion()Z
    .locals 1

    .prologue
    .line 1708
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLastSyncedTimestampUs()Z
    .locals 1

    .prologue
    .line 1771
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1797
    .line 1798
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1799
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    add-int/2addr v0, v2

    .line 1800
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1801
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1802
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1803
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-nez v2, :cond_4

    mul-int/lit8 v2, v0, 0x1f

    .line 1809
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    :goto_3
    add-int/2addr v0, v1

    .line 1810
    return v0

    .line 1798
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1800
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1801
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    move v2, v0

    move v0, v1

    .line 1805
    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1806
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v1

    :goto_5
    add-int/2addr v2, v3

    .line 1805
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1806
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->hashCode()I

    move-result v2

    goto :goto_5

    .line 1809
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1882
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1883
    sparse-switch v0, :sswitch_data_0

    .line 1887
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1888
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    .line 1891
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    :sswitch_0
    return-object p0

    .line 1898
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    .line 1899
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    goto :goto_0

    .line 1903
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1904
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-nez v0, :cond_3

    move v0, v1

    .line 1905
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 1906
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-eqz v3, :cond_2

    .line 1907
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1909
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 1910
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 1911
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V

    aput-object v3, v2, v0

    .line 1912
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1913
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1910
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1904
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    array-length v0, v0

    goto :goto_1

    .line 1916
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V

    aput-object v3, v2, v0

    .line 1917
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1921
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 1922
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    goto :goto_0

    .line 1926
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 1927
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    goto/16 :goto_0

    .line 1931
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 1932
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    goto/16 :goto_0

    .line 1936
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 1937
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    goto/16 :goto_0

    .line 1883
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1667
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1681
    if-nez p1, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1684
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    .line 1685
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1686
    return-object p0
.end method

.method public final setGlassBuildFingerprint(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1744
    if-nez p1, :cond_0

    .line 1745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1747
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    .line 1748
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1749
    return-object p0
.end method

.method public final setGlassBuildType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1722
    if-nez p1, :cond_0

    .line 1723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1725
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    .line 1726
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1727
    return-object p0
.end method

.method public final setGlassVersion(I)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1703
    iput p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    .line 1704
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1705
    return-object p0
.end method

.method public final setLastSyncedTimestampUs(J)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;
    .locals 1

    .prologue
    .line 1766
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    .line 1767
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    .line 1768
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 1815
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1816
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-eqz v0, :cond_2

    .line 1819
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->apkMetadata:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 1820
    if-eqz v3, :cond_1

    .line 1821
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1819
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1825
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1826
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1828
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1829
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->lastSyncedTimestampUs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1831
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 1832
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1834
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 1835
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->glassBuildFingerprint_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1837
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1839
    return-void
.end method
