.class public final Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "FlightProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationDetails"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;


# instance fields
.field private arriveMinutesBefore_:I

.field private bitField0_:I

.field private leaveByTimeSecondsSinceEpoch_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 411
    invoke-virtual {p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    .line 412
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 2

    .prologue
    .line 359
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    if-nez v0, :cond_1

    .line 360
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    sput-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    .line 365
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_1
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    iput v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->leaveByTimeSecondsSinceEpoch_:J

    .line 417
    iput v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->arriveMinutesBefore_:I

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->cachedSize:I

    .line 419
    return-object p0
.end method

.method public clearArriveMinutesBefore()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->arriveMinutesBefore_:I

    .line 406
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    .line 407
    return-object p0
.end method

.method public clearLeaveByTimeSecondsSinceEpoch()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 2

    .prologue
    .line 386
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->leaveByTimeSecondsSinceEpoch_:J

    .line 387
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    .line 388
    return-object p0
.end method

.method public getArriveMinutesBefore()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->arriveMinutesBefore_:I

    return v0
.end method

.method public getLeaveByTimeSecondsSinceEpoch()J
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->leaveByTimeSecondsSinceEpoch_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 435
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 436
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 437
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->leaveByTimeSecondsSinceEpoch_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 441
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->arriveMinutesBefore_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->cachedSize:I

    .line 445
    return v0
.end method

.method public hasArriveMinutesBefore()Z
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLeaveByTimeSecondsSinceEpoch()Z
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 353
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 454
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 458
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    :sswitch_0
    return-object p0

    .line 464
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->leaveByTimeSecondsSinceEpoch_:J

    .line 465
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    goto :goto_0

    .line 469
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->arriveMinutesBefore_:I

    .line 470
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    goto :goto_0

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setArriveMinutesBefore(I)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->arriveMinutesBefore_:I

    .line 398
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    .line 399
    return-object p0
.end method

.method public setLeaveByTimeSecondsSinceEpoch(J)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 378
    iput-wide p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->leaveByTimeSecondsSinceEpoch_:J

    .line 379
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    .line 380
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
    .line 425
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->leaveByTimeSecondsSinceEpoch_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 428
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;->arriveMinutesBefore_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 431
    :cond_1
    return-void
.end method
