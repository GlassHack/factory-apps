.class public final Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecurrenceStart"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;


# instance fields
.field private bitField0_:I

.field public startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

.field private startMillis_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    .line 83
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    if-nez v0, :cond_1

    .line 47
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startMillis_:J

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->cachedSize:I

    .line 90
    return-object p0
.end method

.method public clearStartMillis()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startMillis_:J

    .line 77
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    .line 78
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 107
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 112
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startMillis_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_1
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->cachedSize:I

    .line 116
    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startMillis_:J

    return-wide v0
.end method

.method public hasStartMillis()Z
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 125
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :sswitch_0
    return-object p0

    .line 135
    :sswitch_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-direct {v1}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 142
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startMillis_:J

    .line 143
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    goto :goto_0

    .line 125
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
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    move-result-object v0

    return-object v0
.end method

.method public setStartMillis(J)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startMillis_:J

    .line 69
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    .line 70
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
    .line 96
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startDateTime:Lcom/google/caribou/tasks/DateTimeProtos$DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 99
    :cond_0
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;->startMillis_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 102
    :cond_1
    return-void
.end method
