.class public final Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassUserEventPerformanceStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/GlassUserEventPerformanceStats$NetworkType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;


# instance fields
.field private availableMemoryKb_:I

.field private batteryChargeWhenFullUah_:I

.field private batteryStateOfChargeUah_:I

.field private batteryTemperatureMilliCentigrade_:I

.field private bitField0_:I

.field private boardTemperatureMilliCentigrade_:I

.field private frequencyScalingGovernor_:I

.field public frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

.field private isLowMemory_:Z

.field private networkType_:I

.field private qpassedFractional_:I

.field private qpassedInteger_:I

.field private reportedSoc_:I

.field private totalBytesSent_:J

.field private totalKernelMs_:J

.field private totalMemoryKb_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->clear()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    .line 308
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    sput-object v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 686
    new-instance v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 311
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 312
    invoke-static {}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;->emptyArray()[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    .line 313
    iput-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 314
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 315
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 316
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 317
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 318
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 319
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 320
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 321
    iput-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 322
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 323
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 324
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 325
    iput-boolean v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 326
    iput v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->cachedSize:I

    .line 329
    return-object p0
.end method

.method public clearAvailableMemoryKb()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 238
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 239
    return-object p0
.end method

.method public clearBatteryChargeWhenFullUah()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 105
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 106
    return-object p0
.end method

.method public clearBatteryStateOfChargeUah()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 86
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 87
    return-object p0
.end method

.method public clearBatteryTemperatureMilliCentigrade()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 181
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 182
    return-object p0
.end method

.method public clearBoardTemperatureMilliCentigrade()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 67
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public clearFrequencyScalingGovernor()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 219
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 220
    return-object p0
.end method

.method public clearIsLowMemory()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 276
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 277
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    .line 301
    return-object p0
.end method

.method public clearQpassedFractional()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 162
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 163
    return-object p0
.end method

.method public clearQpassedInteger()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 143
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 144
    return-object p0
.end method

.method public clearReportedSoc()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 124
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 125
    return-object p0
.end method

.method public clearTotalBytesSent()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 2

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 200
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 201
    return-object p0
.end method

.method public clearTotalKernelMs()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 48
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public clearTotalMemoryKb()Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 257
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 258
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 491
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 492
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    aget-object v0, v3, v1

    .line 495
    .local v0, "element":Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    if-eqz v0, :cond_0

    .line 496
    const/4 v3, 0x1

    .line 497
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 493
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v0    # "element":Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 502
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 503
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 505
    :cond_2
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 506
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 507
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 509
    :cond_3
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 510
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 511
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 513
    :cond_4
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 514
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 515
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 517
    :cond_5
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    .line 518
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 519
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 521
    :cond_6
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_7

    .line 522
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 523
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 525
    :cond_7
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    .line 526
    const/16 v3, 0x8

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 527
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 529
    :cond_8
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_9

    .line 530
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 531
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 533
    :cond_9
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_a

    .line 534
    const/16 v3, 0xa

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 535
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 537
    :cond_a
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_b

    .line 538
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 539
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 541
    :cond_b
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_c

    .line 542
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 543
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 545
    :cond_c
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_d

    .line 546
    const/16 v3, 0xd

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 547
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 549
    :cond_d
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_e

    .line 550
    const/16 v3, 0xe

    iget-boolean v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 551
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 553
    :cond_e
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_f

    .line 554
    const/16 v3, 0xf

    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    .line 555
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 557
    :cond_f
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 334
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 337
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 340
    check-cast v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    .line 341
    .local v0, "other":Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 349
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    if-ne v3, v4, :cond_0

    .line 353
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    if-ne v3, v4, :cond_0

    .line 357
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    if-ne v3, v4, :cond_0

    .line 361
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    if-ne v3, v4, :cond_0

    .line 365
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    if-ne v3, v4, :cond_0

    .line 369
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    if-ne v3, v4, :cond_0

    .line 373
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    if-ne v3, v4, :cond_0

    .line 377
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 381
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    if-ne v3, v4, :cond_0

    .line 385
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    if-ne v3, v4, :cond_0

    .line 389
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    if-ne v3, v4, :cond_0

    .line 393
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    if-ne v3, v4, :cond_0

    .line 397
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    if-ne v3, v4, :cond_0

    .line 401
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 402
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getAvailableMemoryKb()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    return v0
.end method

.method public getBatteryChargeWhenFullUah()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    return v0
.end method

.method public getBatteryStateOfChargeUah()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    return v0
.end method

.method public getBatteryTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getBoardTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getFrequencyScalingGovernor()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    return v0
.end method

.method public getIsLowMemory()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    return v0
.end method

.method public getQpassedFractional()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    return v0
.end method

.method public getQpassedInteger()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    return v0
.end method

.method public getReportedSoc()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    return v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    return-wide v0
.end method

.method public getTotalKernelMs()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    return-wide v0
.end method

.method public getTotalMemoryKb()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    return v0
.end method

.method public hasAvailableMemoryKb()Z
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBatteryChargeWhenFullUah()Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBatteryStateOfChargeUah()Z
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBatteryTemperatureMilliCentigrade()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBoardTemperatureMilliCentigrade()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFrequencyScalingGovernor()Z
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsLowMemory()Z
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQpassedFractional()Z
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQpassedInteger()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReportedSoc()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalBytesSent()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalKernelMs()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalMemoryKb()Z
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 409
    const/16 v0, 0x11

    .line 410
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 411
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    .line 412
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 413
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 414
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    add-int v0, v1, v2

    .line 415
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    add-int v0, v1, v2

    .line 416
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    add-int v0, v1, v2

    .line 417
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    add-int v0, v1, v2

    .line 418
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    add-int v0, v1, v2

    .line 419
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    add-int v0, v1, v2

    .line 420
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    add-int v0, v1, v2

    .line 421
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 422
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    add-int v0, v1, v2

    .line 423
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    add-int v0, v1, v2

    .line 424
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    add-int v0, v1, v2

    .line 425
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 426
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    add-int v0, v1, v2

    .line 427
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 428
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 429
    :goto_1
    add-int v0, v2, v1

    .line 430
    return v0

    .line 425
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 566
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 570
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 571
    :sswitch_0
    return-object p0

    .line 576
    :sswitch_1
    const/16 v7, 0xa

    .line 577
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 578
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    if-nez v7, :cond_2

    move v1, v6

    .line 579
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    .line 581
    .local v3, "newArray":[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    if-eqz v1, :cond_1

    .line 582
    iget-object v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 585
    new-instance v7, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    invoke-direct {v7}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;-><init>()V

    aput-object v7, v3, v1

    .line 586
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 587
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 578
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    :cond_2
    iget-object v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    array-length v1, v7

    goto :goto_1

    .line 590
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    :cond_3
    new-instance v7, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    invoke-direct {v7}, Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;-><init>()V

    aput-object v7, v3, v1

    .line 591
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 592
    iput-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    goto :goto_0

    .line 596
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 597
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto :goto_0

    .line 601
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 602
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto :goto_0

    .line 606
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 607
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto :goto_0

    .line 611
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 612
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 616
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 617
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 621
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 622
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 626
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 627
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 631
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 632
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 636
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 637
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 641
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 642
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 646
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 647
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 651
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 652
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 656
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 657
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 661
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 662
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 663
    .local v5, "value":I
    sparse-switch v5, :sswitch_data_1

    .line 674
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 675
    invoke-virtual {p0, p1, v4}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 670
    :sswitch_10
    iput v5, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    .line 671
    iget v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch

    .line 663
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_10
        0x0 -> :sswitch_10
        0x1 -> :sswitch_10
        0x7 -> :sswitch_10
        0xe -> :sswitch_10
        0xf -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public setAvailableMemoryKb(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 243
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 244
    return-object p0
.end method

.method public setBatteryChargeWhenFullUah(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 110
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 111
    return-object p0
.end method

.method public setBatteryStateOfChargeUah(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 91
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 186
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 187
    return-object p0
.end method

.method public setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 72
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 73
    return-object p0
.end method

.method public setFrequencyScalingGovernor(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 224
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 225
    return-object p0
.end method

.method public setIsLowMemory(Z)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 281
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 282
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    .line 292
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 293
    return-object p0
.end method

.method public setQpassedFractional(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 167
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 168
    return-object p0
.end method

.method public setQpassedInteger(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 148
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 149
    return-object p0
.end method

.method public setReportedSoc(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 129
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 130
    return-object p0
.end method

.method public setTotalBytesSent(J)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 205
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 206
    return-object p0
.end method

.method public setTotalKernelMs(J)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 53
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setTotalMemoryKb(I)Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 262
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    .line 263
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 437
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;

    aget-object v0, v2, v1

    .line 439
    .local v0, "element":Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    if-eqz v0, :cond_0

    .line 440
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 437
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "element":Lcom/google/common/logging/nano/GlassUserEventFrequencyStat;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 445
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalKernelMs_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 447
    :cond_2
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 448
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 450
    :cond_3
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 451
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 453
    :cond_4
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 454
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 456
    :cond_5
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 457
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 459
    :cond_6
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    .line 460
    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalBytesSent_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 462
    :cond_7
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 463
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->reportedSoc_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 465
    :cond_8
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 466
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 468
    :cond_9
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 469
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedInteger_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 471
    :cond_a
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    .line 472
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->qpassedFractional_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 474
    :cond_b
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_c

    .line 475
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->availableMemoryKb_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 477
    :cond_c
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_d

    .line 478
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->totalMemoryKb_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 480
    :cond_d
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_e

    .line 481
    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->isLowMemory_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 483
    :cond_e
    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_f

    .line 484
    const/16 v2, 0xf

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->networkType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 486
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 487
    return-void
.end method
