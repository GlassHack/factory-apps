.class public final Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionDateTimeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionDateTimeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionTime"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;


# instance fields
.field private bitField0_:I

.field private hour_:I

.field private minute_:I

.field private second_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->clear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 86
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    sput-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    .line 90
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    .line 91
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    .line 92
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->cachedSize:I

    .line 94
    return-object p0
.end method

.method public clearHour()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    .line 42
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearMinute()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    .line 61
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearSecond()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    .line 80
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    .line 81
    return-object p0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 114
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 123
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->cachedSize:I

    .line 127
    return v0
.end method

.method public hasHour()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinute()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecond()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 136
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 140
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    :sswitch_0
    return-object p0

    .line 146
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    .line 147
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    goto :goto_0

    .line 151
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    .line 152
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    goto :goto_0

    .line 156
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    .line 157
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setHour(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    .line 34
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    .line 35
    return-object p0
.end method

.method public setMinute(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    .line 53
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setSecond(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    .line 72
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    .line 73
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
    .line 100
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 103
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 106
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 109
    :cond_2
    return-void
.end method
