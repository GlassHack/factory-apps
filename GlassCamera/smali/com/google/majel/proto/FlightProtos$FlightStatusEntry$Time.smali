.class public final Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "FlightProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;


# instance fields
.field private actualTimeSecondsSinceEpoch_:J

.field private bitField0_:I

.field private scheduledTimeSecondsSinceEpoch_:J

.field private timeZoneId_:Ljava/lang/String;

.field private timeZoneOffsetSeconds_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 249
    invoke-virtual {p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    .line 250
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-nez v0, :cond_1

    .line 157
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    sput-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    .line 162
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 254
    iput-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->scheduledTimeSecondsSinceEpoch_:J

    .line 255
    iput-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->actualTimeSecondsSinceEpoch_:J

    .line 256
    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneOffsetSeconds_:I

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneId_:Ljava/lang/String;

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->cachedSize:I

    .line 259
    return-object p0
.end method

.method public clearActualTimeSecondsSinceEpoch()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 2

    .prologue
    .line 202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->actualTimeSecondsSinceEpoch_:J

    .line 203
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 204
    return-object p0
.end method

.method public clearScheduledTimeSecondsSinceEpoch()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 2

    .prologue
    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->scheduledTimeSecondsSinceEpoch_:J

    .line 184
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 185
    return-object p0
.end method

.method public clearTimeZoneId()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1

    .prologue
    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneId_:Ljava/lang/String;

    .line 244
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 245
    return-object p0
.end method

.method public clearTimeZoneOffsetSeconds()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneOffsetSeconds_:I

    .line 222
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 223
    return-object p0
.end method

.method public getActualTimeSecondsSinceEpoch()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->actualTimeSecondsSinceEpoch_:J

    return-wide v0
.end method

.method public getScheduledTimeSecondsSinceEpoch()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->scheduledTimeSecondsSinceEpoch_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 282
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->scheduledTimeSecondsSinceEpoch_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->actualTimeSecondsSinceEpoch_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 291
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneOffsetSeconds_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 295
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->cachedSize:I

    .line 299
    return v0
.end method

.method public getTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneOffsetSeconds()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneOffsetSeconds_:I

    return v0
.end method

.method public hasActualTimeSecondsSinceEpoch()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScheduledTimeSecondsSinceEpoch()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeZoneId()Z
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeZoneOffsetSeconds()Z
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 150
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 308
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 312
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    :sswitch_0
    return-object p0

    .line 318
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->scheduledTimeSecondsSinceEpoch_:J

    .line 319
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    goto :goto_0

    .line 323
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->actualTimeSecondsSinceEpoch_:J

    .line 324
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    goto :goto_0

    .line 328
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneOffsetSeconds_:I

    .line 329
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    goto :goto_0

    .line 333
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneId_:Ljava/lang/String;

    .line 334
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setActualTimeSecondsSinceEpoch(J)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->actualTimeSecondsSinceEpoch_:J

    .line 195
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 196
    return-object p0
.end method

.method public setScheduledTimeSecondsSinceEpoch(J)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->scheduledTimeSecondsSinceEpoch_:J

    .line 176
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 177
    return-object p0
.end method

.method public setTimeZoneId(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneId_:Ljava/lang/String;

    .line 236
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 237
    return-object p0
.end method

.method public setTimeZoneOffsetSeconds(I)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneOffsetSeconds_:I

    .line 214
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    .line 215
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
    .line 265
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->scheduledTimeSecondsSinceEpoch_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->actualTimeSecondsSinceEpoch_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 271
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 272
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneOffsetSeconds_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 274
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 275
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;->timeZoneId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 277
    :cond_3
    return-void
.end method
