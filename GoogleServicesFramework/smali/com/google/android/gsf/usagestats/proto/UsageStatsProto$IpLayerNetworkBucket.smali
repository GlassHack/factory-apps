.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpLayerNetworkBucket"
.end annotation


# instance fields
.field private bucketDurationMsec_:J

.field private bucketStartMsec_:J

.field private cachedSize:I

.field private hasBucketDurationMsec:Z

.field private hasBucketStartMsec:Z

.field private hasNetworkActiveDuration:Z

.field private networkActiveDuration_:J

.field private statCounters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 845
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 850
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketStartMsec_:J

    .line 867
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketDurationMsec_:J

    .line 883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    .line 917
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->networkActiveDuration_:J

    .line 961
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    .line 845
    return-void
.end method


# virtual methods
.method public addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .prologue
    .line 900
    if-nez p1, :cond_0

    .line 901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    return-object p0
.end method

.method public getBucketDurationMsec()J
    .locals 2

    .prologue
    .line 868
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketDurationMsec_:J

    return-wide v0
.end method

.method public getBucketStartMsec()J
    .locals 2

    .prologue
    .line 851
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketStartMsec_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    if-gez v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getSerializedSize()I

    .line 968
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    return v0
.end method

.method public getNetworkActiveDuration()J
    .locals 2

    .prologue
    .line 918
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->networkActiveDuration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 973
    const/4 v2, 0x0

    .line 974
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketStartMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 979
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketDurationMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 982
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getStatCountersList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 983
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 986
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 987
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getNetworkActiveDuration()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 990
    :cond_3
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    .line 991
    return v2
.end method

.method public getStatCountersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    return-object v0
.end method

.method public hasBucketDurationMsec()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec:Z

    return v0
.end method

.method public hasBucketStartMsec()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec:Z

    return v0
.end method

.method public hasNetworkActiveDuration()Z
    .locals 1

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1000
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1004
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    :sswitch_0
    return-object p0

    .line 1010
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    goto :goto_0

    .line 1014
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    goto :goto_0

    .line 1018
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 1019
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1020
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    goto :goto_0

    .line 1024
    .end local v1    # "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setNetworkActiveDuration(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    goto :goto_0

    .line 1000
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 842
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    move-result-object v0

    return-object v0
.end method

.method public setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec:Z

    .line 872
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketDurationMsec_:J

    .line 873
    return-object p0
.end method

.method public setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec:Z

    .line 855
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketStartMsec_:J

    .line 856
    return-object p0
.end method

.method public setNetworkActiveDuration(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration:Z

    .line 922
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->networkActiveDuration_:J

    .line 923
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
    .line 947
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketStartMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketDurationMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getStatCountersList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 954
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 956
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 957
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getNetworkActiveDuration()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 959
    :cond_3
    return-void
.end method
