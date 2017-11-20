.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesStreamRequest"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;


# instance fields
.field private bitField0_:I

.field public image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

.field private importantPayload_:Z

.field public pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

.field private sequenceNumber_:I

.field public sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1432
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1433
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 2

    .prologue
    .line 1349
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    if-nez v0, :cond_1

    .line 1350
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1352
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    if-nez v0, :cond_0

    .line 1353
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1355
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    return-object v0

    .line 1355
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1564
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1558
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1436
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    .line 1437
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    .line 1438
    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 1439
    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 1440
    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    .line 1442
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    .line 1443
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->cachedSize:I

    .line 1444
    return-object p0
.end method

.method public clearImportantPayload()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    .line 1427
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    .line 1428
    return-object p0
.end method

.method public clearSequenceNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1376
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    .line 1377
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    .line 1378
    return-object p0
.end method

.method public clearText()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1407
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    .line 1408
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    .line 1409
    return-object p0
.end method

.method public getImportantPayload()Z
    .locals 1

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1472
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1473
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1474
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1477
    :cond_0
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    if-eqz v1, :cond_1

    .line 1478
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1481
    :cond_1
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    if-eqz v1, :cond_2

    .line 1482
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1485
    :cond_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    if-eqz v1, :cond_3

    .line 1486
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1489
    :cond_3
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 1490
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1493
    :cond_4
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 1494
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1497
    :cond_5
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->cachedSize:I

    .line 1498
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasImportantPayload()Z
    .locals 1

    .prologue
    .line 1423
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSequenceNumber()Z
    .locals 1

    .prologue
    .line 1373
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 1404
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1506
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1507
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1511
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1512
    :sswitch_0
    return-object p0

    .line 1517
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    .line 1518
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    goto :goto_0

    .line 1522
    :sswitch_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    if-nez v1, :cond_1

    .line 1523
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1529
    :sswitch_3
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    if-nez v1, :cond_2

    .line 1530
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 1532
    :cond_2
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1536
    :sswitch_4
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    if-nez v1, :cond_3

    .line 1537
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;-><init>()V

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1539
    :cond_3
    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1543
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    .line 1544
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    goto :goto_0

    .line 1548
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    .line 1549
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    goto :goto_0

    .line 1507
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x82 -> :sswitch_5
        0x88 -> :sswitch_6
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
    .line 1343
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public setImportantPayload(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1418
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    .line 1419
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    .line 1420
    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1368
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    .line 1369
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    .line 1370
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1396
    if-nez p1, :cond_0

    .line 1397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1399
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    .line 1400
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    .line 1401
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1451
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    if-eqz v0, :cond_1

    .line 1454
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    if-eqz v0, :cond_2

    .line 1457
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1459
    :cond_2
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    if-eqz v0, :cond_3

    .line 1460
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1462
    :cond_3
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1463
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1465
    :cond_4
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 1466
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1468
    :cond_5
    return-void
.end method
