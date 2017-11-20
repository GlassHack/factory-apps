.class public final Lcom/google/wireless/android/nova/Common$DeviceDescription;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/nova/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceDescription"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/android/nova/Common$DeviceDescription;


# instance fields
.field private androidId_:J

.field private bitField0_:I

.field private carrier_:Ljava/lang/String;

.field public deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

.field private lastUsedTimestampSec_:J

.field private manufacturer_:Ljava/lang/String;

.field private modelName_:Ljava/lang/String;

.field private nickname_:Ljava/lang/String;

.field private purchaseTimestampSec_:J

.field private registrationTimestampSec_:J

.field private sdkVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/google/wireless/android/nova/Common$DeviceDescription;->clear()Lcom/google/wireless/android/nova/Common$DeviceDescription;

    .line 215
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->_emptyArray:[Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->_emptyArray:[Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/android/nova/Common$DeviceDescription;

    sput-object v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->_emptyArray:[Lcom/google/wireless/android/nova/Common$DeviceDescription;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->_emptyArray:[Lcom/google/wireless/android/nova/Common$DeviceDescription;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-direct {v0}, Lcom/google/wireless/android/nova/Common$DeviceDescription;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/android/nova/Common$DeviceDescription;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$DeviceDescription;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-direct {v0}, Lcom/google/wireless/android/nova/Common$DeviceDescription;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 218
    iput v3, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->nickname_:Ljava/lang/String;

    .line 220
    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->androidId_:J

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->modelName_:Ljava/lang/String;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->manufacturer_:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->carrier_:Ljava/lang/String;

    .line 224
    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->lastUsedTimestampSec_:J

    .line 225
    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->registrationTimestampSec_:J

    .line 226
    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->purchaseTimestampSec_:J

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    .line 228
    iput v3, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->sdkVersion_:I

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->cachedSize:I

    .line 230
    return-object p0
.end method

.method public clearAndroidId()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 2

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->androidId_:J

    .line 64
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 65
    return-object p0
.end method

.method public clearCarrier()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1

    .prologue
    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->carrier_:Ljava/lang/String;

    .line 130
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 131
    return-object p0
.end method

.method public clearLastUsedTimestampSec()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 2

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->lastUsedTimestampSec_:J

    .line 149
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 150
    return-object p0
.end method

.method public clearManufacturer()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1

    .prologue
    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->manufacturer_:Ljava/lang/String;

    .line 108
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 109
    return-object p0
.end method

.method public clearModelName()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1

    .prologue
    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->modelName_:Ljava/lang/String;

    .line 86
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 87
    return-object p0
.end method

.method public clearNickname()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->nickname_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public clearPurchaseTimestampSec()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 2

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->purchaseTimestampSec_:J

    .line 187
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 188
    return-object p0
.end method

.method public clearRegistrationTimestampSec()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 2

    .prologue
    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->registrationTimestampSec_:J

    .line 168
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 169
    return-object p0
.end method

.method public clearSdkVersion()Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->sdkVersion_:I

    .line 209
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 210
    return-object p0
.end method

.method public getAndroidId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->androidId_:J

    return-wide v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->carrier_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUsedTimestampSec()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->lastUsedTimestampSec_:J

    return-wide v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->manufacturer_:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->modelName_:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTimestampSec()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->purchaseTimestampSec_:J

    return-wide v0
.end method

.method public getRegistrationTimestampSec()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->registrationTimestampSec_:J

    return-wide v0
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->sdkVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 270
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 271
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->nickname_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 275
    :cond_0
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 276
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->androidId_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_1
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 280
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->modelName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_2
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 284
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->manufacturer_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    :cond_3
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 288
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->carrier_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    :cond_4
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 292
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->lastUsedTimestampSec_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    :cond_5
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 296
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->registrationTimestampSec_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_6
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 300
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->purchaseTimestampSec_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    if-eqz v1, :cond_8

    .line 304
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_8
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 308
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->sdkVersion_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_9
    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->cachedSize:I

    .line 312
    return v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCarrier()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastUsedTimestampSec()Z
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasManufacturer()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModelName()Z
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPurchaseTimestampSec()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegistrationTimestampSec()Z
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/nova/Common$DeviceDescription;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$DeviceDescription;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 321
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 325
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    :sswitch_0
    return-object p0

    .line 331
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->nickname_:Ljava/lang/String;

    .line 332
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 336
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->androidId_:J

    .line 337
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 341
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->modelName_:Ljava/lang/String;

    .line 342
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 346
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->manufacturer_:Ljava/lang/String;

    .line 347
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 351
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->carrier_:Ljava/lang/String;

    .line 352
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 356
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->lastUsedTimestampSec_:J

    .line 357
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 361
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->registrationTimestampSec_:J

    .line 362
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 366
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->purchaseTimestampSec_:J

    .line 367
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto :goto_0

    .line 371
    :sswitch_9
    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    if-nez v1, :cond_1

    .line 372
    new-instance v1, Lcom/google/wireless/android/nova/Common$Image;

    invoke-direct {v1}, Lcom/google/wireless/android/nova/Common$Image;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 378
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->sdkVersion_:I

    .line 379
    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    goto/16 :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public setAndroidId(J)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->androidId_:J

    .line 56
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 57
    return-object p0
.end method

.method public setCarrier(Ljava/lang/String;)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->carrier_:Ljava/lang/String;

    .line 122
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 123
    return-object p0
.end method

.method public setLastUsedTimestampSec(J)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->lastUsedTimestampSec_:J

    .line 141
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 142
    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->manufacturer_:Ljava/lang/String;

    .line 100
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 101
    return-object p0
.end method

.method public setModelName(Ljava/lang/String;)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->modelName_:Ljava/lang/String;

    .line 78
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 79
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->nickname_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public setPurchaseTimestampSec(J)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->purchaseTimestampSec_:J

    .line 179
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 180
    return-object p0
.end method

.method public setRegistrationTimestampSec(J)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->registrationTimestampSec_:J

    .line 160
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 161
    return-object p0
.end method

.method public setSdkVersion(I)Lcom/google/wireless/android/nova/Common$DeviceDescription;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->sdkVersion_:I

    .line 201
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    .line 202
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
    .line 236
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->nickname_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 239
    :cond_0
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 240
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->androidId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 242
    :cond_1
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->modelName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 245
    :cond_2
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 246
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->manufacturer_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 248
    :cond_3
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 249
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->carrier_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 251
    :cond_4
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 252
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->lastUsedTimestampSec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 254
    :cond_5
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 255
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->registrationTimestampSec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 257
    :cond_6
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 258
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->purchaseTimestampSec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    if-eqz v0, :cond_8

    .line 261
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->deviceStockImage:Lcom/google/wireless/android/nova/Common$Image;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 263
    :cond_8
    iget v0, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 264
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/wireless/android/nova/Common$DeviceDescription;->sdkVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 266
    :cond_9
    return-void
.end method
