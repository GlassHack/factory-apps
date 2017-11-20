.class public final Lcom/google/glass/companion/Proto$GlassInfoResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoResponse;


# instance fields
.field private batteryLevel_:I

.field private bitField0_:I

.field private deviceName_:Ljava/lang/String;

.field private externalStorageAvailableBytes_:J

.field private externalStorageTotalBytes_:J

.field private glassScreenHeightPixels_:I

.field private glassScreenWidthPixels_:I

.field private needSetup_:Z

.field private softwareVersion_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4536
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassInfoResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 4537
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4542
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4561
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4580
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4599
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4621
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4643
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4662
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4681
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4537
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4871
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4865
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-object v0
.end method


# virtual methods
.method public clearBatteryLevel()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4555
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4556
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4557
    return-object p0
.end method

.method public clearDeviceName()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4615
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4616
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4617
    return-object p0
.end method

.method public clearExternalStorageAvailableBytes()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 4593
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4594
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4595
    return-object p0
.end method

.method public clearExternalStorageTotalBytes()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 4574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4575
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4576
    return-object p0
.end method

.method public clearGlassScreenHeightPixels()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4694
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4695
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4696
    return-object p0
.end method

.method public clearGlassScreenWidthPixels()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4675
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4676
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4677
    return-object p0
.end method

.method public clearNeedSetup()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4657
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4658
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4638
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4639
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4701
    if-ne p1, p0, :cond_1

    .line 4712
    :cond_0
    :goto_0
    return v1

    .line 4702
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4703
    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 4704
    .local v0, "other":Lcom/google/glass/companion/Proto$GlassInfoResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 4707
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 4708
    :goto_2
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 4712
    goto :goto_0

    .line 4704
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4707
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4708
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    .line 4712
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 4544
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalStorageAvailableBytes()J
    .locals 2

    .prologue
    .line 4582
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    return-wide v0
.end method

.method public getExternalStorageTotalBytes()J
    .locals 2

    .prologue
    .line 4563
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    return-wide v0
.end method

.method public getGlassScreenHeightPixels()I
    .locals 1

    .prologue
    .line 4683
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    return v0
.end method

.method public getGlassScreenWidthPixels()I
    .locals 1

    .prologue
    .line 4664
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    return v0
.end method

.method public getNeedSetup()Z
    .locals 1

    .prologue
    .line 4645
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4761
    const/4 v0, 0x0

    .line 4762
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4763
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4764
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4766
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4767
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4768
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4770
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4771
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4772
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4774
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4775
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4776
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4778
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4779
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4780
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4782
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4783
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4784
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4786
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 4787
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4788
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4790
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 4791
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4792
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4794
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4795
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    .line 4796
    return v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4623
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 4552
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceName()Z
    .locals 1

    .prologue
    .line 4612
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExternalStorageAvailableBytes()Z
    .locals 1

    .prologue
    .line 4590
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExternalStorageTotalBytes()Z
    .locals 1

    .prologue
    .line 4571
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassScreenHeightPixels()Z
    .locals 1

    .prologue
    .line 4691
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassScreenWidthPixels()Z
    .locals 1

    .prologue
    .line 4672
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNeedSetup()Z
    .locals 1

    .prologue
    .line 4653
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 1

    .prologue
    .line 4634
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 4716
    const/16 v0, 0x11

    .line 4717
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    add-int/lit16 v0, v1, 0x20f

    .line 4718
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 4719
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 4720
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 4721
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 4722
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    add-int v0, v3, v1

    .line 4723
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    add-int v0, v1, v3

    .line 4724
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    add-int v0, v1, v3

    .line 4725
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 4726
    return v0

    .line 4720
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 4721
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 4722
    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    .line 4725
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4805
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4809
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    .line 4813
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4815
    :sswitch_0
    return-object p0

    .line 4820
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4821
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4825
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4826
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4830
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4831
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4835
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4836
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4840
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4841
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4845
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4846
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4850
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4851
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4855
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4856
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto/16 :goto_0

    .line 4805
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 4533
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBatteryLevel(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4547
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4548
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4549
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4604
    if-nez p1, :cond_0

    .line 4605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4607
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4608
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4609
    return-object p0
.end method

.method public setExternalStorageAvailableBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4585
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4586
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4587
    return-object p0
.end method

.method public setExternalStorageTotalBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4566
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4567
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4568
    return-object p0
.end method

.method public setGlassScreenHeightPixels(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4686
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4687
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4688
    return-object p0
.end method

.method public setGlassScreenWidthPixels(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4667
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4668
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4669
    return-object p0
.end method

.method public setNeedSetup(Z)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4648
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4649
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4650
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4626
    if-nez p1, :cond_0

    .line 4627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4629
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4630
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4631
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4731
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4732
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4734
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4735
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4737
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4738
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4740
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4741
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4743
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4744
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4746
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4747
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4749
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4750
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4752
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 4753
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4755
    :cond_7
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4757
    return-void
.end method
