.class final Lcom/google/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/google/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private endGroupTag:I

.field private final initialPos:I

.field private limit:I

.field private pos:I

.field private tag:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "bytebuf"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferIsImmutable"    # Z

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader;-><init>(Lcom/google/protobuf/BinaryReader$1;)V

    .line 66
    iput-boolean p2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 70
    return-void
.end method

.method private isAtEnd()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1542
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_0

    .line 1543
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1383
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1419
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1417
    :goto_0
    return-object v0

    .line 1387
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 1389
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1391
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1393
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1395
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1397
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1399
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1401
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1403
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1405
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1407
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1409
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1411
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1413
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1415
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1417
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 1383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 241
    .local v1, "prevEndGroupTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 242
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 246
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 249
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-eq v2, v3, :cond_0

    .line 250
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    throw v2

    .restart local v0    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 252
    return-object v0
.end method

.method private readLittleEndian32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1549
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1550
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private readLittleEndian32_NoCheck()I
    .locals 4

    .prologue
    .line 1559
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1560
    .local v1, "p":I
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1561
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1562
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private readLittleEndian64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1555
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private readLittleEndian64_NoCheck()J
    .locals 10

    .prologue
    const-wide/16 v8, 0xff

    .line 1569
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1570
    .local v1, "p":I
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1571
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x8

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1572
    aget-byte v2, v0, v1

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    .line 209
    .local v3, "size":I
    invoke-direct {p0, v3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 212
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 213
    .local v2, "prevLimit":I
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v4, v3

    .line 214
    .local v1, "newLimit":I
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 218
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 221
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-eq v4, v1, :cond_0

    .line 222
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v4

    .restart local v0    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 224
    return-object v0
.end method

.method private readVarint32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1426
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1428
    .local v0, "i":I
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v4, v5, :cond_0

    .line 1429
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 1433
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v2, v4, v0

    .local v2, "x":I
    if-ltz v2, :cond_1

    .line 1434
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v4, v2

    .line 1458
    :goto_0
    return v4

    .line 1436
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_1
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v4, v1

    const/16 v5, 0x9

    if-ge v4, v5, :cond_2

    .line 1437
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v4

    long-to-int v4, v4

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1438
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_4

    .line 1439
    xor-int/lit8 v2, v2, -0x80

    .line 1457
    :cond_3
    :goto_1
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    move v4, v2

    .line 1458
    goto :goto_0

    .line 1440
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v4, v0

    shl-int/lit8 v4, v4, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_5

    .line 1441
    xor-int/lit16 v2, v2, 0x3f80

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 1442
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v2, v4

    if-gez v2, :cond_6

    .line 1443
    const v4, -0x1fc080

    xor-int/2addr v2, v4

    goto :goto_1

    .line 1445
    :cond_6
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v3, v4, v0

    .line 1446
    .local v3, "y":I
    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v2, v4

    .line 1447
    const v4, 0xfe03f80

    xor-int/2addr v2, v4

    .line 1448
    if-gez v3, :cond_7

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v4, v0

    if-gez v4, :cond_7

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v4, v0

    if-gez v4, :cond_7

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    if-gez v4, :cond_3

    .line 1454
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method private readVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1530
    const-wide/16 v2, 0x0

    .line 1531
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 1532
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v0

    .line 1533
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 1534
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 1535
    return-wide v2

    .line 1531
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 1538
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
.end method

.method private requireBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1627
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 1628
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1630
    :cond_1
    return-void
.end method

.method private requireWireType(I)V
    .locals 1
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1633
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1634
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1636
    :cond_0
    return-void
.end method

.method private skipBytes(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1606
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1608
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1609
    return-void
.end method

.method private skipGroup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1613
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 1614
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1616
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1620
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-eq v1, v2, :cond_2

    .line 1621
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1623
    :cond_2
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1624
    return-void
.end method

.method private skipVarint()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 1583
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, v6, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1585
    .local v0, "buffer":[B
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1586
    .local v2, "p":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "p":I
    .local v3, "p":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 1587
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    aget-byte v4, v0, v3

    if-ltz v4, :cond_0

    .line 1588
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1594
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v2    # "p":I
    :goto_1
    return-void

    .line 1586
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v2    # "p":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "p":I
    .restart local v3    # "p":I
    goto :goto_0

    .line 1593
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "p":I
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    goto :goto_1
.end method

.method private skipVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1598
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 1599
    return-void

    .line 1597
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1602
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private verifyPackedFixed32Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1647
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1648
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 1650
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1652
    :cond_0
    return-void
.end method

.method private verifyPackedFixed64Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1640
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_0

    .line 1642
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1644
    :cond_0
    return-void
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v0, 0x7fffffff

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 87
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-eq v1, v2, :cond_0

    .line 90
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 170
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 756
    instance-of v5, p1, Lcom/google/protobuf/BooleanArrayList;

    if-eqz v5, :cond_4

    move-object v3, p1

    .line 757
    check-cast v3, Lcom/google/protobuf/BooleanArrayList;

    .line 758
    .local v3, "plist":Lcom/google/protobuf/BooleanArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 783
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 760
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 761
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 762
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_2

    .line 763
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    .line 768
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 770
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 814
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_2
    :goto_2
    return-void

    .line 773
    .restart local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 774
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 775
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_1

    .line 778
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_2

    .line 786
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    .end local v4    # "prevPos":I
    :cond_4
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 811
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 788
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 789
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 790
    .restart local v1    # "fieldEndPos":I
    :goto_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4

    .line 796
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_6
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_2

    .line 801
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 802
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 803
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_6

    .line 806
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_2

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 786
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 262
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 263
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 264
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 273
    :goto_0
    return-object v0

    .line 267
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 268
    iget-boolean v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 272
    .local v0, "bytes":Lcom/google/protobuf/ByteString;
    :goto_1
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0

    .line 271
    .end local v0    # "bytes":Lcom/google/protobuf/ByteString;
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_1
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 925
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 940
    :goto_0
    return-void

    .line 934
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 935
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 936
    .local v0, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v0, v2, :cond_0

    .line 939
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 128
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v5, p1, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 315
    check-cast v3, Lcom/google/protobuf/DoubleArrayList;

    .line 316
    .local v3, "plist":Lcom/google/protobuf/DoubleArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 342
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 318
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 319
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 320
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 321
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_0

    .line 327
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 329
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_1
    :goto_1
    return-void

    .line 332
    .restart local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 333
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 334
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 337
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 345
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 371
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 347
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 348
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 349
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 350
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 356
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 361
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 362
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 363
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 366
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 345
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 285
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1010
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1011
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1036
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1013
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1014
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1015
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1021
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1023
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1067
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1026
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1027
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1028
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1031
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1039
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1064
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1041
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1042
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1043
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1044
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1049
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1054
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1055
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1056
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1059
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1011
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1039
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 164
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 693
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 694
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 720
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 696
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 697
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 698
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 699
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 700
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 705
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 707
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 752
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 710
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 711
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 712
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 715
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 723
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 749
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 725
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 726
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 727
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 728
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 729
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 734
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 739
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 740
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 741
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 744
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 694
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 723
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 158
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 629
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 630
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 656
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 632
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 633
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 634
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 635
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 641
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 688
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 646
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 647
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 648
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 651
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 659
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 685
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 661
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 662
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 663
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 664
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 665
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 670
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 675
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 676
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 677
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 680
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 659
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 134
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v5, p1, Lcom/google/protobuf/FloatArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 379
    check-cast v3, Lcom/google/protobuf/FloatArrayList;

    .line 380
    .local v3, "plist":Lcom/google/protobuf/FloatArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 406
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 382
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 383
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 384
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 385
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_0

    .line 391
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 393
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 438
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_1
    :goto_1
    return-void

    .line 396
    .restart local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 397
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 398
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 401
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 409
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 435
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 411
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 412
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 413
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 414
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 420
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 425
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 426
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 427
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 430
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 380
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 409
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 235
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 900
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 903
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 904
    .local v3, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 906
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 917
    :goto_0
    return-void

    .line 911
    :cond_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 912
    .local v2, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 913
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 916
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 152
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 567
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 568
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 593
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 570
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 571
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 572
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 578
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 580
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 624
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 583
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 584
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 585
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 588
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 596
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 621
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 598
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 599
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 600
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 606
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 611
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 612
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 613
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 616
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 596
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 146
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 505
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 506
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 531
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 508
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 509
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 510
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 516
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 518
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 562
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 521
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 522
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 523
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 526
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 534
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 559
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 536
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 537
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 538
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 544
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 549
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 550
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 551
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 554
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 534
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$Metadata",
            "<TK;TV;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1328
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 1329
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    .line 1330
    .local v5, "size":I
    invoke-direct {p0, v5}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1333
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1334
    .local v4, "prevLimit":I
    iget v7, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v2, v7, v5

    .line 1335
    .local v2, "newLimit":I
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1338
    :try_start_0
    iget-object v1, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1339
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v6, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1341
    .local v6, "value":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v3

    .line 1342
    .local v3, "number":I
    const v7, 0x7fffffff

    if-ne v3, v7, :cond_1

    .line 1371
    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1376
    return-void

    .line 1346
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 1359
    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1360
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v8, "Unable to parse map entry."

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    :catch_0
    move-exception v0

    .line 1366
    .local v0, "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1367
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v8, "Unable to parse map entry."

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1374
    .end local v0    # "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "number":I
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v7

    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v7

    .line 1348
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "number":I
    .restart local v6    # "value":Ljava/lang/Object;, "TV;"
    :pswitch_0
    :try_start_3
    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 1349
    goto :goto_0

    .line 1351
    :pswitch_1
    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v8, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1355
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1353
    invoke-direct {p0, v7, v8, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 1357
    goto :goto_0

    .line 1346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 203
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 873
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 876
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 877
    .local v3, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 879
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 890
    :goto_0
    return-void

    .line 884
    :cond_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 885
    .local v2, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 886
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 889
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 291
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1072
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1073
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1099
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1075
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1076
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1077
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1078
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1079
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1084
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1086
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1131
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1089
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1090
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1091
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1094
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1102
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1128
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1104
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1105
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1106
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1107
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1108
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1113
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1118
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1119
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1120
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1123
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1073
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1102
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 297
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1135
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1136
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 1137
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1163
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1139
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1140
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1141
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1142
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1143
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 1148
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1150
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1195
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1153
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1154
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1155
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1158
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1166
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1192
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1168
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1169
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1170
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1171
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1172
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1177
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1182
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1183
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1184
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1187
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1166
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 303
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1200
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1201
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1226
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1203
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1204
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1205
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1206
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1211
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1213
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1257
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1216
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1217
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1218
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1221
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1229
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1254
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1231
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1232
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1233
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1234
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1239
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1244
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1245
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1246
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1249
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1229
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 309
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1262
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 1263
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1288
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1265
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1266
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1267
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1268
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 1273
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1275
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1319
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1278
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1279
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1280
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1283
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1291
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1316
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1293
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1294
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1295
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1296
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1301
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1306
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1307
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1308
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1311
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1291
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringInternal(Z)Ljava/lang/String;
    .locals 5
    .param p1, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 185
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 186
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 187
    const-string v0, ""

    .line 196
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 191
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 195
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 819
    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 5
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 829
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 832
    :cond_0
    instance-of v3, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v3, :cond_4

    if-nez p2, :cond_4

    move-object v0, p1

    .line 833
    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 835
    .local v0, "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 837
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 862
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_2
    :goto_0
    return-void

    .line 840
    .restart local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_3
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 841
    .local v2, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 842
    .local v1, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v3, :cond_1

    .line 845
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0

    .line 851
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    .end local v1    # "nextTag":I
    .end local v2    # "prevPos":I
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 856
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 857
    .restart local v2    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 858
    .restart local v1    # "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v3, :cond_4

    .line 861
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 824
    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 279
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 948
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 949
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 974
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 951
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 952
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 953
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 954
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 959
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 961
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1005
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 964
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 965
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 966
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 969
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 977
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1002
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 979
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 980
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 981
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 982
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 987
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 992
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 993
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 994
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 997
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 977
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 140
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 443
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 444
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 469
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 446
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 447
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 448
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 454
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 456
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 500
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 459
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 460
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 461
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 464
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 472
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 497
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 474
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 475
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 476
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 482
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 487
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 488
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 489
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 492
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 472
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readVarint64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 1473
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1475
    .local v1, "i":I
    iget v6, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v6, v1, :cond_0

    .line 1476
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1482
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v3, v0, v1

    .local v3, "y":I
    if-ltz v3, :cond_1

    .line 1483
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1484
    int-to-long v4, v3

    move v1, v2

    .line 1526
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_0
    return-wide v4

    .line 1485
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    iget v6, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v6, v2

    const/16 v7, 0x9

    if-ge v6, v7, :cond_2

    .line 1486
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1487
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v3, v6

    if-gez v3, :cond_4

    .line 1488
    xor-int/lit8 v6, v3, -0x80

    int-to-long v4, v6

    .line 1525
    .local v4, "x":J
    :cond_3
    :goto_1
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0

    .line 1489
    .end local v4    # "x":J
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0xe

    xor-int/2addr v3, v6

    if-ltz v3, :cond_5

    .line 1490
    xor-int/lit16 v6, v3, 0x3f80

    int-to-long v4, v6

    .restart local v4    # "x":J
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1491
    .end local v1    # "i":I
    .end local v4    # "x":J
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x15

    xor-int/2addr v3, v6

    if-gez v3, :cond_6

    .line 1492
    const v6, -0x1fc080

    xor-int/2addr v6, v3

    int-to-long v4, v6

    .restart local v4    # "x":J
    goto :goto_1

    .line 1493
    .end local v4    # "x":J
    :cond_6
    int-to-long v6, v3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v8, v0, v1

    int-to-long v8, v8

    const/16 v10, 0x1c

    shl-long/2addr v8, v10

    xor-long v4, v6, v8

    .restart local v4    # "x":J
    cmp-long v6, v4, v12

    if-ltz v6, :cond_7

    .line 1494
    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1495
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-gez v6, :cond_8

    .line 1496
    const-wide v6, -0x7f01fc080L

    xor-long/2addr v4, v6

    goto :goto_1

    .line 1497
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-ltz v6, :cond_9

    .line 1498
    const-wide v6, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1499
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-gez v6, :cond_a

    .line 1500
    const-wide v6, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    goto :goto_1

    .line 1509
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 1510
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1519
    cmp-long v6, v4, v12

    if-gez v6, :cond_b

    .line 1520
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    cmp-long v6, v6, v12

    if-gez v6, :cond_3

    .line 1521
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_b
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_1
.end method

.method public skipField()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 104
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 121
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 106
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    goto :goto_0

    .line 109
    :pswitch_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    goto :goto_0

    .line 115
    :pswitch_4
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    goto :goto_0

    .line 118
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
