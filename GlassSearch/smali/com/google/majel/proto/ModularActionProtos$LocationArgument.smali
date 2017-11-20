.class public final Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationArgument"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$LocationArgument;


# instance fields
.field private bitField0_:I

.field public layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

.field private query_:Ljava/lang/String;

.field public value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1475
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->clear()Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    .line 1476
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
    .locals 2

    .prologue
    .line 1433
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    if-nez v0, :cond_1

    .line 1434
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1436
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    if-nez v0, :cond_0

    .line 1437
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    .line 1439
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    return-object v0

    .line 1439
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1560
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    .line 1480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->query_:Ljava/lang/String;

    .line 1481
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 1482
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    .line 1483
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->cachedSize:I

    .line 1484
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
    .locals 1

    .prologue
    .line 1463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->query_:Ljava/lang/String;

    .line 1464
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    .line 1465
    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1503
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1504
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1505
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->query_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v1, :cond_1

    .line 1509
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1512
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    if-eqz v1, :cond_2

    .line 1513
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1516
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->cachedSize:I

    .line 1517
    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

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
    .line 1427
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$LocationArgument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1526
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1530
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1531
    :sswitch_0
    return-object p0

    .line 1536
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->query_:Ljava/lang/String;

    .line 1537
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    goto :goto_0

    .line 1541
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-nez v1, :cond_1

    .line 1542
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 1544
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1548
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    if-nez v1, :cond_2

    .line 1549
    new-instance v1, Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    invoke-direct {v1}, Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    .line 1551
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1526
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$LocationArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1452
    if-nez p1, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1455
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->query_:Ljava/lang/String;

    .line 1456
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    .line 1457
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
    .line 1490
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1491
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->query_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v0, :cond_1

    .line 1494
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    if-eqz v0, :cond_2

    .line 1497
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$LocationArgument;->layoutInformation:Lcom/google/majel/proto/ModularActionLayoutProtos$LocationArgumentLayoutInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1499
    :cond_2
    return-void
.end method
