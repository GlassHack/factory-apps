.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GmsCoreData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;


# instance fields
.field private bitField0_:I

.field private googlePlayServicesAvailability_:I

.field private googlePlayServicesVersionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5342
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5343
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    .line 5344
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 2

    .prologue
    .line 5291
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    if-nez v0, :cond_1

    .line 5292
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5294
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    if-nez v0, :cond_0

    .line 5295
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    .line 5297
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5299
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    return-object v0

    .line 5297
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5417
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5411
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5347
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    .line 5348
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesAvailability_:I

    .line 5349
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesVersionCode_:I

    .line 5350
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->cachedSize:I

    .line 5351
    return-object p0
.end method

.method public clearGooglePlayServicesAvailability()Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 1

    .prologue
    .line 5318
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesAvailability_:I

    .line 5319
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    .line 5320
    return-object p0
.end method

.method public clearGooglePlayServicesVersionCode()Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 1

    .prologue
    .line 5337
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesVersionCode_:I

    .line 5338
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    .line 5339
    return-object p0
.end method

.method public getGooglePlayServicesAvailability()I
    .locals 1

    .prologue
    .line 5307
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesAvailability_:I

    return v0
.end method

.method public getGooglePlayServicesVersionCode()I
    .locals 1

    .prologue
    .line 5326
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesVersionCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5367
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5368
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5369
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesAvailability_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5372
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5373
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesVersionCode_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5376
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->cachedSize:I

    .line 5377
    return v0
.end method

.method public hasGooglePlayServicesAvailability()Z
    .locals 1

    .prologue
    .line 5315
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGooglePlayServicesVersionCode()Z
    .locals 1

    .prologue
    .line 5334
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

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
    .line 5285
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5386
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5390
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5391
    :sswitch_0
    return-object p0

    .line 5396
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesAvailability_:I

    .line 5397
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    goto :goto_0

    .line 5401
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesVersionCode_:I

    .line 5402
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    goto :goto_0

    .line 5386
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setGooglePlayServicesAvailability(I)Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5310
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesAvailability_:I

    .line 5311
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    .line 5312
    return-object p0
.end method

.method public setGooglePlayServicesVersionCode(I)Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5329
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesVersionCode_:I

    .line 5330
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    .line 5331
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
    .line 5357
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5358
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesAvailability_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5360
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5361
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$GmsCoreData;->googlePlayServicesVersionCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5363
    :cond_1
    return-void
.end method
