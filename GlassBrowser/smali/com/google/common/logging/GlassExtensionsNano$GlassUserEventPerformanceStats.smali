.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventPerformanceStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats$NetworkType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;


# instance fields
.field private availableMemoryKb_:I

.field private batteryChargeWhenFullUah_:I

.field private batteryStateOfChargeUah_:I

.field private batteryTemperatureMilliCentigrade_:I

.field private bitField0_:I

.field private boardTemperatureMilliCentigrade_:I

.field private frequencyScalingGovernor_:I

.field public frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

.field private isLowMemory_:Z

.field private networkType_:I

.field private qpassedFractional_:I

.field private qpassedInteger_:I

.field private reportedSoc_:I

.field private totalBytesSent_:J

.field private totalKernelMs_:J

.field private totalMemoryKb_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 119
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 122
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 141
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 160
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 179
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 198
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 217
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 236
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 255
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 274
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 293
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 312
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 331
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 350
    iput-boolean v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 369
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    .line 105
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    return-object v0
.end method


# virtual methods
.method public clearAvailableMemoryKb()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 326
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 327
    return-object p0
.end method

.method public clearBatteryChargeWhenFullUah()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 193
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 194
    return-object p0
.end method

.method public clearBatteryStateOfChargeUah()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 174
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 175
    return-object p0
.end method

.method public clearBatteryTemperatureMilliCentigrade()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 269
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 270
    return-object p0
.end method

.method public clearBoardTemperatureMilliCentigrade()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 155
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 156
    return-object p0
.end method

.method public clearFrequencyScalingGovernor()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 307
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 308
    return-object p0
.end method

.method public clearIsLowMemory()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 364
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 365
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    .line 383
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 384
    return-object p0
.end method

.method public clearQpassedFractional()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 250
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 251
    return-object p0
.end method

.method public clearQpassedInteger()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 231
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 232
    return-object p0
.end method

.method public clearReportedSoc()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 212
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 213
    return-object p0
.end method

.method public clearTotalBytesSent()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 2

    .prologue
    .line 287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 288
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 289
    return-object p0
.end method

.method public clearTotalKernelMs()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 136
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 137
    return-object p0
.end method

.method public clearTotalMemoryKb()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 345
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 346
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    if-ne p1, p0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v1

    .line 390
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 391
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 392
    .local v0, "other":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 407
    goto :goto_0

    .line 392
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    .line 407
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAvailableMemoryKb()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    return v0
.end method

.method public getBatteryChargeWhenFullUah()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    return v0
.end method

.method public getBatteryStateOfChargeUah()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    return v0
.end method

.method public getBatteryTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getBoardTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getFrequencyScalingGovernor()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    return v0
.end method

.method public getIsLowMemory()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    return v0
.end method

.method public getQpassedFractional()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    return v0
.end method

.method public getQpassedInteger()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    return v0
.end method

.method public getReportedSoc()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v2, :cond_1

    .line 495
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 496
    .local v0, "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    if-eqz v0, :cond_0

    .line 497
    const/4 v5, 0x1

    .line 498
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 495
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_1
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 503
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 504
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 506
    :cond_2
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 507
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 508
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 510
    :cond_3
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 511
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 512
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 514
    :cond_4
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 515
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 516
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 518
    :cond_5
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 519
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 520
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 522
    :cond_6
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    .line 523
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 524
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 526
    :cond_7
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 527
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 528
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 530
    :cond_8
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 531
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 532
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 534
    :cond_9
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 535
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 536
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 538
    :cond_a
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    .line 539
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 540
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 542
    :cond_b
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_c

    .line 543
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 544
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 546
    :cond_c
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_d

    .line 547
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 548
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 550
    :cond_d
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_e

    .line 551
    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 552
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 554
    :cond_e
    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_f

    .line 555
    const/16 v2, 0xf

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    .line 556
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 558
    :cond_f
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 559
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    .line 560
    return v1
.end method

.method public getTotalBytesSent()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    return-wide v0
.end method

.method public getTotalKernelMs()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    return-wide v0
.end method

.method public getTotalMemoryKb()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    return v0
.end method

