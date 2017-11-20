.class public final Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "DateTimeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/DateTimeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateTime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;
    }
.end annotation


# static fields
.field public static final DATE_RANGE_WEEKEND:I = 0x1

.field public static final PERIOD_AFTERNOON:I = 0x2

.field public static final PERIOD_EVENING:I = 0x3

.field public static final PERIOD_MORNING:I = 0x1

.field public static final PERIOD_NIGHT:I = 0x4

.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime;


# instance fields
.field private absoluteTimeMs_:J

.field private bitField0_:I

.field private dateRange_:I

.field private day_:I

.field private month_:I

.field private period_:I

.field public time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

.field private unspecifiedFutureTime_:Z

.field private year_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 275
    invoke-virtual {p0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->clear()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 276
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-nez v0, :cond_1

    .line 126
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    sput-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 131
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    iput v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 280
    iput v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->year_:I

    .line 281
    iput v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->month_:I

    .line 282
    iput v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->day_:I

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    .line 284
    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->period_:I

    .line 285
    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->dateRange_:I

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->absoluteTimeMs_:J

    .line 287
    iput-boolean v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->unspecifiedFutureTime_:Z

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->cachedSize:I

    .line 289
    return-object p0
.end method

.method public clearAbsoluteTimeMs()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 2

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->absoluteTimeMs_:J

    .line 251
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 252
    return-object p0
.end method

.method public clearDateRange()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->dateRange_:I

    .line 232
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 233
    return-object p0
.end method

.method public clearDay()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->day_:I

    .line 191
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 192
    return-object p0
.end method

.method public clearMonth()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->month_:I

    .line 172
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 173
    return-object p0
.end method

.method public clearPeriod()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->period_:I

    .line 213
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 214
    return-object p0
.end method

.method public clearUnspecifiedFutureTime()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->unspecifiedFutureTime_:Z

    .line 270
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 271
    return-object p0
.end method

.method public clearYear()Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->year_:I

    .line 153
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 154
    return-object p0
.end method

.method public getAbsoluteTimeMs()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->absoluteTimeMs_:J

    return-wide v0
.end method

.method public getDateRange()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->dateRange_:I

    return v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->month_:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->period_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 323
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 324
    .local v0, "size":I
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->year_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 329
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->month_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_1
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 333
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->day_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-eqz v1, :cond_3

    .line 337
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_3
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 341
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->period_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_4
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 345
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->dateRange_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_5
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 349
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->absoluteTimeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_6
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 353
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->unspecifiedFutureTime_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_7
    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->cachedSize:I

    .line 357
    return v0
.end method

.method public getUnspecifiedFutureTime()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->unspecifiedFutureTime_:Z

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->year_:I

    return v0
.end method

.method public hasAbsoluteTimeMs()Z
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDateRange()Z
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDay()Z
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMonth()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPeriod()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnspecifiedFutureTime()Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 366
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 370
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    :sswitch_0
    return-object p0

    .line 376
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->year_:I

    .line 377
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    goto :goto_0

    .line 381
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->month_:I

    .line 382
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    goto :goto_0

    .line 386
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->day_:I

    .line 387
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    goto :goto_0

    .line 391
    :sswitch_4
    iget-object v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-nez v1, :cond_1

    .line 392
    new-instance v1, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-direct {v1}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 398
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->period_:I

    .line 399
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    goto :goto_0

    .line 403
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->dateRange_:I

    .line 404
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    goto :goto_0

    .line 408
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->absoluteTimeMs_:J

    .line 409
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    goto :goto_0

    .line 413
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->unspecifiedFutureTime_:Z

    .line 414
    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x39 -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    move-result-object v0

    return-object v0
.end method

.method public setAbsoluteTimeMs(J)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 242
    iput-wide p1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->absoluteTimeMs_:J

    .line 243
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 244
    return-object p0
.end method

.method public setDateRange(I)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->dateRange_:I

    .line 224
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 225
    return-object p0
.end method

.method public setDay(I)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->day_:I

    .line 183
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 184
    return-object p0
.end method

.method public setMonth(I)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->month_:I

    .line 164
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 165
    return-object p0
.end method

.method public setPeriod(I)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->period_:I

    .line 205
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 206
    return-object p0
.end method

.method public setUnspecifiedFutureTime(Z)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->unspecifiedFutureTime_:Z

    .line 262
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 263
    return-object p0
.end method

.method public setYear(I)Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->year_:I

    .line 145
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    .line 146
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
    .line 295
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->year_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 298
    :cond_0
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->month_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 301
    :cond_1
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 302
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->day_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-eqz v0, :cond_3

    .line 305
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->time:Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 307
    :cond_3
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 308
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->period_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 310
    :cond_4
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 311
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->dateRange_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 313
    :cond_5
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 314
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->absoluteTimeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 316
    :cond_6
    iget v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 317
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;->unspecifiedFutureTime_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 319
    :cond_7
    return-void
.end method
