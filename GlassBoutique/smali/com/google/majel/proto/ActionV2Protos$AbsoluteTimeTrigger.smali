.class public final Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AbsoluteTimeTrigger"
.end annotation


# static fields
.field public static final SYMBOLIC_TIME_AFTERNOON:I = 0x1

.field public static final SYMBOLIC_TIME_EVENING:I = 0x2

.field public static final SYMBOLIC_TIME_MORNING:I = 0x0

.field public static final SYMBOLIC_TIME_NIGHT:I = 0x3

.field public static final SYMBOLIC_TIME_TIME_UNSPECIFIED:I = 0x4

.field public static final SYMBOLIC_TIME_WEEKEND:I = 0x5

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;


# instance fields
.field private bitField0_:I

.field private isDefaultTime_:Z

.field private symbolicTime_:I

.field private timeMs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8473
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8474
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->clear()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 8475
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 2

    .prologue
    .line 8403
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    if-nez v0, :cond_1

    .line 8404
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8406
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    if-nez v0, :cond_0

    .line 8407
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 8409
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8411
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    return-object v0

    .line 8409
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8561
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8555
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8478
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    .line 8479
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    .line 8480
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    .line 8481
    iput-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->isDefaultTime_:Z

    .line 8482
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->cachedSize:I

    .line 8483
    return-object p0
.end method

.method public clearIsDefaultTime()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1

    .prologue
    .line 8468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->isDefaultTime_:Z

    .line 8469
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    .line 8470
    return-object p0
.end method

.method public clearSymbolicTime()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1

    .prologue
    .line 8449
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    .line 8450
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    .line 8451
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 2

    .prologue
    .line 8430
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    .line 8431
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    .line 8432
    return-object p0
.end method

.method public getIsDefaultTime()Z
    .locals 1

    .prologue
    .line 8457
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->isDefaultTime_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 8502
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8503
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8504
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8507
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8508
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8511
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8512
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->isDefaultTime_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8515
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->cachedSize:I

    .line 8516
    return v0
.end method

.method public getSymbolicTime()I
    .locals 1

    .prologue
    .line 8438
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    return v0
.end method

.method public getTimeMs()J
    .locals 2

    .prologue
    .line 8419
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    return-wide v0
.end method

.method public hasIsDefaultTime()Z
    .locals 1

    .prologue
    .line 8465
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSymbolicTime()Z
    .locals 1

    .prologue
    .line 8446
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeMs()Z
    .locals 1

    .prologue
    .line 8427
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

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
    .line 8389
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8525
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8529
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8530
    :sswitch_0
    return-object p0

    .line 8535
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    .line 8536
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    goto :goto_0

    .line 8540
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    .line 8541
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    goto :goto_0

    .line 8545
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->isDefaultTime_:Z

    .line 8546
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    goto :goto_0

    .line 8525
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setIsDefaultTime(Z)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8460
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->isDefaultTime_:Z

    .line 8461
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    .line 8462
    return-object p0
.end method

.method public setSymbolicTime(I)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8441
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    .line 8442
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    .line 8443
    return-object p0
.end method

.method public setTimeMs(J)Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 8422
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    .line 8423
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    .line 8424
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
    .line 8489
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8490
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->timeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8492
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8493
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->symbolicTime_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8495
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8496
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;->isDefaultTime_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8498
    :cond_2
    return-void
.end method
