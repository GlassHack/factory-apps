.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorInformation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;


# instance fields
.field private bitField0_:I

.field private errorCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2274
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2275
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    .line 2276
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
    .locals 2

    .prologue
    .line 2242
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    if-nez v0, :cond_1

    .line 2243
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2245
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    if-nez v0, :cond_0

    .line 2246
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    .line 2248
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2250
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    return-object v0

    .line 2248
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2336
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2330
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2279
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    .line 2280
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->errorCode_:I

    .line 2281
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->cachedSize:I

    .line 2282
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
    .locals 1

    .prologue
    .line 2269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->errorCode_:I

    .line 2270
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    .line 2271
    return-object p0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 2258
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->errorCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2295
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2296
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2297
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->errorCode_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2300
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->cachedSize:I

    .line 2301
    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 2266
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

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
    .line 2236
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2310
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2314
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2315
    :sswitch_0
    return-object p0

    .line 2320
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->errorCode_:I

    .line 2321
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    goto :goto_0

    .line 2310
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setErrorCode(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2261
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->errorCode_:I

    .line 2262
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    .line 2263
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
    .line 2288
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2289
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ErrorInformation;->errorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2291
    :cond_0
    return-void
.end method
