.class public final Lcom/google/common/logging/Cw$CwStreamItemId;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwStreamItemId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwStreamItemId;


# instance fields
.field public id:I

.field public originalPackageName:Ljava/lang/String;

.field public postTimeMs:J

.field public species:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1425
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwStreamItemId;->clear()Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 1426
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwStreamItemId;
    .locals 2

    .prologue
    .line 1398
    sget-object v0, Lcom/google/common/logging/Cw$CwStreamItemId;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamItemId;

    if-nez v0, :cond_1

    .line 1399
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1401
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwStreamItemId;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamItemId;

    if-nez v0, :cond_0

    .line 1402
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwStreamItemId;

    sput-object v0, Lcom/google/common/logging/Cw$CwStreamItemId;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 1404
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwStreamItemId;->_emptyArray:[Lcom/google/common/logging/Cw$CwStreamItemId;

    return-object v0

    .line 1404
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamItemId;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    new-instance v0, Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwStreamItemId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwStreamItemId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamItemId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwStreamItemId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1526
    new-instance v0, Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwStreamItemId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwStreamItemId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwStreamItemId;
    .locals 2

    .prologue
    .line 1429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    .line 1430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    .line 1432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->species:Ljava/lang/String;

    .line 1433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    .line 1434
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->cachedSize:I

    .line 1435
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 1461
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1462
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1463
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1467
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1470
    :cond_1
    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    if-eqz v1, :cond_2

    .line 1471
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->species:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1475
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->species:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_3
    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 1479
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamItemId;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1490
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1491
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1495
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1496
    :sswitch_0
    return-object p0

    .line 1501
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    goto :goto_0

    .line 1505
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    goto :goto_0

    .line 1509
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    goto :goto_0

    .line 1513
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->species:Ljava/lang/String;

    goto :goto_0

    .line 1517
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    goto :goto_0

    .line 1491
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwStreamItemId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwStreamItemId;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1445
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1447
    :cond_1
    iget v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    if-eqz v0, :cond_2

    .line 1448
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1450
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->species:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1451
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->species:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1453
    :cond_3
    iget-wide v0, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1454
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1456
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1457
    return-void
.end method
