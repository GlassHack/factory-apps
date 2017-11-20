.class public final Lcom/google/glass/companion/Proto$GlassInfoRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoRequest"
.end annotation


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
    .line 4413
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassInfoRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4414
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4419
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4438
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4457
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4476
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4495
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4514
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4414
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4676
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4670
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-object v0
.end method


# virtual methods
.method public clearRequestBatteryLevel()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4433
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4434
    return-object p0
.end method

.method public clearRequestDeviceName()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4471
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4472
    return-object p0
.end method

.method public clearRequestNeedSetup()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4509
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4510
    return-object p0
.end method

.method public clearRequestScreenDimensions()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4528
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4529
    return-object p0
.end method

.method public clearRequestSoftwareVersion()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4490
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4491
    return-object p0
.end method

.method public clearRequestStorageInfo()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4452
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4453
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4534
    if-ne p1, p0, :cond_1

    .line 4543
    :cond_0
    :goto_0
    return v1

    .line 4535
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4536
    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 4537
    .local v0, "other":Lcom/google/glass/companion/Proto$GlassInfoRequest;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 4543
    goto :goto_0

    .line 4537
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    .line 4543
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 4421
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    return v0
.end method

.method public getRequestDeviceName()Z
    .locals 1

    .prologue
    .line 4459
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    return v0
.end method

.method public getRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 4497
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    return v0
.end method

.method public getRequestScreenDimensions()Z
    .locals 1

    .prologue
    .line 4516
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    return v0
.end method

.method public getRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 4478
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    return v0
.end method

.method public getRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 4440
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4584
    const/4 v0, 0x0

    .line 4585
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4586
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4587
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4589
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4590
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4591
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4593
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4594
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4595
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4597
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4598
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4599
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4601
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4602
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4603
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4605
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4606
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4607
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4609
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4610
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    .line 4611
    return v0
.end method

.method public hasRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 4429
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

.method public hasRequestDeviceName()Z
    .locals 1

    .prologue
    .line 4467
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

.method public hasRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 4505
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

.method public hasRequestScreenDimensions()Z
    .locals 1

    .prologue
    .line 4524
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

.method public hasRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 4486
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

.method public hasRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 4448
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

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4547
    const/16 v0, 0x11

    .line 4548
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 4549
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 4550
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 4551
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 4552
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 4553
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    if-eqz v4, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 4554
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_6
    add-int v0, v2, v1

    .line 4555
    return v0

    :cond_0
    move v1, v3

    .line 4548
    goto :goto_0

    :cond_1
    move v1, v3

    .line 4549
    goto :goto_1

    :cond_2
    move v1, v3

    .line 4550
    goto :goto_2

    :cond_3
    move v1, v3

    .line 4551
    goto :goto_3

    :cond_4
    move v1, v3

    .line 4552
    goto :goto_4

    :cond_5
    move v2, v3

    .line 4553
    goto :goto_5

    .line 4554
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4619
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4620
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4624
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4625
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    .line 4628
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4630
    :sswitch_0
    return-object p0

    .line 4635
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4636
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4640
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4641
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4645
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4646
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4650
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4651
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4655
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4656
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4660
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4661
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 4620
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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4410
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestBatteryLevel(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4424
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4425
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4426
    return-object p0
.end method

.method public setRequestDeviceName(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4462
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4463
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4464
    return-object p0
.end method

.method public setRequestNeedSetup(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4500
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4501
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4502
    return-object p0
.end method

.method public setRequestScreenDimensions(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4519
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4520
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4521
    return-object p0
.end method

.method public setRequestSoftwareVersion(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4481
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4482
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4483
    return-object p0
.end method

.method public setRequestStorageInfo(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4443
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4444
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 4445
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4560
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4561
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4563
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4564
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4566
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4567
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4569
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4570
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4572
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4573
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4575
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4576
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4578
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4580
    return-void
.end method