.method public hasAvailableMemoryKb()Z
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 189
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 170
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 265
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 151
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 303
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 360
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 379
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 246
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 227
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 208
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 284
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 132
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 341
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

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
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 411
    const/16 v1, 0x11

    .line 412
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 418
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    iget-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 419
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    add-int v1, v2, v4

    .line 420
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    add-int v1, v2, v4

    .line 421
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    add-int v1, v2, v4

    .line 422
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    add-int v1, v2, v4

    .line 423
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    add-int v1, v2, v4

    .line 424
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    add-int v1, v2, v4

    .line 425
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    add-int v1, v2, v4

    .line 426
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    iget-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 427
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    add-int v1, v2, v4

    .line 428
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    add-int v1, v2, v4

    .line 429
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    add-int v1, v2, v4

    .line 430
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    add-int v1, v4, v2

    .line 431
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    add-int v1, v2, v4

    .line 432
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_1
    add-int v1, v2, v3

    .line 433
    return v1

    .line 414
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 415
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->hashCode()I

    move-result v2

    goto :goto_3

    .line 430
    .end local v0    # "i":I
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 432
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 568
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 569
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 573
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    if-nez v6, :cond_1

    .line 574
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    .line 577
    :cond_1
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 579
    :sswitch_0
    return-object p0

    .line 584
    :sswitch_1
    const/16 v6, 0xa

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 585
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v6, :cond_3

    move v1, v5

    .line 586
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 587
    .local v2, "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v6, :cond_2

    .line 588
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    :cond_2
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 591
    :goto_2
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 592
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    aput-object v7, v6, v1

    .line 593
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 594
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 585
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_3
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v1, v6

    goto :goto_1

    .line 597
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_4
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    aput-object v7, v6, v1

    .line 598
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 602
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 603
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto :goto_0

    .line 607
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 608
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto :goto_0

    .line 612
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 613
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 617
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 618
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 622
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 623
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 627
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 628
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 632
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 633
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 637
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 638
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 642
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 643
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 647
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 648
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 652
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 653
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 657
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 658
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 662
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 663
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 667
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 668
    .local v4, "temp":I
    if-eqz v4, :cond_5

    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x7

    if-eq v4, v6, :cond_5

    const/16 v6, 0xe

    if-eq v4, v6, :cond_5

    const/16 v6, 0xf

    if-ne v4, v6, :cond_6

    .line 674
    :cond_5
    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    .line 675
    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    goto/16 :goto_0

    .line 677
    :cond_6
    iput v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    goto/16 :goto_0

    .line 569
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
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public setAvailableMemoryKb(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    .line 318
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 319
    return-object p0
.end method

.method public setBatteryChargeWhenFullUah(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    .line 185
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 186
    return-object p0
.end method

.method public setBatteryStateOfChargeUah(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    .line 166
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 167
    return-object p0
.end method

.method public setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 260
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 261
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 262
    return-object p0
.end method

.method public setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 147
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 148
    return-object p0
.end method

.method public setFrequencyScalingGovernor(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    .line 299
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 300
    return-object p0
.end method

.method public setIsLowMemory(Z)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    .line 356
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 357
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    .line 375
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 376
    return-object p0
.end method

.method public setQpassedFractional(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    .line 242
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 243
    return-object p0
.end method

.method public setQpassedInteger(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    .line 223
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 224
    return-object p0
.end method

.method public setReportedSoc(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    .line 204
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public setTotalBytesSent(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 280
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 281
    return-object p0
.end method

.method public setTotalKernelMs(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 128
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 129
    return-object p0
.end method

.method public setTotalMemoryKb(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    .line 337
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    .line 338
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v1, :cond_1

    .line 439
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 440
    .local v0, "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    if-eqz v0, :cond_0

    .line 441
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 439
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "element":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_1
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 446
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 448
    :cond_2
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 449
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 451
    :cond_3
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 452
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 454
    :cond_4
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 455
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 457
    :cond_5
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    .line 458
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 460
    :cond_6
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 461
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 463
    :cond_7
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 464
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 466
    :cond_8
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 467
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 469
    :cond_9
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    .line 470
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedInteger_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 472
    :cond_a
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_b

    .line 473
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->qpassedFractional_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 475
    :cond_b
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_c

    .line 476
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->availableMemoryKb_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 478
    :cond_c
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_d

    .line 479
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalMemoryKb_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 481
    :cond_d
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_e

    .line 482
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->isLowMemory_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 484
    :cond_e
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_f

    .line 485
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->networkType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 487
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 489
    return-void
.end method
