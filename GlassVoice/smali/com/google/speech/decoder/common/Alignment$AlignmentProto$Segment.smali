.class public final Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;


# instance fields
.field public amCost:F

.field public confidence:F

.field public cost:F

.field public end:J

.field public ilabel:J

.field public ilabelStr:Ljava/lang/String;

.field public lmCost:F

.field public olabel:J

.field public olabelStr:Ljava/lang/String;

.field public start:J

.field public states:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clear()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 68
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    sput-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->_emptyArray:[Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 71
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start:J

    .line 72
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end:J

    .line 73
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost:F

    .line 74
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost:F

    .line 75
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost:F

    .line 76
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel:J

    .line 77
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel:J

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    .line 81
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence:F

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cachedSize:I

    .line 83
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 109
    .local v4, "size":I
    const/4 v5, 0x6

    iget-wide v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 111
    const/4 v5, 0x7

    iget-wide v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 113
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 115
    const/16 v5, 0x9

    iget v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 117
    const/16 v5, 0xa

    iget v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 119
    const/16 v5, 0xb

    iget-wide v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 121
    const/16 v5, 0xc

    iget-wide v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 123
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 125
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 127
    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    array-length v5, v5

    if-lez v5, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    aget-wide v1, v5, v3

    .line 131
    .local v1, "element":J
    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "element":J
    :cond_0
    add-int/2addr v4, v0

    .line 135
    iget-object v5, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 137
    .end local v0    # "dataSize":I
    .end local v3    # "i":I
    :cond_1
    const/16 v5, 0x10

    iget v6, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 139
    iput v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cachedSize:I

    .line 140
    return v4
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
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 149
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 153
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start:J

    goto :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end:J

    goto :goto_0

    .line 167
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost:F

    goto :goto_0

    .line 171
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost:F

    goto :goto_0

    .line 175
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost:F

    goto :goto_0

    .line 179
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel:J

    goto :goto_0

    .line 183
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel:J

    goto :goto_0

    .line 187
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr:Ljava/lang/String;

    goto :goto_0

    .line 191
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr:Ljava/lang/String;

    goto :goto_0

    .line 195
    :sswitch_a
    const/16 v8, 0x78

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 197
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    if-nez v8, :cond_2

    move v1, v7

    .line 198
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [J

    .line 199
    .local v4, "newArray":[J
    if-eqz v1, :cond_1

    .line 200
    iget-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 203
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 204
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 197
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :cond_2
    iget-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    array-length v1, v8

    goto :goto_1

    .line 207
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[J
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 208
    iput-object v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    goto :goto_0

    .line 212
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 213
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 215
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 216
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 217
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 218
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 221
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 222
    iget-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    if-nez v8, :cond_6

    move v1, v7

    .line 223
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [J

    .line 224
    .restart local v4    # "newArray":[J
    if-eqz v1, :cond_5

    .line 225
    iget-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 228
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v4, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 222
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :cond_6
    iget-object v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    array-length v1, v8

    goto :goto_4

    .line 230
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[J
    :cond_7
    iput-object v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    .line 231
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 235
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[J
    .end local v5    # "startPos":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    iput v8, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence:F

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x30 -> :sswitch_1
        0x38 -> :sswitch_2
        0x45 -> :sswitch_3
        0x4d -> :sswitch_4
        0x55 -> :sswitch_5
        0x58 -> :sswitch_6
        0x60 -> :sswitch_7
        0x6a -> :sswitch_8
        0x72 -> :sswitch_9
        0x78 -> :sswitch_a
        0x7a -> :sswitch_b
        0x85 -> :sswitch_c
    .end sparse-switch
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
    .line 89
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 90
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 91
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 92
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 93
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 94
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 95
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 96
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 97
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    array-length v1, v1

    if-lez v1, :cond_0

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_0
    const/16 v1, 0x10

    iget v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence:F

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 104
    return-void
.end method
