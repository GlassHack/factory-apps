.class public final Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecurrenceInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;


# instance fields
.field private bitField0_:I

.field private exceptional_:Z

.field private master_:Z

.field public recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

.field public recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1433
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    .line 1434
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 2

    .prologue
    .line 1375
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    if-nez v0, :cond_1

    .line 1376
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1378
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    if-nez v0, :cond_0

    .line 1379
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    .line 1381
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    return-object v0

    .line 1381
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1537
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1531
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1437
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    .line 1438
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 1439
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 1440
    iput-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->master_:Z

    .line 1441
    iput-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->exceptional_:Z

    .line 1442
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->cachedSize:I

    .line 1443
    return-object p0
.end method

.method public clearExceptional()Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 1

    .prologue
    .line 1427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->exceptional_:Z

    .line 1428
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    .line 1429
    return-object p0
.end method

.method public clearMaster()Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->master_:Z

    .line 1409
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    .line 1410
    return-object p0
.end method

.method public getExceptional()Z
    .locals 1

    .prologue
    .line 1416
    iget-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->exceptional_:Z

    return v0
.end method

.method public getMaster()Z
    .locals 1

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->master_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1465
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1466
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-eqz v1, :cond_0

    .line 1467
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1470
    :cond_0
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-eqz v1, :cond_1

    .line 1471
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_1
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1475
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->master_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_2
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 1479
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->exceptional_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_3
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->cachedSize:I

    .line 1483
    return v0
.end method

.method public hasExceptional()Z
    .locals 1

    .prologue
    .line 1424
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaster()Z
    .locals 1

    .prologue
    .line 1405
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1492
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1496
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1497
    :sswitch_0
    return-object p0

    .line 1502
    :sswitch_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-nez v1, :cond_1

    .line 1503
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 1505
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1509
    :sswitch_2
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-nez v1, :cond_2

    .line 1510
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 1512
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1516
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->master_:Z

    .line 1517
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    goto :goto_0

    .line 1521
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->exceptional_:Z

    .line 1522
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    goto :goto_0

    .line 1492
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 1369
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setExceptional(Z)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1419
    iput-boolean p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->exceptional_:Z

    .line 1420
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    .line 1421
    return-object p0
.end method

.method public setMaster(Z)Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1400
    iput-boolean p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->master_:Z

    .line 1401
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    .line 1402
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
    .line 1449
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-eqz v0, :cond_0

    .line 1450
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-eqz v0, :cond_1

    .line 1453
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1455
    :cond_1
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1456
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->master_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1458
    :cond_2
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1459
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceInfo;->exceptional_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1461
    :cond_3
    return-void
.end method
