.class public final Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageSearchAction"
.end annotation


# static fields
.field public static final MESSAGE_TYPE_SMS:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;


# instance fields
.field private bitField0_:I

.field private maxResults_:I

.field public messageType:[I

.field public senders:[Ljava/lang/String;

.field private unreadOnly_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15282
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15283
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->clear()Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    .line 15284
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 2

    .prologue
    .line 15225
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    if-nez v0, :cond_1

    .line 15226
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15228
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    if-nez v0, :cond_0

    .line 15229
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    .line 15231
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15233
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    return-object v0

    .line 15231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15453
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 15447
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15287
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    .line 15288
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    .line 15289
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->unreadOnly_:Z

    .line 15290
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    .line 15291
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->maxResults_:I

    .line 15292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->cachedSize:I

    .line 15293
    return-object p0
.end method

.method public clearMaxResults()Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 1

    .prologue
    .line 15277
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->maxResults_:I

    .line 15278
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    .line 15279
    return-object p0
.end method

.method public clearUnreadOnly()Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 1

    .prologue
    .line 15255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->unreadOnly_:Z

    .line 15256
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    .line 15257
    return-object p0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 15266
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->maxResults_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 15322
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 15323
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    array-length v5, v5

    if-lez v5, :cond_1

    .line 15324
    const/4 v1, 0x0

    .line 15325
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 15326
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    aget v2, v5, v3

    .line 15327
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 15325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15330
    .end local v2    # "element":I
    :cond_0
    add-int/2addr v4, v1

    .line 15331
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 15333
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_1
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 15334
    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->unreadOnly_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 15337
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 15338
    const/4 v0, 0x0

    .line 15339
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 15340
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 15341
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 15342
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 15343
    add-int/lit8 v0, v0, 0x1

    .line 15344
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 15340
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15348
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 15349
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 15351
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 15352
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->maxResults_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 15355
    :cond_6
    iput v4, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->cachedSize:I

    .line 15356
    return v4
.end method

.method public getUnreadOnly()Z
    .locals 1

    .prologue
    .line 15244
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->unreadOnly_:Z

    return v0
.end method

.method public hasMaxResults()Z
    .locals 1

    .prologue
    .line 15274
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnreadOnly()Z
    .locals 1

    .prologue
    .line 15252
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

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
    .line 15216
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 15364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 15365
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 15369
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 15370
    :sswitch_0
    return-object p0

    .line 15375
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 15377
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 15378
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 15379
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 15380
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15382
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 15383
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 15384
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15382
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15377
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    array-length v1, v8

    goto :goto_1

    .line 15387
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 15388
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    goto :goto_0

    .line 15392
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 15393
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 15395
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 15396
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 15397
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 15398
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 15399
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15401
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 15402
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 15403
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 15404
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 15405
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15407
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 15408
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 15407
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 15402
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    array-length v1, v8

    goto :goto_4

    .line 15410
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    .line 15411
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 15415
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->unreadOnly_:Z

    .line 15416
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    goto/16 :goto_0

    .line 15420
    :sswitch_4
    const/16 v8, 0x1a

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 15422
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    if-nez v8, :cond_9

    move v1, v7

    .line 15423
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 15424
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 15425
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15427
    :cond_8
    :goto_7
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 15428
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 15429
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15427
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 15422
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_6

    .line 15432
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 15433
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    goto/16 :goto_0

    .line 15437
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->maxResults_:I

    .line 15438
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    goto/16 :goto_0

    .line 15365
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public setMaxResults(I)Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 15269
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->maxResults_:I

    .line 15270
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    .line 15271
    return-object p0
.end method

.method public setUnreadOnly(Z)Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 15247
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->unreadOnly_:Z

    .line 15248
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    .line 15249
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
    .line 15299
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 15300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 15301
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->messageType:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 15300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15304
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 15305
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->unreadOnly_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 15307
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 15308
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 15309
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->senders:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 15310
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 15311
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15308
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15315
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 15316
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$MessageSearchAction;->maxResults_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 15318
    :cond_4
    return-void
.end method
