.class public final Lcom/google/majel/proto/PeanutProtos$Video;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/PeanutProtos$Video;


# instance fields
.field private bitField0_:I

.field private durationMillis_:I

.field private renderedThumbUrl_:[B

.field private thumbUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1386
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->clear()Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1387
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 2

    .prologue
    .line 1265
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Video;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Video;

    if-nez v0, :cond_1

    .line 1266
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1268
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Video;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Video;

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/PeanutProtos$Video;

    sput-object v0, Lcom/google/majel/proto/PeanutProtos$Video;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    :cond_1
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$Video;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$Video;

    return-object v0

    .line 1271
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1499
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Video;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Video;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Video;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1493
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Video;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Video;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1390
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    .line 1392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    .line 1393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    .line 1394
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:[B

    .line 1395
    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    .line 1396
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->cachedSize:I

    .line 1397
    return-object p0
.end method

.method public clearDurationMillis()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    .line 1381
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1382
    return-object p0
.end method

.method public clearRenderedThumbUrl()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1361
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:[B

    .line 1362
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1363
    return-object p0
.end method

.method public clearThumbUrl()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    .line 1340
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1341
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    .line 1318
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1319
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    .line 1296
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1297
    return-object p0
.end method

.method public getDurationMillis()I
    .locals 1

    .prologue
    .line 1369
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    return v0
.end method

.method public getRenderedThumbUrl()[B
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1422
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1423
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1424
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1427
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1428
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1431
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1432
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1435
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1436
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1439
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1440
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1443
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->cachedSize:I

    .line 1444
    return v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDurationMillis()Z
    .locals 1

    .prologue
    .line 1377
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRenderedThumbUrl()Z
    .locals 1

    .prologue
    .line 1358
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbUrl()Z
    .locals 1

    .prologue
    .line 1336
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

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
    .line 1259
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Video;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Video;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1452
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1453
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1457
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1458
    :sswitch_0
    return-object p0

    .line 1463
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    .line 1464
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    goto :goto_0

    .line 1468
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    .line 1469
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    goto :goto_0

    .line 1473
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    .line 1474
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    goto :goto_0

    .line 1478
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:[B

    .line 1479
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    goto :goto_0

    .line 1483
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    .line 1484
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    goto :goto_0

    .line 1453
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setDurationMillis(I)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1372
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    .line 1373
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1374
    return-object p0
.end method

.method public setRenderedThumbUrl([B)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 1350
    if-nez p1, :cond_0

    .line 1351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1353
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:[B

    .line 1354
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1355
    return-object p0
.end method

.method public setThumbUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1328
    if-nez p1, :cond_0

    .line 1329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1331
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    .line 1332
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1333
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1306
    if-nez p1, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1309
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    .line 1310
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1311
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1284
    if-nez p1, :cond_0

    .line 1285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1287
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    .line 1288
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    .line 1289
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
    .line 1403
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1404
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1406
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1407
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1409
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1410
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1412
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1413
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1415
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1416
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1418
    :cond_4
    return-void
.end method
