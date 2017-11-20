.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatCounters"
.end annotation


# instance fields
.field private cachedSize:I

.field private counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

.field private direction_:I

.field private fgBg_:I

.field private hasCounterData:Z

.field private hasDirection:Z

.field private hasFgBg:Z

.field private hasNetworkProto:Z

.field private networkProto_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 440
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 459
    iput v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->networkProto_:I

    .line 476
    iput v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->direction_:I

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 513
    iput v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->fgBg_:I

    .line 557
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    .line 440
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    if-gez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getSerializedSize()I

    .line 564
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    return v0
.end method

.method public getCounterData()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->direction_:I

    return v0
.end method

.method public getFgBg()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->fgBg_:I

    return v0
.end method

.method public getNetworkProto()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->networkProto_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getNetworkProto()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getDirection()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getCounterData()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 582
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 583
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getFgBg()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 586
    :cond_3
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    .line 587
    return v0
.end method

.method public hasCounterData()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData:Z

    return v0
.end method

.method public hasDirection()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection:Z

    return v0
.end method

.method public hasFgBg()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg:Z

    return v0
.end method

.method public hasNetworkProto()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 596
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 600
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    :sswitch_0
    return-object p0

    .line 606
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    goto :goto_0

    .line 610
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    goto :goto_0

    .line 614
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 615
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 616
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    goto :goto_0

    .line 620
    .end local v1    # "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    goto :goto_0

    .line 596
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
    .line 437
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    move-result-object v0

    return-object v0
.end method

.method public setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 500
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData:Z

    .line 501
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 502
    return-object p0
.end method

.method public setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection:Z

    .line 481
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->direction_:I

    .line 482
    return-object p0
.end method

.method public setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg:Z

    .line 518
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->fgBg_:I

    .line 519
    return-object p0
.end method

.method public setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto:Z

    .line 464
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->networkProto_:I

    .line 465
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getNetworkProto()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getDirection()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getCounterData()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 552
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getFgBg()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 555
    :cond_3
    return-void
.end method
