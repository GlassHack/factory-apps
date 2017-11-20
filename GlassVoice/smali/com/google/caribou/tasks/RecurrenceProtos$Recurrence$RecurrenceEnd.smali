.class public final Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecurrenceEnd"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;


# instance fields
.field public autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

.field private autoRenew_:Z

.field private bitField0_:I

.field public endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

.field private endMillis_:J

.field private numOccurences_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 245
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    .line 246
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    if-nez v0, :cond_1

    .line 169
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 249
    iput v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    .line 250
    iput-object v3, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endMillis_:J

    .line 252
    iput v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->numOccurences_:I

    .line 253
    iput-boolean v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenew_:Z

    .line 254
    iput-object v3, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->cachedSize:I

    .line 256
    return-object p0
.end method

.method public clearAutoRenew()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenew_:Z

    .line 237
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    .line 238
    return-object p0
.end method

.method public clearEndMillis()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 2

    .prologue
    .line 198
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endMillis_:J

    .line 199
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    .line 200
    return-object p0
.end method

.method public clearNumOccurences()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->numOccurences_:I

    .line 218
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    .line 219
    return-object p0
.end method

.method public getAutoRenew()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenew_:Z

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endMillis_:J

    return-wide v0
.end method

.method public getNumOccurences()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->numOccurences_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 282
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endMillis_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_1
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 291
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->numOccurences_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_2
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 295
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenew_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-eqz v1, :cond_4

    .line 299
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_4
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->cachedSize:I

    .line 303
    return v0
.end method

.method public hasAutoRenew()Z
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEndMillis()Z
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumOccurences()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 312
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 316
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    :sswitch_0
    return-object p0

    .line 322
    :sswitch_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-nez v1, :cond_1

    .line 323
    new-instance v1, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-direct {v1}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 329
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endMillis_:J

    .line 330
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    goto :goto_0

    .line 334
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->numOccurences_:I

    .line 335
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    goto :goto_0

    .line 339
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenew_:Z

    .line 340
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    goto :goto_0

    .line 344
    :sswitch_5
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-nez v1, :cond_2

    .line 345
    new-instance v1, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-direct {v1}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 162
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRenew(Z)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenew_:Z

    .line 229
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    .line 230
    return-object p0
.end method

.method public setEndMillis(J)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 190
    iput-wide p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endMillis_:J

    .line 191
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    .line 192
    return-object p0
.end method

.method public setNumOccurences(I)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->numOccurences_:I

    .line 210
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    .line 211
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
    .line 262
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 265
    :cond_0
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 266
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->endMillis_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 268
    :cond_1
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 269
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->numOccurences_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 271
    :cond_2
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 272
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenew_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-eqz v0, :cond_4

    .line 275
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;->autoRenewUntil:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 277
    :cond_4
    return-void
.end method
