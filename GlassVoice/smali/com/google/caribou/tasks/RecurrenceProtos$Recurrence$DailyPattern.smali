.class public final Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyPattern"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;


# instance fields
.field private bitField0_:I

.field private dayPeriod_:I

.field public timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 408
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    .line 409
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    if-nez v0, :cond_1

    .line 373
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    .line 378
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->dayPeriod_:I

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->cachedSize:I

    .line 416
    return-object p0
.end method

.method public clearDayPeriod()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->dayPeriod_:I

    .line 403
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    .line 404
    return-object p0
.end method

.method public getDayPeriod()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->dayPeriod_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 432
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 433
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 438
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->dayPeriod_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_1
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->cachedSize:I

    .line 442
    return v0
.end method

.method public hasDayPeriod()Z
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 451
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 455
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    :sswitch_0
    return-object p0

    .line 461
    :sswitch_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-nez v1, :cond_1

    .line 462
    new-instance v1, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-direct {v1}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 468
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->dayPeriod_:I

    .line 469
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    goto :goto_0

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 366
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public setDayPeriod(I)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 394
    iput p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->dayPeriod_:I

    .line 395
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    .line 396
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
    .line 422
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->timeOfDay:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 425
    :cond_0
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 426
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;->dayPeriod_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 428
    :cond_1
    return-void
.end method
