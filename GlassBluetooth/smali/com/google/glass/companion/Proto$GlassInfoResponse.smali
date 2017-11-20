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
    .line 4684
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

    .line 4685
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4690
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4709
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4728
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4747
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4769
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4791
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4810
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4829
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4685
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
    .line 5019
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
    .line 5013
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
    .line 4703
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4704
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4705
    return-object p0
.end method

.method public clearDeviceName()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4764
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4765
    return-object p0
.end method

.method public clearExternalStorageAvailableBytes()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 4741
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4742
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4743
    return-object p0
.end method

.method public clearExternalStorageTotalBytes()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 4722
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4723
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4724
    return-object p0
.end method

.method public clearGlassScreenHeightPixels()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4842
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4843
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4844
    return-object p0
.end method

.method public clearGlassScreenWidthPixels()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4823
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4824
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4825
    return-object p0
.end method

.method public clearNeedSetup()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4805
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4806
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 4785
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4786
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4787
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4849
    if-ne p1, p0, :cond_1

    .line 4860
    :cond_0
    :goto_0
    return v1

    .line 4850
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4851
    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 4852
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

    .line 4855
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 4856
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

    .line 4860
    goto :goto_0

    .line 4852
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4855
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4856
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    .line 4860
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 4692
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4749
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalStorageAvailableBytes()J
    .locals 2

    .prologue
    .line 4730
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    return-wide v0
.end method

.method public getExternalStorageTotalBytes()J
    .locals 2

    .prologue
    .line 4711
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    return-wide v0
.end method

.method public getGlassScreenHeightPixels()I
    .locals 1

    .prologue
    .line 4831
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    return v0
.end method

.method public getGlassScreenWidthPixels()I
    .locals 1

    .prologue
    .line 4812
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    return v0
.end method

.method public getNeedSetup()Z
    .locals 1

    .prologue
    .line 4793
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4909
    const/4 v0, 0x0

    .line 4910
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4911
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4912
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4914
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4915
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4916
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4918
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4919
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4920
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4922
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4923
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4924
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4926
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4927
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4928
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4930
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4931
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4932
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4934
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 4935
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4936
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4938
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 4939
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4940
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4942
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4943
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    .line 4944
    return v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4771
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 4700
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
    .line 4760
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
    .line 4738
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
    .line 4719
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
    .line 4839
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
    .line 4820
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
    .line 4801
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
    .line 4782
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

    .line 4864
    const/16 v0, 0x11

    .line 4865
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    add-int/lit16 v0, v1, 0x20f

    .line 4866
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 4867
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 4868
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 4869
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 4870
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    add-int v0, v3, v1

    .line 4871
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    add-int v0, v1, v3

    .line 4872
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    add-int v0, v1, v3

    .line 4873
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 4874
    return v0

    .line 4868
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 4869
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 4870
    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    .line 4873
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
    .line 4952
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4953
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4957
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    .line 4961
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4963
    :sswitch_0
    return-object p0

    .line 4968
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4969
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4973
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4974
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4978
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4979
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4983
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4984
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4988
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4989
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4993
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4994
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 4998
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4999
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5003
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 5004
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto/16 :goto_0

    .line 4953
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
    .line 4681
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBatteryLevel(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4695
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 4696
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4697
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4752
    if-nez p1, :cond_0

    .line 4753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4755
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 4756
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4757
    return-object p0
.end method

.method public setExternalStorageAvailableBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4733
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 4734
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4735
    return-object p0
.end method

.method public setExternalStorageTotalBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4714
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 4715
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4716
    return-object p0
.end method

.method public setGlassScreenHeightPixels(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4834
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 4835
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4836
    return-object p0
.end method

.method public setGlassScreenWidthPixels(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4815
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 4816
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4817
    return-object p0
.end method

.method public setNeedSetup(Z)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 4797
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4798
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4774
    if-nez p1, :cond_0

    .line 4775
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4777
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 4778
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 4779
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
    .line 4879
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4880
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4882
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4883
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4885
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4886
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4888
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4889
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4891
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4892
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4894
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4895
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4897
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4898
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4900
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 4901
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4903
    :cond_7
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4905
    return-void
.end method
