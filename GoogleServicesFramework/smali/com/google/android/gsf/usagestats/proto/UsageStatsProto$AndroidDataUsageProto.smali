.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidDataUsageProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private currentReportMsec_:J

.field private hasCurrentReportMsec:Z

.field private hasVersion:Z

.field private ipLayerNetworkStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;",
            ">;"
        }
    .end annotation
.end field

.field private keyToPackageNameMapping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;",
            ">;"
        }
    .end annotation
.end field

.field private payloadLevelAppStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1627
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1632
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->version_:I

    .line 1649
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->currentReportMsec_:J

    .line 1665
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    .line 1698
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->payloadLevelAppStat_:Ljava/util/List;

    .line 1731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    .line 1806
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    .line 1627
    return-void
.end method


# virtual methods
.method public addIpLayerNetworkStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .prologue
    .line 1748
    if-nez p1, :cond_0

    .line 1749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    .line 1754
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1755
    return-object p0
.end method

.method public addKeyToPackageNameMapping(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .prologue
    .line 1682
    if-nez p1, :cond_0

    .line 1683
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    .line 1688
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    return-object p0
.end method

.method public addPayloadLevelAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    .prologue
    .line 1715
    if-nez p1, :cond_0

    .line 1716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->payloadLevelAppStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->payloadLevelAppStat_:Ljava/util/List;

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->payloadLevelAppStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1809
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1811
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getSerializedSize()I

    .line 1813
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    return v0
.end method

.method public getCurrentReportMsec()J
    .locals 2

    .prologue
    .line 1650
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->currentReportMsec_:J

    return-wide v0
.end method

.method public getIpLayerNetworkStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    return-object v0
.end method

.method public getKeyToPackageNameMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    return-object v0
.end method

.method public getPayloadLevelAppStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->payloadLevelAppStat_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1818
    const/4 v2, 0x0

    .line 1819
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1820
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1823
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1824
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getCurrentReportMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1827
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getKeyToPackageNameMappingList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 1828
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1831
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getPayloadLevelAppStatList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    .line 1832
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1835
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getIpLayerNetworkStatList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 1836
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 1839
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    :cond_4
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    .line 1840
    return v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->version_:I

    return v0
.end method

.method public hasCurrentReportMsec()Z
    .locals 1

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1634
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1848
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1849
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1853
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1854
    :sswitch_0
    return-object p0

    .line 1859
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->setVersion(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    goto :goto_0

    .line 1863
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->setCurrentReportMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    goto :goto_0

    .line 1867
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;-><init>()V

    .line 1868
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1869
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addKeyToPackageNameMapping(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    goto :goto_0

    .line 1873
    .end local v1    # "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    :sswitch_4
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;-><init>()V

    .line 1874
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1875
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addPayloadLevelAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    goto :goto_0

    .line 1879
    .end local v1    # "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    :sswitch_5
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;-><init>()V

    .line 1880
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1881
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addIpLayerNetworkStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    goto :goto_0

    .line 1849
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1624
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentReportMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec:Z

    .line 1654
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->currentReportMsec_:J

    .line 1655
    return-object p0
.end method

.method public setVersion(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion:Z

    .line 1637
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->version_:I

    .line 1638
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1789
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1790
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1792
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1793
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getCurrentReportMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1795
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getKeyToPackageNameMappingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 1796
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1798
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getPayloadLevelAppStatList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    .line 1799
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1801
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getIpLayerNetworkStatList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 1802
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1804
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    :cond_4
    return-void
.end method
