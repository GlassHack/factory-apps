.class public final Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "DateTimeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/DateTimeProtos$DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;


# instance fields
.field public hour:I

.field public minute:I

.field public second:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->clear()Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    .line 48
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    sput-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->_emptyArray:[Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-direct {v0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    invoke-direct {v0}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->hour:I

    .line 52
    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->minute:I

    .line 53
    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->second:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->cachedSize:I

    .line 55
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 69
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->hour:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->minute:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->second:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    iput v0, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->cachedSize:I

    .line 76
    return v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 85
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 89
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :sswitch_0
    return-object p0

    .line 95
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->hour:I

    goto :goto_0

    .line 99
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->minute:I

    goto :goto_0

    .line 103
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->second:I

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;

    move-result-object v0

    return-object v0
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
    .line 61
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->hour:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 62
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->minute:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 63
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/caribou/tasks/DateTimeProtos$DateTime$Time;->second:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 64
    return-void
.end method
