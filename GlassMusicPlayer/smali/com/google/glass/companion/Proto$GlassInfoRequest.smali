.class public final Lcom/google/glass/companion/Proto$GlassInfoRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoRequest;


# instance fields
.field private bitField0_:I

.field private requestBatteryLevel_:Z

.field private requestDeviceName_:Z

.field private requestNeedSetup_:Z

.field private requestScreenDimensions_:Z

.field private requestSoftwareVersion_:Z

.field private requestStorageInfo_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4265
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassInfoRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4266
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4271
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4290
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4309
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4328
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4347
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4366
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4266
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4528
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4522
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-object v0
.end method


# virtual methods
.method public final clearRequestBatteryLevel()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4285
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4286
    return-object p0
.end method

.method public final clearRequestDeviceName()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4323
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4324
    return-object p0
.end method

.method public final clearRequestNeedSetup()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4361
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4362
    return-object p0
.end method

.method public final clearRequestScreenDimensions()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4380
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4381
    return-object p0
.end method

.method public final clearRequestSoftwareVersion()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4342
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4343
    return-object p0
.end method

.method public final clearRequestStorageInfo()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4304
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4305
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4386
    if-ne p1, p0, :cond_1

    .line 4395
    :cond_0
    :goto_0
    return v0

    .line 4387
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 4388
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 4389
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 4395
    goto :goto_0

    .line 4389
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    .line 4395
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 4273
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    return v0
.end method

.method public final getRequestDeviceName()Z
    .locals 1

    .prologue
    .line 4311
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    return v0
.end method

.method public final getRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 4349
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    return v0
.end method

.method public final getRequestScreenDimensions()Z
    .locals 1

    .prologue
    .line 4368
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    return v0
.end method

.method public final getRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 4330
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    return v0
.end method

.method public final getRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 4292
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 4436
    const/4 v0, 0x0

    .line 4437
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4438
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4439
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4441
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4442
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4443
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4445
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4446
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4447
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4449
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4450
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4451
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4453
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4454
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4455
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4457
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4458
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4459
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4461
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4462
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    .line 4463
    return v0
.end method

.method public final hasRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 4281
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestDeviceName()Z
    .locals 1

    .prologue
    .line 4319
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 4357
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestScreenDimensions()Z
    .locals 1

    .prologue
    .line 4376
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 4338
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 4300
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4399
    .line 4400
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 4401
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 4402
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 4403
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 4404
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    .line 4405
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    if-eqz v3, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 4406
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_6
    add-int/2addr v0, v1

    .line 4407
    return v0

    :cond_0
    move v0, v2

    .line 4400
    goto :goto_0

    :cond_1
    move v0, v2

    .line 4401
    goto :goto_1

    :cond_2
    move v0, v2

    .line 4402
    goto :goto_2

    :cond_3
    move v0, v2

    .line 4403
    goto :goto_3

    :cond_4
    move v0, v2

    .line 4404
    goto :goto_4

    :cond_5
    move v1, v2

    .line 4405
    goto :goto_5

    .line 4406
    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_6
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 2

    .prologue
    .line 4471
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4472
    sparse-switch v0, :sswitch_data_0

    .line 4476
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    .line 4480
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4482
    :sswitch_0
    return-object p0

    .line 4487
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4488
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4492
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4493
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4497
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4498
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4502
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4503
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4507
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4508
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4512
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4513
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4472
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4262
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setRequestBatteryLevel(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4276
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4277
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4278
    return-object p0
.end method

.method public final setRequestDeviceName(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4314
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4315
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4316
    return-object p0
.end method

.method public final setRequestNeedSetup(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4352
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4353
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4354
    return-object p0
.end method

.method public final setRequestScreenDimensions(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4371
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4372
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4373
    return-object p0
.end method

.method public final setRequestSoftwareVersion(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4333
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4334
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4335
    return-object p0
.end method

.method public final setRequestStorageInfo(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4295
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4296
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4297
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 4412
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4413
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4415
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4416
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4418
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4419
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4421
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4422
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4424
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4425
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4427
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4428
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4430
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4432
    return-void
.end method
