.class public final Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;


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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5346
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5347
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->clear()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    .line 5348
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 5173
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-nez v0, :cond_1

    .line 5174
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5176
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-nez v0, :cond_0

    .line 5177
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    .line 5179
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5181
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    return-object v0

    .line 5179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5565
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5559
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 5351
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5352
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 5353
    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 5354
    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 5355
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 5356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 5357
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    .line 5358
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 5359
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 5360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5361
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->cachedSize:I

    .line 5362
    return-object p0
.end method

.method public clearBatteryLevel()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 5195
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 5196
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5197
    return-object p0
.end method

.method public clearDeviceName()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 5252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 5253
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5254
    return-object p0
.end method

.method public clearExternalStorageAvailableBytes()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 5233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 5234
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5235
    return-object p0
.end method

.method public clearExternalStorageTotalBytes()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 5214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 5215
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5216
    return-object p0
.end method

.method public clearGlassScreenHeightPixels()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 5334
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 5335
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5336
    return-object p0
.end method

.method public clearGlassScreenWidthPixels()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 5315
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 5316
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5317
    return-object p0
.end method

.method public clearNeedSetup()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 5296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    .line 5297
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5298
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 5274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 5275
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5276
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 5462
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5463
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5464
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 5465
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5467
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5468
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 5469
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5471
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5472
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 5473
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5475
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5476
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 5477
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5479
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5480
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 5481
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5483
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 5484
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    .line 5485
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5487
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 5488
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 5489
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5491
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 5492
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 5493
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5495
    :cond_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5367
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 5409
    :cond_0
    :goto_0
    return v1

    .line 5370
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 5373
    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    .line 5374
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    if-ne v3, v4, :cond_0

    .line 5378
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 5382
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 5386
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 5387
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5390
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 5391
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5394
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    if-ne v3, v4, :cond_0

    .line 5398
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    if-ne v3, v4, :cond_0

    .line 5402
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    if-ne v3, v4, :cond_0

    .line 5406
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5407
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 5409
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 5189
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5246
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalStorageAvailableBytes()J
    .locals 2

    .prologue
    .line 5227
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    return-wide v0
.end method

.method public getExternalStorageTotalBytes()J
    .locals 2

    .prologue
    .line 5208
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    return-wide v0
.end method

.method public getGlassScreenHeightPixels()I
    .locals 1

    .prologue
    .line 5328
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    return v0
.end method

.method public getGlassScreenWidthPixels()I
    .locals 1

    .prologue
    .line 5309
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    return v0
.end method

.method public getNeedSetup()Z
    .locals 1

    .prologue
    .line 5290
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    return v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5268
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 5192
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .line 5249
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .line 5230
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .line 5211
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .line 5331
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .line 5312
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .line 5293
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .line 5271
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

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
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 5414
    const/16 v0, 0x11

    .line 5415
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 5416
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    add-int v0, v1, v2

    .line 5417
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 5418
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 5419
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 5420
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 5421
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 5422
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    add-int v0, v1, v2

    .line 5423
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    add-int v0, v1, v2

    .line 5424
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5425
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 5426
    :goto_1
    add-int v0, v2, v1

    .line 5427
    return v0

    .line 5421
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 5426
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5504
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5508
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5509
    :sswitch_0
    return-object p0

    .line 5514
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 5515
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5519
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 5520
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5524
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 5525
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5529
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 5530
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5534
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 5535
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5539
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    .line 5540
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5544
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 5545
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5549
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 5550
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 5504
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
    .line 5167
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBatteryLevel(I)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5200
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 5201
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5202
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5257
    if-nez p1, :cond_0

    .line 5258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5260
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 5261
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5262
    return-object p0
.end method

.method public setExternalStorageAvailableBytes(J)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 5238
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 5239
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5240
    return-object p0
.end method

.method public setExternalStorageTotalBytes(J)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 5219
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 5220
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5221
    return-object p0
.end method

.method public setGlassScreenHeightPixels(I)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5339
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    .line 5340
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5341
    return-object p0
.end method

.method public setGlassScreenWidthPixels(I)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5320
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    .line 5321
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5322
    return-object p0
.end method

.method public setNeedSetup(Z)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5301
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    .line 5302
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5303
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5279
    if-nez p1, :cond_0

    .line 5280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5282
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 5283
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    .line 5284
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5433
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5434
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->batteryLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5436
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5437
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5439
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5440
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5442
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5443
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5445
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5446
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5448
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5449
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->needSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5451
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 5452
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenWidthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5454
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 5455
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->glassScreenHeightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5457
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5458
    return-void
.end method
