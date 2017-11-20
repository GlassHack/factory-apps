.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioLevelEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;


# instance fields
.field private bitField0_:I

.field private level_:F

.field private timeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1015
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    .line 1016
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 2

    .prologue
    .line 963
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    if-nez v0, :cond_1

    .line 964
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    if-nez v0, :cond_0

    .line 967
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    .line 969
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    return-object v0

    .line 969
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1083
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 2

    .prologue
    .line 1019
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    .line 1021
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    .line 1022
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->cachedSize:I

    .line 1023
    return-object p0
.end method

.method public clearLevel()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    .line 991
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    .line 992
    return-object p0
.end method

.method public clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 2

    .prologue
    .line 1009
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    .line 1010
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    .line 1011
    return-object p0
.end method

.method public getLevel()F
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1039
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1040
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1041
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1044
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1045
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1048
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->cachedSize:I

    .line 1049
    return v0
.end method

.method public getTimeUsec()J
    .locals 2

    .prologue
    .line 998
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    return-wide v0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

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
    .line 1006
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

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
    .line 957
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1058
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1062
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1063
    :sswitch_0
    return-object p0

    .line 1068
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    .line 1069
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    goto :goto_0

    .line 1073
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    .line 1074
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    goto :goto_0

    .line 1058
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLevel(F)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 982
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    .line 983
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    .line 984
    return-object p0
.end method

.method public setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1001
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    .line 1002
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    .line 1003
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
    .line 1029
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1030
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1032
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1033
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1035
    :cond_1
    return-void
.end method
