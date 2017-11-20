.class public final Lcom/google/common/logging/nano/ShowMenuEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ShowMenuEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/ShowMenuEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/ShowMenuEvent;


# instance fields
.field private bitField0_:I

.field private eventSource_:I

.field private mediaId_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/google/common/logging/nano/ShowMenuEvent;->clear()Lcom/google/common/logging/nano/ShowMenuEvent;

    .line 67
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/ShowMenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/ShowMenuEvent;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/ShowMenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/ShowMenuEvent;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/ShowMenuEvent;

    sput-object v0, Lcom/google/common/logging/nano/ShowMenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/ShowMenuEvent;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/ShowMenuEvent;->_emptyArray:[Lcom/google/common/logging/nano/ShowMenuEvent;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/google/common/logging/nano/ShowMenuEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/ShowMenuEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/ShowMenuEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ShowMenuEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/google/common/logging/nano/ShowMenuEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/ShowMenuEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/ShowMenuEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iput v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    .line 72
    iput v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->cachedSize:I

    .line 75
    return-object p0
.end method

.method public clearEventSource()Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    .line 60
    return-object p0
.end method

.method public clearMediaId()Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    .line 35
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 128
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    .line 130
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 133
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    .line 134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/ShowMenuEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/google/common/logging/nano/ShowMenuEvent;

    .line 87
    .local v0, "other":Lcom/google/common/logging/nano/ShowMenuEvent;
    iget v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 91
    iget v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    iget v4, v0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    if-ne v3, v4, :cond_0

    .line 95
    iget-object v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEventSource()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    return v0
.end method

.method public getMediaId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    return-wide v0
.end method

.method public hasEventSource()Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaId()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 103
    const/16 v0, 0x11

    .line 104
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 105
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 106
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    add-int v0, v1, v2

    .line 107
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 108
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    add-int v0, v2, v1

    .line 110
    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 145
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    :sswitch_0
    return-object p0

    .line 155
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    .line 156
    iget v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    goto :goto_0

    .line 160
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 161
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 162
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 170
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 171
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/ShowMenuEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 166
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    .line 167
    iget v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/ShowMenuEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/ShowMenuEvent;

    move-result-object v0

    return-object v0
.end method

.method public setEventSource(I)Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    .line 51
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public setMediaId(J)Lcom/google/common/logging/nano/ShowMenuEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    .line 40
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->mediaId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 119
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/ShowMenuEvent;->eventSource_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 122
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 123
    return-void
.end method
