.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartialPart"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;


# instance fields
.field private bitField0_:I

.field public semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

.field private stability_:D

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1468
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1469
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 2

    .prologue
    .line 1410
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    if-nez v0, :cond_1

    .line 1411
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1413
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    if-nez v0, :cond_0

    .line 1414
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1416
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    return-object v0

    .line 1416
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1557
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1551
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 2

    .prologue
    .line 1472
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    .line 1473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    .line 1474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 1476
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->cachedSize:I

    .line 1477
    return-object p0
.end method

.method public clearStability()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 2

    .prologue
    .line 1459
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    .line 1460
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    .line 1461
    return-object p0
.end method

.method public clearText()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1

    .prologue
    .line 1440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    .line 1441
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    .line 1442
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1496
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1497
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1498
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1501
    :cond_0
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1502
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1505
    :cond_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-eqz v1, :cond_2

    .line 1506
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1509
    :cond_2
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->cachedSize:I

    .line 1510
    return v0
.end method

.method public getStability()D
    .locals 2

    .prologue
    .line 1448
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasStability()Z
    .locals 1

    .prologue
    .line 1456
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 1437
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

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
    .line 1404
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1518
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1519
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1523
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1524
    :sswitch_0
    return-object p0

    .line 1529
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    .line 1530
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    goto :goto_0

    .line 1534
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    .line 1535
    iget v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    goto :goto_0

    .line 1539
    :sswitch_3
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-nez v1, :cond_1

    .line 1540
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 1542
    :cond_1
    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1519
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setStability(D)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1451
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    .line 1452
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    .line 1453
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1429
    if-nez p1, :cond_0

    .line 1430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1432
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    .line 1433
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    .line 1434
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
    .line 1483
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1484
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1486
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1487
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    if-eqz v0, :cond_2

    .line 1490
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1492
    :cond_2
    return-void
.end method
