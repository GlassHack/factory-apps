.class public final Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InteractionInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;


# instance fields
.field private bitField0_:I

.field private cancel_:Z

.field private execute_:Z

.field private incomplete_:Z

.field private isFollowOn_:Z

.field private promptedArgumentId_:I

.field private promptedField_:I

.field private suggestedDelayMs_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1331
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->clear()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    .line 1332
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 2

    .prologue
    .line 1184
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    if-nez v0, :cond_1

    .line 1185
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1187
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    if-nez v0, :cond_0

    .line 1188
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    .line 1190
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    return-object v0

    .line 1190
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1470
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1464
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1335
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1336
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->execute_:Z

    .line 1337
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->suggestedDelayMs_:I

    .line 1338
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->isFollowOn_:Z

    .line 1339
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->incomplete_:Z

    .line 1340
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cancel_:Z

    .line 1341
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedField_:I

    .line 1342
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedArgumentId_:I

    .line 1343
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cachedSize:I

    .line 1344
    return-object p0
.end method

.method public clearCancel()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    .line 1287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cancel_:Z

    .line 1288
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1289
    return-object p0
.end method

.method public clearExecute()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->execute_:Z

    .line 1212
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1213
    return-object p0
.end method

.method public clearIncomplete()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->incomplete_:Z

    .line 1269
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1270
    return-object p0
.end method

.method public clearIsFollowOn()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->isFollowOn_:Z

    .line 1250
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1251
    return-object p0
.end method

.method public clearPromptedArgumentId()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedArgumentId_:I

    .line 1326
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1327
    return-object p0
.end method

.method public clearPromptedField()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    .line 1306
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedField_:I

    .line 1307
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1308
    return-object p0
.end method

.method public clearSuggestedDelayMs()Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1

    .prologue
    .line 1230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->suggestedDelayMs_:I

    .line 1231
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1232
    return-object p0
.end method

.method public getCancel()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cancel_:Z

    return v0
.end method

.method public getExecute()Z
    .locals 1

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->execute_:Z

    return v0
.end method

.method public getIncomplete()Z
    .locals 1

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->incomplete_:Z

    return v0
.end method

.method public getIsFollowOn()Z
    .locals 1

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->isFollowOn_:Z

    return v0
.end method

.method public getPromptedArgumentId()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedArgumentId_:I

    return v0
.end method

.method public getPromptedField()I
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedField_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1375
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1376
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1377
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->execute_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1380
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1381
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->suggestedDelayMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1384
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1385
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->isFollowOn_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1388
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1389
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->incomplete_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1392
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1393
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cancel_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1396
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1397
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedField_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1400
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1401
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedArgumentId_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1404
    :cond_6
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cachedSize:I

    .line 1405
    return v0
.end method

.method public getSuggestedDelayMs()I
    .locals 1

    .prologue
    .line 1219
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->suggestedDelayMs_:I

    return v0
.end method

.method public hasCancel()Z
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExecute()Z
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIncomplete()Z
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsFollowOn()Z
    .locals 1

    .prologue
    .line 1246
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPromptedArgumentId()Z
    .locals 1

    .prologue
    .line 1322
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPromptedField()Z
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuggestedDelayMs()Z
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

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
    .line 1178
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1413
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1414
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1418
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1419
    :sswitch_0
    return-object p0

    .line 1424
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->execute_:Z

    .line 1425
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    goto :goto_0

    .line 1429
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->suggestedDelayMs_:I

    .line 1430
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    goto :goto_0

    .line 1434
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->isFollowOn_:Z

    .line 1435
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    goto :goto_0

    .line 1439
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->incomplete_:Z

    .line 1440
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    goto :goto_0

    .line 1444
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cancel_:Z

    .line 1445
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    goto :goto_0

    .line 1449
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedField_:I

    .line 1450
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    goto :goto_0

    .line 1454
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedArgumentId_:I

    .line 1455
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    goto :goto_0

    .line 1414
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setCancel(Z)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1279
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cancel_:Z

    .line 1280
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1281
    return-object p0
.end method

.method public setExecute(Z)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1203
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->execute_:Z

    .line 1204
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1205
    return-object p0
.end method

.method public setIncomplete(Z)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1260
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->incomplete_:Z

    .line 1261
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1262
    return-object p0
.end method

.method public setIsFollowOn(Z)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1241
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->isFollowOn_:Z

    .line 1242
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1243
    return-object p0
.end method

.method public setPromptedArgumentId(I)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1317
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedArgumentId_:I

    .line 1318
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1319
    return-object p0
.end method

.method public setPromptedField(I)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1298
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedField_:I

    .line 1299
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1300
    return-object p0
.end method

.method public setSuggestedDelayMs(I)Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1222
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->suggestedDelayMs_:I

    .line 1223
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    .line 1224
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
    .line 1350
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1351
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->execute_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1353
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1354
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->suggestedDelayMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1356
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1357
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->isFollowOn_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1359
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1360
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->incomplete_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1362
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1363
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->cancel_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1365
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1366
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedField_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1368
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1369
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$InteractionInfo;->promptedArgumentId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1371
    :cond_6
    return-void
.end method
