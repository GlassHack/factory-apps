.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppBucket"
.end annotation


# instance fields
.field private bucketDurationMsec_:J

.field private bucketStartMsec_:J

.field private cachedSize:I

.field private hasBucketDurationMsec:Z

.field private hasBucketStartMsec:Z

.field private hasOperationCount:Z

.field private operationCount_:J

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

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 648
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketStartMsec_:J

    .line 665
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketDurationMsec_:J

    .line 681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    .line 715
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->operationCount_:J

    .line 759
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    .line 643
    return-void
.end method


# virtual methods
.method public addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .prologue
    .line 698
    if-nez p1, :cond_0

    .line 699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    return-object p0
.end method

.method public getBucketDurationMsec()J
    .locals 2

    .prologue
    .line 666
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketDurationMsec_:J

    return-wide v0
.end method

.method public getBucketStartMsec()J
    .locals 2

    .prologue
    .line 649
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketStartMsec_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    if-gez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getSerializedSize()I

    .line 766
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    return v0
.end method

.method public getOperationCount()J
    .locals 2

    .prologue
    .line 716
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->operationCount_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 771
    const/4 v2, 0x0

    .line 772
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketStartMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 777
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketDurationMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getStatCountersList()Ljava/util/List;

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

    .line 781
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 784
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 785
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getOperationCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 788
    :cond_3
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    .line 789
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
    .line 684
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    return-object v0
.end method

.method public hasBucketDurationMsec()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec:Z

    return v0
.end method

.method public hasBucketStartMsec()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec:Z

    return v0
.end method

.method public hasOperationCount()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 798
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 802
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 803
    :sswitch_0
    return-object p0

    .line 808
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    goto :goto_0

    .line 812
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    goto :goto_0

    .line 816
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 817
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 818
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    goto :goto_0

    .line 822
    .end local v1    # "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setOperationCount(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    goto :goto_0

    .line 798
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
    .line 640
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    move-result-object v0

    return-object v0
.end method

.method public setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec:Z

    .line 670
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketDurationMsec_:J

    .line 671
    return-object p0
.end method

.method public setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec:Z

    .line 653
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketStartMsec_:J

    .line 654
    return-object p0
.end method

.method public setOperationCount(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount:Z

    .line 720
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->operationCount_:J

    .line 721
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
    .line 745
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketStartMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 749
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketDurationMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 751
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getStatCountersList()Ljava/util/List;

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

    .line 752
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 754
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 755
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getOperationCount()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 757
    :cond_3
    return-void
.end method
