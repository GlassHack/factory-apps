.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpLayerNetworkStat"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasNetworkDetails:Z

.field private hasType:Z

.field private ipLayerAppStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;",
            ">;"
        }
    .end annotation
.end field

.field private ipLayerNetworkBucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;",
            ">;"
        }
    .end annotation
.end field

.field private networkDetails_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1395
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1409
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->networkDetails_:Ljava/lang/String;

    .line 1426
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->type_:I

    .line 1442
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    .line 1475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    .line 1539
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    .line 1395
    return-void
.end method


# virtual methods
.method public addIpLayerAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .prologue
    .line 1492
    if-nez p1, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    .line 1498
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    return-object p0
.end method

.method public addIpLayerNetworkBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .prologue
    .line 1459
    if-nez p1, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    .line 1465
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1542
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    if-gez v0, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getSerializedSize()I

    .line 1546
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    return v0
.end method

.method public getIpLayerAppStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    return-object v0
.end method

.method public getIpLayerNetworkBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->networkDetails_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1551
    const/4 v2, 0x0

    .line 1552
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasNetworkDetails()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1553
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getNetworkDetails()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1556
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1557
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1560
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerNetworkBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 1561
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1564
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerAppStatList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 1565
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1568
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :cond_3
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    .line 1569
    return v2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->type_:I

    return v0
.end method

.method public hasNetworkDetails()Z
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasNetworkDetails:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1427
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1577
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1578
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1582
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1583
    :sswitch_0
    return-object p0

    .line 1588
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->setNetworkDetails(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    goto :goto_0

    .line 1592
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->setType(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    goto :goto_0

    .line 1596
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;-><init>()V

    .line 1597
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1598
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerNetworkBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    goto :goto_0

    .line 1602
    .end local v1    # "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    :sswitch_4
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;-><init>()V

    .line 1603
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1604
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    goto :goto_0

    .line 1578
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 1392
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    move-result-object v0

    return-object v0
.end method

.method public setNetworkDetails(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasNetworkDetails:Z

    .line 1414
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->networkDetails_:Ljava/lang/String;

    .line 1415
    return-object p0
.end method

.method public setType(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType:Z

    .line 1431
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->type_:I

    .line 1432
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasNetworkDetails()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1526
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getNetworkDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1528
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1529
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1531
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerNetworkBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 1532
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1534
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerAppStatList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 1535
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1537
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :cond_3
    return-void
.end method
