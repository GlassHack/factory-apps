.class public final Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ClientDataHeaderProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientDataHeader"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;


# instance fields
.field private bitField0_:I

.field private configTimeUsec_:J

.field public experimentId:[I

.field public triggerExperimentId:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->clear()Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    .line 54
    return-void
.end method

.method public static emptyArray()[Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->_emptyArray:[Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->_emptyArray:[Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    sput-object v0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->_emptyArray:[Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->_emptyArray:[Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    invoke-direct {v0}, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    invoke-direct {v0}, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    .line 58
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->configTimeUsec_:J

    .line 60
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->cachedSize:I

    .line 62
    return-object p0
.end method

.method public clearConfigTimeUsec()Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->configTimeUsec_:J

    .line 45
    iget v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getConfigTimeUsec()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->configTimeUsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 86
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    aget v1, v4, v2

    .line 90
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 94
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 96
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 97
    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->configTimeUsec_:J

    invoke-static {v4, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 100
    :cond_2
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 101
    const/4 v0, 0x0

    .line 102
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 103
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    aget v1, v4, v2

    .line 104
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "element":I
    :cond_3
    add-int/2addr v3, v0

    .line 108
    iget-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 110
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_4
    iput v3, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->cachedSize:I

    .line 111
    return v3
.end method

.method public hasConfigTimeUsec()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    invoke-virtual {p0, p1}, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 120
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 124
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    :sswitch_0
    return-object p0

    .line 130
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 132
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 133
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 134
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 135
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 139
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    array-length v1, v8

    goto :goto_1

    .line 142
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 143
    iput-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    goto :goto_0

    .line 147
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 148
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 150
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 151
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 152
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 153
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 157
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 158
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 159
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 160
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 163
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 157
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    array-length v1, v8

    goto :goto_4

    .line 165
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    .line 166
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->configTimeUsec_:J

    .line 171
    iget v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    goto/16 :goto_0

    .line 175
    :sswitch_4
    const/16 v8, 0x18

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 177
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 178
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 179
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 180
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :cond_8
    :goto_7
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 183
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 184
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 177
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    array-length v1, v8

    goto :goto_6

    .line 187
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 188
    iput-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    goto/16 :goto_0

    .line 192
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 193
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 195
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 196
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 197
    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_b

    .line 198
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 201
    :cond_b
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 202
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    if-nez v8, :cond_d

    move v1, v7

    .line 203
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 204
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_c

    .line 205
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    :cond_c
    :goto_a
    array-length v8, v4

    if-ge v1, v8, :cond_e

    .line 208
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 202
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_d
    iget-object v8, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    array-length v1, v8

    goto :goto_9

    .line 210
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_e
    iput-object v4, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    .line 211
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1a -> :sswitch_5
    .end sparse-switch
.end method

.method public setConfigTimeUsec(J)Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->configTimeUsec_:J

    .line 37
    iget v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->experimentId:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->configTimeUsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    array-length v1, v1

    if-lez v1, :cond_2

    .line 77
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 78
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/webserver/shared/gws/experiments/ClientDataHeaderProto$ClientDataHeader;->triggerExperimentId:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
