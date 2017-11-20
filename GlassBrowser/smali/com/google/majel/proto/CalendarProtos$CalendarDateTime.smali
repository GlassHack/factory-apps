.class public final Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarDateTime"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;


# instance fields
.field private bitField0_:I

.field public date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

.field private dateUnspecified_:Z

.field private offsetMs_:I

.field public time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

.field private timeMs_:J

.field private timeUnspecified_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->clear()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 111
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    .line 116
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    .line 117
    iput-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 118
    iput-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    .line 119
    iput-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 120
    iput-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->cachedSize:I

    .line 122
    return-object p0
.end method

.method public clearDateUnspecified()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    .line 83
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public clearOffsetMs()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    .line 61
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    .line 42
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearTimeUnspecified()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    .line 105
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 106
    return-object p0
.end method

.method public getDateUnspecified()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    return v0
.end method

.method public getOffsetMs()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 151
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 156
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v1, :cond_2

    .line 160
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 164
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-eqz v1, :cond_4

    .line 168
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 172
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->cachedSize:I

    .line 176
    return v0
.end method

.method public getTimeMs()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    return-wide v0
.end method

.method public getTimeUnspecified()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    return v0
.end method

.method public hasDateUnspecified()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOffsetMs()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

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
    .line 38
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeUnspecified()Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 185
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 189
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    :sswitch_0
    return-object p0

    .line 195
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    .line 196
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    goto :goto_0

    .line 200
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    .line 201
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    goto :goto_0

    .line 205
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-nez v1, :cond_1

    .line 206
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 212
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    .line 213
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    goto :goto_0

    .line 217
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-nez v1, :cond_2

    .line 218
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 224
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    .line 225
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setDateUnspecified(Z)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    .line 75
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public setOffsetMs(I)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    .line 53
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setTimeMs(J)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    .line 34
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 35
    return-object p0
.end method

.method public setTimeUnspecified(Z)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    .line 97
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    .line 98
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
    .line 128
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 131
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 137
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 138
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-eqz v0, :cond_4

    .line 141
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 143
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 144
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 146
    :cond_5
    return-void
.end method
