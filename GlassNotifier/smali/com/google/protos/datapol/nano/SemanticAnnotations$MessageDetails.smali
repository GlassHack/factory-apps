.class public final Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SemanticAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/datapol/nano/SemanticAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;


# instance fields
.field public semanticType:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1285
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1286
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    .line 1287
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;
    .locals 2

    .prologue
    .line 1269
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    if-nez v0, :cond_1

    .line 1270
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1272
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    if-nez v0, :cond_0

    .line 1273
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    .line 1275
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    return-object v0

    .line 1275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1611
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;
    .locals 1

    .prologue
    .line 1290
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    .line 1291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->cachedSize:I

    .line 1293
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 1340
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 1341
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1344
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    aget v1, v4, v2

    .line 1346
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1348
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 1349
    iget-object v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1351
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1298
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 1312
    :cond_0
    :goto_0
    return v1

    .line 1301
    :cond_1
    instance-of v3, p1, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1304
    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    .line 1305
    .local v0, "other":Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;
    iget-object v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    iget-object v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1309
    iget-object v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1310
    :cond_2
    iget-object v3, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 1312
    :cond_4
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1317
    const/16 v0, 0x11

    .line 1318
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1319
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    .line 1320
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    .line 1321
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1322
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1323
    :goto_0
    add-int v0, v2, v1

    .line 1324
    return v0

    .line 1323
    :cond_1
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;
    .locals 20
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1359
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v14

    .line 1360
    .local v14, "tag":I
    sparse-switch v14, :sswitch_data_0

    .line 1364
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v14}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1365
    :sswitch_0
    return-object p0

    .line 1370
    :sswitch_1
    const/16 v17, 0x8

    .line 1371
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v10

    .line 1372
    .local v10, "length":I
    new-array v0, v10, [I

    move-object/from16 v16, v0

    .line 1373
    .local v16, "values":[I
    const/4 v5, 0x0

    .line 1374
    .local v5, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v6, v5

    .end local v5    # "count":I
    .local v6, "count":I
    :goto_1
    if-ge v7, v10, :cond_2

    .line 1375
    if-eqz v7, :cond_1

    .line 1376
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1378
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v9

    .line 1379
    .local v9, "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v15

    .line 1380
    .local v15, "value":I
    sparse-switch v15, :sswitch_data_1

    .line 1439
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1440
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move v5, v6

    .line 1374
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    goto :goto_1

    .line 1436
    :sswitch_2
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    aput v15, v16, v6

    goto :goto_2

    .line 1444
    .end local v5    # "count":I
    .end local v9    # "initialPos":I
    .end local v15    # "value":I
    .restart local v6    # "count":I
    :cond_2
    if-eqz v6, :cond_0

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    const/4 v7, 0x0

    .line 1446
    :goto_3
    if-nez v7, :cond_4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v6, v0, :cond_4

    .line 1447
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    goto :goto_0

    .line 1445
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    goto :goto_3

    .line 1449
    :cond_4
    add-int v17, v7, v6

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 1450
    .local v12, "newArray":[I
    if-eqz v7, :cond_5

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v12, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1454
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    goto/16 :goto_0

    .line 1460
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v12    # "newArray":[I
    .end local v16    # "values":[I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v4

    .line 1461
    .local v4, "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v11

    .line 1463
    .local v11, "limit":I
    const/4 v3, 0x0

    .line 1464
    .local v3, "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v13

    .line 1465
    .local v13, "startPos":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v17

    if-lez v17, :cond_6

    .line 1466
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    sparse-switch v17, :sswitch_data_2

    goto :goto_4

    .line 1522
    :sswitch_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1526
    :cond_6
    if-eqz v3, :cond_a

    .line 1527
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/4 v7, 0x0

    .line 1529
    .restart local v7    # "i":I
    :goto_5
    add-int v17, v7, v3

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 1530
    .restart local v12    # "newArray":[I
    if-eqz v7, :cond_7

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1533
    :cond_7
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v17

    if-lez v17, :cond_9

    .line 1534
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v9

    .line 1535
    .restart local v9    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v15

    .line 1536
    .restart local v15    # "value":I
    sparse-switch v15, :sswitch_data_3

    .line 1595
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1596
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_6

    .line 1528
    .end local v7    # "i":I
    .end local v9    # "initialPos":I
    .end local v12    # "newArray":[I
    .end local v15    # "value":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    goto :goto_5

    .line 1592
    .restart local v7    # "i":I
    .restart local v9    # "initialPos":I
    .restart local v12    # "newArray":[I
    .restart local v15    # "value":I
    :sswitch_5
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aput v15, v12, v7

    move v7, v8

    .line 1593
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_6

    .line 1600
    .end local v9    # "initialPos":I
    .end local v15    # "value":I
    :cond_9
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    .line 1602
    .end local v7    # "i":I
    .end local v12    # "newArray":[I
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch

    .line 1380
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x3e7 -> :sswitch_2
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_2
        0x44c -> :sswitch_2
        0x44e -> :sswitch_2
        0x44f -> :sswitch_2
        0x450 -> :sswitch_2
        0x451 -> :sswitch_2
        0x452 -> :sswitch_2
        0x453 -> :sswitch_2
        0x454 -> :sswitch_2
        0x4b0 -> :sswitch_2
        0x4b1 -> :sswitch_2
        0x4b2 -> :sswitch_2
        0x4b3 -> :sswitch_2
        0x4b4 -> :sswitch_2
        0x514 -> :sswitch_2
        0x515 -> :sswitch_2
        0x578 -> :sswitch_2
        0x579 -> :sswitch_2
        0x5dc -> :sswitch_2
        0x5dd -> :sswitch_2
        0x640 -> :sswitch_2
        0x641 -> :sswitch_2
        0x6a4 -> :sswitch_2
        0x6a5 -> :sswitch_2
        0x6a6 -> :sswitch_2
        0x708 -> :sswitch_2
        0x709 -> :sswitch_2
        0x70a -> :sswitch_2
        0x70b -> :sswitch_2
        0x76c -> :sswitch_2
        0x76d -> :sswitch_2
        0x7d0 -> :sswitch_2
        0x834 -> :sswitch_2
        0x835 -> :sswitch_2
        0x8fc -> :sswitch_2
        0x960 -> :sswitch_2
        0x9c4 -> :sswitch_2
        0xa28 -> :sswitch_2
        0xa29 -> :sswitch_2
        0xa2a -> :sswitch_2
        0x26ac -> :sswitch_2
        0x26ad -> :sswitch_2
        0x26ae -> :sswitch_2
        0x26af -> :sswitch_2
        0x26b0 -> :sswitch_2
        0x26b1 -> :sswitch_2
    .end sparse-switch

    .line 1466
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x3e7 -> :sswitch_4
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_4
        0x44c -> :sswitch_4
        0x44e -> :sswitch_4
        0x44f -> :sswitch_4
        0x450 -> :sswitch_4
        0x451 -> :sswitch_4
        0x452 -> :sswitch_4
        0x453 -> :sswitch_4
        0x454 -> :sswitch_4
        0x4b0 -> :sswitch_4
        0x4b1 -> :sswitch_4
        0x4b2 -> :sswitch_4
        0x4b3 -> :sswitch_4
        0x4b4 -> :sswitch_4
        0x514 -> :sswitch_4
        0x515 -> :sswitch_4
        0x578 -> :sswitch_4
        0x579 -> :sswitch_4
        0x5dc -> :sswitch_4
        0x5dd -> :sswitch_4
        0x640 -> :sswitch_4
        0x641 -> :sswitch_4
        0x6a4 -> :sswitch_4
        0x6a5 -> :sswitch_4
        0x6a6 -> :sswitch_4
        0x708 -> :sswitch_4
        0x709 -> :sswitch_4
        0x70a -> :sswitch_4
        0x70b -> :sswitch_4
        0x76c -> :sswitch_4
        0x76d -> :sswitch_4
        0x7d0 -> :sswitch_4
        0x834 -> :sswitch_4
        0x835 -> :sswitch_4
        0x8fc -> :sswitch_4
        0x960 -> :sswitch_4
        0x9c4 -> :sswitch_4
        0xa28 -> :sswitch_4
        0xa29 -> :sswitch_4
        0xa2a -> :sswitch_4
        0x26ac -> :sswitch_4
        0x26ad -> :sswitch_4
        0x26ae -> :sswitch_4
        0x26af -> :sswitch_4
        0x26b0 -> :sswitch_4
        0x26b1 -> :sswitch_4
    .end sparse-switch

    .line 1536
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_5
        0x3e7 -> :sswitch_5
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_5
        0x44c -> :sswitch_5
        0x44e -> :sswitch_5
        0x44f -> :sswitch_5
        0x450 -> :sswitch_5
        0x451 -> :sswitch_5
        0x452 -> :sswitch_5
        0x453 -> :sswitch_5
        0x454 -> :sswitch_5
        0x4b0 -> :sswitch_5
        0x4b1 -> :sswitch_5
        0x4b2 -> :sswitch_5
        0x4b3 -> :sswitch_5
        0x4b4 -> :sswitch_5
        0x514 -> :sswitch_5
        0x515 -> :sswitch_5
        0x578 -> :sswitch_5
        0x579 -> :sswitch_5
        0x5dc -> :sswitch_5
        0x5dd -> :sswitch_5
        0x640 -> :sswitch_5
        0x641 -> :sswitch_5
        0x6a4 -> :sswitch_5
        0x6a5 -> :sswitch_5
        0x6a6 -> :sswitch_5
        0x708 -> :sswitch_5
        0x709 -> :sswitch_5
        0x70a -> :sswitch_5
        0x70b -> :sswitch_5
        0x76c -> :sswitch_5
        0x76d -> :sswitch_5
        0x7d0 -> :sswitch_5
        0x834 -> :sswitch_5
        0x835 -> :sswitch_5
        0x8fc -> :sswitch_5
        0x960 -> :sswitch_5
        0x9c4 -> :sswitch_5
        0xa28 -> :sswitch_5
        0xa29 -> :sswitch_5
        0xa2a -> :sswitch_5
        0x26ac -> :sswitch_5
        0x26ad -> :sswitch_5
        0x26ae -> :sswitch_5
        0x26af -> :sswitch_5
        0x26b0 -> :sswitch_5
        0x26b1 -> :sswitch_5
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1332
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$MessageDetails;->semanticType:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1336
    return-void
.end method
