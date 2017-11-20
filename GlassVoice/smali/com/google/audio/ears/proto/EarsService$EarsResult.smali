.class public final Lcom/google/audio/ears/proto/EarsService$EarsResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field public country:[Ljava/lang/String;

.field private debug_:Ljava/lang/String;

.field private elapsedMs_:J

.field public famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

.field private lookupDelayMs_:J

.field public musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

.field private originalReferenceId_:J

.field public probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

.field public refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

.field private referenceId_:J

.field private ttsResponse_:Ljava/lang/String;

.field public tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1516
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clear()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1517
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1345
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    if-nez v0, :cond_1

    .line 1346
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    if-nez v0, :cond_0

    .line 1349
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$EarsResult;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1351
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsResult;

    return-object v0

    .line 1351
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1764
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1520
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1521
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    .line 1522
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    .line 1523
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    .line 1524
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->lookupDelayMs_:J

    .line 1525
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    .line 1526
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    .line 1527
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1528
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1529
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    .line 1530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    .line 1531
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 1532
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 1533
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 1534
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->cachedSize:I

    .line 1535
    return-object p0
.end method

.method public clearConfidence()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1372
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    .line 1373
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1374
    return-object p0
.end method

.method public clearDebug()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    .line 1395
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1396
    return-object p0
.end method

.method public clearElapsedMs()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    .line 1414
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1415
    return-object p0
.end method

.method public clearLookupDelayMs()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1432
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->lookupDelayMs_:J

    .line 1433
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1434
    return-object p0
.end method

.method public clearOriginalReferenceId()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1470
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    .line 1471
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1472
    return-object p0
.end method

.method public clearReferenceId()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1451
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    .line 1452
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1453
    return-object p0
.end method

.method public clearTtsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    .line 1502
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1503
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1361
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    return v0
.end method

.method public getDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    return-object v0
.end method

.method public getElapsedMs()J
    .locals 2

    .prologue
    .line 1402
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    return-wide v0
.end method

.method public getLookupDelayMs()J
    .locals 2

    .prologue
    .line 1421
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->lookupDelayMs_:J

    return-wide v0
.end method

.method public getOriginalReferenceId()J
    .locals 2

    .prologue
    .line 1459
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    return-wide v0
.end method

.method public getReferenceId()J
    .locals 2

    .prologue
    .line 1440
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 1589
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 1590
    .local v4, "size":I
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1591
    const/4 v5, 0x1

    iget v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 1594
    :cond_0
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 1595
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1598
    :cond_1
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    if-eqz v5, :cond_2

    .line 1599
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1602
    :cond_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    if-eqz v5, :cond_3

    .line 1603
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1606
    :cond_3
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4

    .line 1607
    const/4 v5, 0x5

    iget-wide v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1610
    :cond_4
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    .line 1611
    const/4 v5, 0x6

    iget-wide v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1614
    :cond_5
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-eqz v5, :cond_6

    .line 1615
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1618
    :cond_6
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-eqz v5, :cond_7

    .line 1619
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1622
    :cond_7
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    if-eqz v5, :cond_8

    .line 1623
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1626
    :cond_8
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_b

    .line 1627
    const/4 v0, 0x0

    .line 1628
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 1629
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 1630
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 1631
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 1632
    add-int/lit8 v0, v0, 0x1

    .line 1633
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1629
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1637
    .end local v2    # "element":Ljava/lang/String;
    :cond_a
    add-int/2addr v4, v1

    .line 1638
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 1640
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_b
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_c

    .line 1641
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1644
    :cond_c
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_d

    .line 1645
    const/16 v5, 0xc

    iget-wide v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1648
    :cond_d
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_e

    .line 1649
    const/16 v5, 0xd

    iget-wide v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->lookupDelayMs_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1652
    :cond_e
    iput v4, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->cachedSize:I

    .line 1653
    return v4
.end method

.method public getTtsResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1369
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 1391
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasElapsedMs()Z
    .locals 1

    .prologue
    .line 1410
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLookupDelayMs()Z
    .locals 1

    .prologue
    .line 1429
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOriginalReferenceId()Z
    .locals 1

    .prologue
    .line 1467
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReferenceId()Z
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTtsResponse()Z
    .locals 1

    .prologue
    .line 1498
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1662
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1666
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1667
    :sswitch_0
    return-object p0

    .line 1672
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    .line 1673
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    goto :goto_0

    .line 1677
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    .line 1678
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    goto :goto_0

    .line 1682
    :sswitch_3
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    if-nez v5, :cond_1

    .line 1683
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$MusicResult;-><init>()V

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 1685
    :cond_1
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1689
    :sswitch_4
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    if-nez v5, :cond_2

    .line 1690
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$TvResult;-><init>()V

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 1692
    :cond_2
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1696
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    .line 1697
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    goto :goto_0

    .line 1701
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    .line 1702
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    goto :goto_0

    .line 1706
    :sswitch_7
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-nez v5, :cond_3

    .line 1707
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1709
    :cond_3
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1713
    :sswitch_8
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-nez v5, :cond_4

    .line 1714
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1716
    :cond_4
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1720
    :sswitch_9
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    if-nez v5, :cond_5

    .line 1721
    new-instance v5, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-direct {v5}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;-><init>()V

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 1723
    :cond_5
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1727
    :sswitch_a
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1729
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    if-nez v5, :cond_7

    move v1, v4

    .line 1730
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1731
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1732
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1734
    :cond_6
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 1735
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1736
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1734
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1729
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 1739
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1740
    iput-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1744
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    .line 1745
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    goto/16 :goto_0

    .line 1749
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    .line 1750
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    goto/16 :goto_0

    .line 1754
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->lookupDelayMs_:J

    .line 1755
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    goto/16 :goto_0

    .line 1662
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
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
    .line 1203
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    move-result-object v0

    return-object v0
.end method

.method public setConfidence(F)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1364
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    .line 1365
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1366
    return-object p0
.end method

.method public setDebug(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1383
    if-nez p1, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1386
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    .line 1387
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1388
    return-object p0
.end method

.method public setElapsedMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1405
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    .line 1406
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1407
    return-object p0
.end method

.method public setLookupDelayMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1424
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->lookupDelayMs_:J

    .line 1425
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1426
    return-object p0
.end method

.method public setOriginalReferenceId(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1462
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    .line 1463
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1464
    return-object p0
.end method

.method public setReferenceId(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1443
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    .line 1444
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1445
    return-object p0
.end method

.method public setTtsResponse(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1490
    if-nez p1, :cond_0

    .line 1491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1493
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    .line 1494
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    .line 1495
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1542
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1544
    :cond_0
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1545
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1547
    :cond_1
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    if-eqz v2, :cond_2

    .line 1548
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1550
    :cond_2
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    if-eqz v2, :cond_3

    .line 1551
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult:Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1553
    :cond_3
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 1554
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1556
    :cond_4
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 1557
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1559
    :cond_5
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-eqz v2, :cond_6

    .line 1560
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1562
    :cond_6
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    if-eqz v2, :cond_7

    .line 1563
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1565
    :cond_7
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    if-eqz v2, :cond_8

    .line 1566
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1568
    :cond_8
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 1569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 1570
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1571
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1572
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1569
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1576
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_a
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    .line 1577
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1579
    :cond_b
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_c

    .line 1580
    const/16 v2, 0xc

    iget-wide v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1582
    :cond_c
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    .line 1583
    const/16 v2, 0xd

    iget-wide v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->lookupDelayMs_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1585
    :cond_d
    return-void
.end method
