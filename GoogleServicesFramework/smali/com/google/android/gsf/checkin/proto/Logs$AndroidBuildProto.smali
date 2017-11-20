.class public final Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidBuildProto"
.end annotation


# instance fields
.field private bootloader_:Ljava/lang/String;

.field private buildProduct_:Ljava/lang/String;

.field private cachedSize:I

.field private carrier_:Ljava/lang/String;

.field private client_:Ljava/lang/String;

.field private device_:Ljava/lang/String;

.field private googleServices_:I

.field private hasBootloader:Z

.field private hasBuildProduct:Z

.field private hasCarrier:Z

.field private hasClient:Z

.field private hasDevice:Z

.field private hasGoogleServices:Z

.field private hasId:Z

.field private hasManufacturer:Z

.field private hasModel:Z

.field private hasOtaInstalled:Z

.field private hasProduct:Z

.field private hasRadio:Z

.field private hasSdkVersion:Z

.field private hasTimestamp:Z

.field private id_:Ljava/lang/String;

.field private manufacturer_:Ljava/lang/String;

.field private model_:Ljava/lang/String;

.field private otaInstalled_:Z

.field private product_:Ljava/lang/String;

.field private radio_:Ljava/lang/String;

.field private sdkVersion_:I

.field private timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->id_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->radio_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->bootloader_:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->product_:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->carrier_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->client_:Ljava/lang/String;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->timestamp_:J

    .line 134
    iput v2, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->googleServices_:I

    .line 151
    iput v2, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->sdkVersion_:I

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->device_:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->model_:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->manufacturer_:Ljava/lang/String;

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->buildProduct_:Ljava/lang/String;

    .line 236
    iput-boolean v2, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->otaInstalled_:Z

    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getBootloader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->bootloader_:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->buildProduct_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getSerializedSize()I

    .line 327
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->cachedSize:I

    return v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->carrier_:Ljava/lang/String;

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->client_:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->device_:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleServices()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->googleServices_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->manufacturer_:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public getOtaInstalled()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->otaInstalled_:Z

    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->product_:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->radio_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->sdkVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasCarrier()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasRadio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getRadio()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBootloader()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getBootloader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasClient()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getClient()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasGoogleServices()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 362
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getGoogleServices()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasDevice()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 366
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 370
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getSdkVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 374
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasManufacturer()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 378
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBuildProduct()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 382
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getBuildProduct()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasOtaInstalled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 386
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getOtaInstalled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_d
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->cachedSize:I

    .line 390
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->timestamp_:J

    return-wide v0
.end method

.method public hasBootloader()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBootloader:Z

    return v0
.end method

.method public hasBuildProduct()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBuildProduct:Z

    return v0
.end method

.method public hasCarrier()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasCarrier:Z

    return v0
.end method

.method public hasClient()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasClient:Z

    return v0
.end method

.method public hasDevice()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasDevice:Z

    return v0
.end method

.method public hasGoogleServices()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasGoogleServices:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasId:Z

    return v0
.end method

.method public hasManufacturer()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasManufacturer:Z

    return v0
.end method

.method public hasModel()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasModel:Z

    return v0
.end method

.method public hasOtaInstalled()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasOtaInstalled:Z

    return v0
.end method

.method public hasProduct()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasProduct:Z

    return v0
.end method

.method public hasRadio()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasRadio:Z

    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasSdkVersion:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasTimestamp:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 399
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 403
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    :sswitch_0
    return-object p0

    .line 409
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setId(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 413
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setProduct(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 417
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setCarrier(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 421
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setRadio(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 425
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setBootloader(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 429
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setClient(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 433
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setTimestamp(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 437
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setGoogleServices(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 441
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setDevice(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 445
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setSdkVersion(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 449
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setModel(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 453
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setManufacturer(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 457
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setBuildProduct(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 461
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->setOtaInstalled(Z)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    goto :goto_0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    move-result-object v0

    return-object v0
.end method

.method public setBootloader(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBootloader:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->bootloader_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setBuildProduct(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBuildProduct:Z

    .line 224
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->buildProduct_:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setCarrier(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasCarrier:Z

    .line 88
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->carrier_:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setClient(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasClient:Z

    .line 105
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->client_:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setDevice(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasDevice:Z

    .line 173
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->device_:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setGoogleServices(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasGoogleServices:Z

    .line 139
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->googleServices_:I

    .line 140
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasId:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->id_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasManufacturer:Z

    .line 207
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->manufacturer_:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasModel:Z

    .line 190
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->model_:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setOtaInstalled(Z)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasOtaInstalled:Z

    .line 241
    iput-boolean p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->otaInstalled_:Z

    .line 242
    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasProduct:Z

    .line 71
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->product_:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setRadio(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasRadio:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->radio_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setSdkVersion(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasSdkVersion:Z

    .line 156
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->sdkVersion_:I

    .line 157
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasTimestamp:Z

    .line 122
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->timestamp_:J

    .line 123
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasCarrier()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasRadio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getRadio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBootloader()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getBootloader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 291
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasClient()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getClient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 294
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 297
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasGoogleServices()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getGoogleServices()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 300
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 301
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 303
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasSdkVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 304
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getSdkVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 306
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 309
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasManufacturer()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 310
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 312
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasBuildProduct()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 313
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getBuildProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 315
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->hasOtaInstalled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 316
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;->getOtaInstalled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 318
    :cond_d
    return-void
.end method
