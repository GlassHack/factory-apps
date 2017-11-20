.class public final Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService$EarsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchRange"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;


# instance fields
.field private bitField0_:I

.field private endMs_:J

.field private startMs_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1263
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1264
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->clear()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1265
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 2

    .prologue
    .line 1212
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-nez v0, :cond_1

    .line 1213
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1215
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-nez v0, :cond_0

    .line 1216
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1218
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    return-object v0

    .line 1218
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1338
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1332
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1268
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    .line 1269
    iput-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    .line 1270
    iput-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    .line 1271
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->cachedSize:I

    .line 1272
    return-object p0
.end method

.method public clearEndMs()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 2

    .prologue
    .line 1258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    .line 1259
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    .line 1260
    return-object p0
.end method

.method public clearStartMs()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 2

    .prologue
    .line 1239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    .line 1240
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    .line 1241
    return-object p0
.end method

.method public getEndMs()J
    .locals 2

    .prologue
    .line 1247
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1288
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1289
    .local v0, "size":I
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1290
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1293
    :cond_0
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1294
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1297
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->cachedSize:I

    .line 1298
    return v0
.end method

.method public getStartMs()J
    .locals 2

    .prologue
    .line 1228
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    return-wide v0
.end method

.method public hasEndMs()Z
    .locals 1

    .prologue
    .line 1255
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartMs()Z
    .locals 1

    .prologue
    .line 1236
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1307
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1311
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1312
    :sswitch_0
    return-object p0

    .line 1317
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    .line 1318
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    goto :goto_0

    .line 1322
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    .line 1323
    iget v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    goto :goto_0

    .line 1307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1206
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v0

    return-object v0
.end method

.method public setEndMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1250
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    .line 1251
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    .line 1252
    return-object p0
.end method

.method public setStartMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1231
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    .line 1232
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    .line 1233
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
    .line 1278
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1279
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1281
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1282
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1284
    :cond_1
    return-void
.end method
