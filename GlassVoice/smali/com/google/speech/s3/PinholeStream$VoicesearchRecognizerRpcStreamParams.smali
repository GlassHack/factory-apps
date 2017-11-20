.class public final Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoicesearchRecognizerRpcStreamParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;


# instance fields
.field private bitField0_:I

.field private enableResultPrefetch_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1271
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1272
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->clear()Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    .line 1273
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
    .locals 2

    .prologue
    .line 1239
    sget-object v0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    if-nez v0, :cond_1

    .line 1240
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1242
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    if-nez v0, :cond_0

    .line 1243
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    sput-object v0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    .line 1245
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    :cond_1
    sget-object v0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    return-object v0

    .line 1245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1333
    new-instance v0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1327
    new-instance v0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1276
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    .line 1277
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->enableResultPrefetch_:Z

    .line 1278
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->cachedSize:I

    .line 1279
    return-object p0
.end method

.method public clearEnableResultPrefetch()Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->enableResultPrefetch_:Z

    .line 1267
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    .line 1268
    return-object p0
.end method

.method public getEnableResultPrefetch()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->enableResultPrefetch_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1292
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1293
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1294
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->enableResultPrefetch_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1297
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->cachedSize:I

    .line 1298
    return v0
.end method

.method public hasEnableResultPrefetch()Z
    .locals 1

    .prologue
    .line 1263
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

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
    .line 1233
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
    .locals 2
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
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->enableResultPrefetch_:Z

    .line 1318
    iget v1, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    goto :goto_0

    .line 1307
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setEnableResultPrefetch(Z)Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1258
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->enableResultPrefetch_:Z

    .line 1259
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    .line 1260
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
    .line 1285
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$VoicesearchRecognizerRpcStreamParams;->enableResultPrefetch_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1288
    :cond_0
    return-void
.end method
