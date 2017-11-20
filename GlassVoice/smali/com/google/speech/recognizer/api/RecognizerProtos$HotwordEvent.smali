.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_END_OF_HOTWORD:I = 0x1

.field public static final EVENT_TYPE_START_OF_HOTWORD:I

.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;


# instance fields
.field private bitField0_:I

.field private eventType_:I

.field private timeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1154
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1155
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    .line 1156
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 2

    .prologue
    .line 1103
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    if-nez v0, :cond_1

    .line 1104
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1106
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    if-nez v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    .line 1109
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    return-object v0

    .line 1109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1229
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1159
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    .line 1160
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    .line 1161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    .line 1162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->cachedSize:I

    .line 1163
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1

    .prologue
    .line 1130
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    .line 1131
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    .line 1132
    return-object p0
.end method

.method public clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 2

    .prologue
    .line 1149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    .line 1150
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    .line 1151
    return-object p0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 1119
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1179
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1180
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1181
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1184
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1185
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1188
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->cachedSize:I

    .line 1189
    return v0
.end method

.method public getTimeUsec()J
    .locals 2

    .prologue
    .line 1138
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    return-wide v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeUsec()Z
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

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
    .line 1093
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1198
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1202
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1203
    :sswitch_0
    return-object p0

    .line 1208
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    .line 1209
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    goto :goto_0

    .line 1213
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    .line 1214
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    goto :goto_0

    .line 1198
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1122
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    .line 1123
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    .line 1124
    return-object p0
.end method

.method public setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1141
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    .line 1142
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    .line 1143
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
    .line 1169
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1170
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1172
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1173
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1175
    :cond_1
    return-void
.end method
