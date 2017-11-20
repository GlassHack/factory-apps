.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceSearchClientLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;


# instance fields
.field private applicationId_:Ljava/lang/String;

.field private applicationVersionName_:Ljava/lang/String;

.field private applicationVersion_:Ljava/lang/String;

.field private bitField0_:I

.field public bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

.field private deviceModel_:Ljava/lang/String;

.field public experimentId:[Ljava/lang/String;

.field public gsaConfigExperimentId:[I

.field private imeLangCount_:I

.field private installId_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private packageId_:Ljava/lang/String;

.field private pairedBluetooth_:Z

.field private platformId_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private requestTimeMsec_:J

.field private triggerApplicationId_:Ljava/lang/String;

.field private voicesearchLangCount_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 360
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 361
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    if-nez v0, :cond_1

    .line 42
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 365
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 366
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 376
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 377
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 378
    iput-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 379
    invoke-static {}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 380
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    .line 381
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 383
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 201
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 202
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 245
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 246
    return-object p0
.end method

.method public clearApplicationVersionName()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 267
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 268
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 179
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 180
    return-object p0
.end method

.method public clearImeLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 308
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 309
    return-object p0
.end method

.method public clearInstallId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 91
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 289
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 290
    return-object p0
.end method

.method public clearPackageId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 113
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public clearPairedBluetooth()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 346
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 347
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 135
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 136
    return-object p0
.end method

.method public clearPlatformVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 157
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 158
    return-object p0
.end method

.method public clearRequestTimeMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 69
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 70
    return-object p0
.end method

.method public clearTriggerApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 223
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 224
    return-object p0
.end method

.method public clearVoicesearchLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 327
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 328
    return-object p0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getImeLangCount()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    return v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPairedBluetooth()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    return v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimeMsec()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 456
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 457
    .local v4, "size":I
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 458
    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 461
    :cond_0
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 462
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 465
    :cond_1
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 466
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 469
    :cond_2
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    .line 470
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 473
    :cond_3
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4

    .line 474
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 477
    :cond_4
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 478
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 481
    :cond_5
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    .line 482
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 485
    :cond_6
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_7

    .line 486
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 489
    :cond_7
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_8

    .line 490
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 493
    :cond_8
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    array-length v5, v5

    if-lez v5, :cond_a

    .line 494
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 495
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    aget-object v2, v5, v3

    .line 496
    .local v2, "element":Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    if-eqz v2, :cond_9

    .line 497
    const/16 v5, 0xa

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 494
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    .end local v2    # "element":Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .end local v3    # "i":I
    :cond_a
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_b

    .line 503
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 506
    :cond_b
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_c

    .line 507
    const/16 v5, 0xc

    iget v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 510
    :cond_c
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_d

    .line 511
    const/16 v5, 0xd

    iget v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 514
    :cond_d
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_e

    .line 515
    const/16 v5, 0xe

    iget-boolean v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 518
    :cond_e
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_11

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 521
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_10

    .line 522
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 523
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 524
    add-int/lit8 v0, v0, 0x1

    .line 525
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 521
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 529
    .end local v2    # "element":Ljava/lang/String;
    :cond_10
    add-int/2addr v4, v1

    .line 530
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 532
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_11
    iget v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_12

    .line 533
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 536
    :cond_12
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    array-length v5, v5

    if-lez v5, :cond_14

    .line 537
    const/4 v1, 0x0

    .line 538
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    array-length v5, v5

    if-ge v3, v5, :cond_13

    .line 539
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    aget v2, v5, v3

    .line 540
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 543
    .end local v2    # "element":I
    :cond_13
    add-int/2addr v4, v1

    .line 544
    iget-object v5, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 546
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_14
    iput v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 547
    return v4
.end method

.method public getTriggerApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicesearchLangCount()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    return v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 241
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApplicationVersionName()Z
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 175
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImeLangCount()Z
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

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
    .line 87
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageId()Z
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPairedBluetooth()Z
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

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
    .line 131
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 153
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestTimeMsec()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 219
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoicesearchLangCount()Z
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

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
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 555
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 556
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 560
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 561
    :sswitch_0
    return-object p0

    .line 566
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 567
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 571
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 572
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 576
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 577
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 581
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 582
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 586
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 587
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 591
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 592
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 596
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 597
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 601
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 602
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto :goto_0

    .line 606
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 607
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto/16 :goto_0

    .line 611
    :sswitch_a
    const/16 v8, 0x52

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 613
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    if-nez v8, :cond_2

    move v1, v7

    .line 614
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 616
    .local v4, "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    if-eqz v1, :cond_1

    .line 617
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 620
    new-instance v8, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v8}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    aput-object v8, v4, v1

    .line 621
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 622
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 613
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :cond_2
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    array-length v1, v8

    goto :goto_1

    .line 625
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :cond_3
    new-instance v8, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v8}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    aput-object v8, v4, v1

    .line 626
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 627
    iput-object v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 631
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 632
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto/16 :goto_0

    .line 636
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 637
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto/16 :goto_0

    .line 641
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 642
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto/16 :goto_0

    .line 646
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 647
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto/16 :goto_0

    .line 651
    :sswitch_f
    const/16 v8, 0x7a

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 653
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    if-nez v8, :cond_5

    move v1, v7

    .line 654
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 655
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 656
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 659
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 660
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 653
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_3

    .line 663
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 664
    iput-object v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    goto/16 :goto_0

    .line 668
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 669
    iget v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    goto/16 :goto_0

    .line 673
    :sswitch_11
    const/16 v8, 0x88

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 675
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    if-nez v8, :cond_8

    move v1, v7

    .line 676
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 677
    .local v4, "newArray":[I
    if-eqz v1, :cond_7

    .line 678
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    :cond_7
    :goto_6
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    .line 681
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 682
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 675
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_8
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    array-length v1, v8

    goto :goto_5

    .line 685
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 686
    iput-object v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    goto/16 :goto_0

    .line 690
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 691
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 693
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 694
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 695
    .local v5, "startPos":I
    :goto_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_a

    .line 696
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 699
    :cond_a
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 700
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    if-nez v8, :cond_c

    move v1, v7

    .line 701
    .restart local v1    # "i":I
    :goto_8
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 702
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_b

    .line 703
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    :cond_b
    :goto_9
    array-length v8, v4

    if-ge v1, v8, :cond_d

    .line 706
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 700
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_c
    iget-object v8, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    array-length v1, v8

    goto :goto_8

    .line 708
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_d
    iput-object v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    .line 709
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x8a -> :sswitch_12
    .end sparse-switch
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 193
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 194
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 237
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 238
    return-object p0
.end method

.method public setApplicationVersionName(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 259
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 260
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 171
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 172
    return-object p0
.end method

.method public setImeLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 300
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 301
    return-object p0
.end method

.method public setInstallId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 83
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 281
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 282
    return-object p0
.end method

.method public setPackageId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 105
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 106
    return-object p0
.end method

.method public setPairedBluetooth(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 338
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 339
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 128
    return-object p0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 149
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 150
    return-object p0
.end method

.method public setRequestTimeMsec(J)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 61
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 215
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 216
    return-object p0
.end method

.method public setVoicesearchLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 319
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    .line 320
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 390
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 392
    :cond_0
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 393
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 395
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 396
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 398
    :cond_2
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 399
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 401
    :cond_3
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    .line 402
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 404
    :cond_4
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    .line 405
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 407
    :cond_5
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 408
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 410
    :cond_6
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    .line 411
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 413
    :cond_7
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_8

    .line 414
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 416
    :cond_8
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 417
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 418
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents:[Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    aget-object v0, v2, v1

    .line 419
    .local v0, "element":Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    if-eqz v0, :cond_9

    .line 420
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 417
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "element":Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .end local v1    # "i":I
    :cond_a
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 425
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 427
    :cond_b
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_c

    .line 428
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 430
    :cond_c
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_d

    .line 431
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 433
    :cond_d
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_e

    .line 434
    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 436
    :cond_e
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_10

    .line 437
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 438
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 439
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 440
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 437
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_10
    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_11

    .line 445
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 447
    :cond_11
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    array-length v2, v2

    if-lez v2, :cond_12

    .line 448
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 449
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->gsaConfigExperimentId:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 452
    .end local v1    # "i":I
    :cond_12
    return-void
.end method
