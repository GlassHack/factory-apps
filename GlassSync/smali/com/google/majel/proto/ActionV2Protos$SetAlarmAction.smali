.class public final Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetAlarmAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;


# instance fields
.field public alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

.field private alarmLabel_:Ljava/lang/String;

.field private bitField0_:I

.field public date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

.field private isTimer_:Z

.field private secondsFromNow_:I

.field public time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8252
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8253
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->clear()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 8254
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 2

    .prologue
    .line 8170
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    if-nez v0, :cond_1

    .line 8171
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8173
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    if-nez v0, :cond_0

    .line 8174
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    .line 8176
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8178
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    return-object v0

    .line 8176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8385
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8379
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8257
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    .line 8258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    .line 8259
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 8260
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 8261
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 8262
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    .line 8263
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->isTimer_:Z

    .line 8264
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->cachedSize:I

    .line 8265
    return-object p0
.end method

.method public clearAlarmLabel()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 8200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    .line 8201
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    .line 8202
    return-object p0
.end method

.method public clearIsTimer()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 8247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->isTimer_:Z

    .line 8248
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    .line 8249
    return-object p0
.end method

.method public clearSecondsFromNow()Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1

    .prologue
    .line 8228
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    .line 8229
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    .line 8230
    return-object p0
.end method

.method public getAlarmLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8186
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTimer()Z
    .locals 1

    .prologue
    .line 8236
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->isTimer_:Z

    return v0
.end method

.method public getSecondsFromNow()I
    .locals 1

    .prologue
    .line 8217
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8293
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8294
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8295
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8298
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v1, :cond_1

    .line 8299
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8302
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-eqz v1, :cond_2

    .line 8303
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8306
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v1, :cond_3

    .line 8307
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8310
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 8311
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8314
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 8315
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->isTimer_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8318
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->cachedSize:I

    .line 8319
    return v0
.end method

.method public hasAlarmLabel()Z
    .locals 1

    .prologue
    .line 8197
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsTimer()Z
    .locals 1

    .prologue
    .line 8244
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondsFromNow()Z
    .locals 1

    .prologue
    .line 8225
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 8164
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8327
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8328
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8332
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8333
    :sswitch_0
    return-object p0

    .line 8338
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    .line 8339
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    goto :goto_0

    .line 8343
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v1, :cond_1

    .line 8344
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 8346
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8350
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-nez v1, :cond_2

    .line 8351
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 8353
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8357
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-nez v1, :cond_3

    .line 8358
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 8360
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8364
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    .line 8365
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    goto :goto_0

    .line 8369
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->isTimer_:Z

    .line 8370
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    goto :goto_0

    .line 8328
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setAlarmLabel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8189
    if-nez p1, :cond_0

    .line 8190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8192
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    .line 8193
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    .line 8194
    return-object p0
.end method

.method public setIsTimer(Z)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8239
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->isTimer_:Z

    .line 8240
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    .line 8241
    return-object p0
.end method

.method public setSecondsFromNow(I)Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8220
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    .line 8221
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    .line 8222
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
    .line 8271
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8272
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8274
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v0, :cond_1

    .line 8275
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->alarmLabelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8277
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-eqz v0, :cond_2

    .line 8278
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8280
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v0, :cond_3

    .line 8281
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8283
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 8284
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->secondsFromNow_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8286
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 8287
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$SetAlarmAction;->isTimer_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8289
    :cond_5
    return-void
.end method
