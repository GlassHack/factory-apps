.class public final Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameDataLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;


# instance fields
.field public value:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1184
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    .line 1185
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 2

    .prologue
    .line 1169
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    if-nez v0, :cond_1

    .line 1170
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1172
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    if-nez v0, :cond_0

    .line 1173
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    .line 1175
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    return-object v0

    .line 1175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1275
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1269
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1

    .prologue
    .line 1188
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    .line 1189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->cachedSize:I

    .line 1190
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1205
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 1206
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1207
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 1208
    .local v0, "dataSize":I
    add-int/2addr v1, v0

    .line 1209
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 1211
    .end local v0    # "dataSize":I
    :cond_0
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->cachedSize:I

    .line 1212
    return v1
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
    .line 1163
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 8
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 1221
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 1225
    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1226
    :sswitch_0
    return-object p0

    .line 1231
    :sswitch_1
    const/16 v7, 0xd

    invoke-static {p1, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1233
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    if-nez v7, :cond_2

    move v1, v6

    .line 1234
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 1235
    .local v4, "newArray":[F
    if-eqz v1, :cond_1

    .line 1236
    iget-object v7, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 1239
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 1240
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1238
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1233
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_2
    iget-object v7, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    array-length v1, v7

    goto :goto_1

    .line 1243
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 1244
    iput-object v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    goto :goto_0

    .line 1248
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1249
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1250
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 1251
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    if-nez v7, :cond_5

    move v1, v6

    .line 1252
    .restart local v1    # "i":I
    :goto_3
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 1253
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_4

    .line 1254
    iget-object v7, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    :cond_4
    :goto_4
    array-length v7, v4

    if-ge v1, v7, :cond_6

    .line 1257
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1251
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_5
    iget-object v7, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    array-length v1, v7

    goto :goto_3

    .line 1259
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_6
    iput-object v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    .line 1260
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 1221
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
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
    .line 1196
    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1198
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
