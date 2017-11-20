.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# static fields
.field public static final DISCLOSED_CAPABILITY_CAPABILITY_ARTWORK:I = 0x1

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_SHOPPING:I = 0x0

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_TRANSLATE:I = 0x2

.field public static final FRONTEND_NAME_FRONTEND_GOGGLES:I = 0x32

.field public static final FRONTEND_NAME_FRONTEND_S3:I = 0x1

.field public static final FRONTEND_NAME_FRONTEND_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_NETWORK_BLUETOOTH:I = 0x3

.field public static final NETWORK_TYPE_NETWORK_MOBILE:I = 0x2

.field public static final NETWORK_TYPE_NETWORK_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_NETWORK_WIFI:I = 0x1

.field public static final NETWORK_TYPE_NETWORK_WIMAX:I = 0x5

.field public static final NETWORK_TYPE_NETWORK_WIRED:I = 0x4

.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;


# instance fields
.field private applicationId_:Ljava/lang/String;

.field private applicationVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private canLogImage_:Z

.field private canLogLocation_:Z

.field private deviceModel_:Ljava/lang/String;

.field public disclosedCapabilities:[I

.field private frontendName_:I

.field private installId_:Ljava/lang/String;

.field private isSpdy_:Z

.field private isSsl_:Z

.field private networkType_:I

.field private platformId_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private roundTripTimeMs_:I

.field private triggerApplicationId_:Ljava/lang/String;

.field private userIpAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 358
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 359
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    if-nez v0, :cond_1

    .line 33
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 362
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 366
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 369
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 371
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    .line 372
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    .line 373
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    .line 374
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    .line 375
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    .line 376
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    .line 377
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    .line 379
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->cachedSize:I

    .line 380
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    .line 151
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 152
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 173
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 174
    return-object p0
.end method

.method public clearCanLogImage()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    .line 312
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 313
    return-object p0
.end method

.method public clearCanLogLocation()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    .line 331
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 332
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 129
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 130
    return-object p0
.end method

.method public clearFrontendName()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    .line 293
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 294
    return-object p0
.end method

.method public clearInstallId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    .line 63
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 64
    return-object p0
.end method

.method public clearIsSpdy()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    .line 236
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 237
    return-object p0
.end method

.method public clearIsSsl()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    .line 255
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 256
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    .line 217
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 218
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    .line 85
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 86
    return-object p0
.end method

.method public clearPlatformVersion()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 107
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 108
    return-object p0
.end method

.method public clearRoundTripTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    .line 274
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 275
    return-object p0
.end method

.method public clearTriggerApplicationId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 198
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 199
    return-object p0
.end method

.method public clearUserIpAddress()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    .line 353
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 354
    return-object p0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanLogImage()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    return v0
.end method

.method public getCanLogLocation()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontendName()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    return v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSpdy()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    return v0
.end method

.method public getIsSsl()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    return v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundTripTimeMs()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 440
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 441
    .local v3, "size":I
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 442
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 445
    :cond_0
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 446
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 449
    :cond_1
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 450
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 453
    :cond_2
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 454
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 457
    :cond_3
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 458
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 461
    :cond_4
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    .line 462
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 465
    :cond_5
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 466
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 469
    :cond_6
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_7

    .line 470
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 473
    :cond_7
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_8

    .line 474
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 477
    :cond_8
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_9

    .line 478
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 481
    :cond_9
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_a

    .line 482
    const/16 v4, 0xb

    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 485
    :cond_a
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_b

    .line 486
    const/16 v4, 0xd

    iget-boolean v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 489
    :cond_b
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_c

    .line 490
    const/16 v4, 0xe

    iget-boolean v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 493
    :cond_c
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_d

    .line 494
    const/16 v4, 0xf

    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 497
    :cond_d
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    array-length v4, v4

    if-lez v4, :cond_f

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    array-length v4, v4

    if-ge v2, v4, :cond_e

    .line 500
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    aget v1, v4, v2

    .line 501
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "element":I
    :cond_e
    add-int/2addr v3, v0

    .line 505
    iget-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 507
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_f
    iget v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_10

    .line 508
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 511
    :cond_10
    iput v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->cachedSize:I

    .line 512
    return v3
.end method

.method public getTriggerApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApplicationVersion()Z
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanLogImage()Z
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanLogLocation()Z
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceModel()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFrontendName()Z
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstallId()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsSpdy()Z
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsSsl()Z
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 213
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlatformId()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlatformVersion()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRoundTripTimeMs()Z
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTriggerApplicationId()Z
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserIpAddress()Z
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 520
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 521
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 525
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 526
    :sswitch_0
    return-object p0

    .line 531
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    .line 532
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 536
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    .line 537
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 541
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 542
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 546
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 547
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 551
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    .line 552
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 556
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 557
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 561
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 562
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 566
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    .line 567
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 571
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    .line 572
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 576
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    .line 577
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 581
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    .line 582
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 586
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    .line 587
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 591
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    .line 592
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 596
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    .line 597
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 601
    :sswitch_f
    const/16 v8, 0x80

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 603
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 604
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 605
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 606
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 609
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 610
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 603
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    array-length v1, v8

    goto :goto_1

    .line 613
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 614
    iput-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    goto/16 :goto_0

    .line 618
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 619
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 621
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 622
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 623
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 624
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 627
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 628
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 629
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 630
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 631
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 634
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 628
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    array-length v1, v8

    goto :goto_4

    .line 636
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    .line 637
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 641
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    .line 642
    iget v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
    .end sparse-switch
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
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    .line 143
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 144
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 165
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 166
    return-object p0
.end method

.method public setCanLogImage(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    .line 304
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 305
    return-object p0
.end method

.method public setCanLogLocation(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    .line 323
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 324
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 121
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 122
    return-object p0
.end method

.method public setFrontendName(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    .line 285
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 286
    return-object p0
.end method

.method public setInstallId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 56
    return-object p0
.end method

.method public setIsSpdy(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    .line 228
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 229
    return-object p0
.end method

.method public setIsSsl(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    .line 247
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 248
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    .line 209
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 210
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    .line 77
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 78
    return-object p0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 99
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 100
    return-object p0
.end method

.method public setRoundTripTimeMs(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    .line 266
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 267
    return-object p0
.end method

.method public setTriggerApplicationId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 190
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 191
    return-object p0
.end method

.method public setUserIpAddress(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 344
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    .line 345
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    .line 346
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
    .line 386
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 387
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 389
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 392
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 393
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 395
    :cond_2
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 396
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 398
    :cond_3
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 399
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 401
    :cond_4
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 402
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 404
    :cond_5
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 405
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 407
    :cond_6
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 408
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 410
    :cond_7
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 411
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 413
    :cond_8
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 414
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 416
    :cond_9
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 417
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 419
    :cond_a
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    .line 420
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 422
    :cond_b
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    .line 423
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 425
    :cond_c
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_d

    .line 426
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 428
    :cond_d
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    array-length v1, v1

    if-lez v1, :cond_e

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 430
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "i":I
    :cond_e
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_f

    .line 434
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 436
    :cond_f
    return-void
.end method
