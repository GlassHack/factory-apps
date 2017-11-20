.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInfo"
.end annotation


# static fields
.field public static final RECOGNIZER_EMBEDDED:I = 0x2

.field public static final RECOGNIZER_NETWORK:I = 0x1

.field public static final RECOGNIZER_NETWORK_AND_EMBEDDED:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;


# instance fields
.field private bitField0_:I

.field private grammarWeight_:D

.field private source_:I

.field private syncedContact_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4339
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4340
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 4341
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 2

    .prologue
    .line 4269
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    if-nez v0, :cond_1

    .line 4270
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4272
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    if-nez v0, :cond_0

    .line 4273
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 4275
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4277
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    return-object v0

    .line 4275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4427
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4421
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4344
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    .line 4345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    .line 4346
    iput-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    .line 4347
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    .line 4348
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->cachedSize:I

    .line 4349
    return-object p0
.end method

.method public clearGrammarWeight()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 2

    .prologue
    .line 4296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    .line 4297
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    .line 4298
    return-object p0
.end method

.method public clearSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1

    .prologue
    .line 4334
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    .line 4335
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    .line 4336
    return-object p0
.end method

.method public clearSyncedContact()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1

    .prologue
    .line 4315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    .line 4316
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    .line 4317
    return-object p0
.end method

.method public getGrammarWeight()D
    .locals 2

    .prologue
    .line 4285
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4368
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4369
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4370
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 4373
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4374
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4377
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4378
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4381
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->cachedSize:I

    .line 4382
    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 4323
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    return v0
.end method

.method public getSyncedContact()Z
    .locals 1

    .prologue
    .line 4304
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    return v0
.end method

.method public hasGrammarWeight()Z
    .locals 1

    .prologue
    .line 4293
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 4331
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncedContact()Z
    .locals 1

    .prologue
    .line 4312
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

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
    .line 4258
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4391
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4395
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4396
    :sswitch_0
    return-object p0

    .line 4401
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    .line 4402
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    goto :goto_0

    .line 4406
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    .line 4407
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    goto :goto_0

    .line 4411
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    .line 4412
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    goto :goto_0

    .line 4391
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setGrammarWeight(D)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4288
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    .line 4289
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    .line 4290
    return-object p0
.end method

.method public setSource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4326
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    .line 4327
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    .line 4328
    return-object p0
.end method

.method public setSyncedContact(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4307
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    .line 4308
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    .line 4309
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
    .line 4355
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4356
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 4358
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4359
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4361
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4362
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4364
    :cond_2
    return-void
.end method
