.class public final Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguagePackLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;


# instance fields
.field private bitField0_:I

.field private locale_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1548
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1549
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 1550
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 2

    .prologue
    .line 1491
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    if-nez v0, :cond_1

    .line 1492
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1494
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    if-nez v0, :cond_0

    .line 1495
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 1497
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    return-object v0

    .line 1497
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1623
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1617
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    .line 1554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 1555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1556
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 1557
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 1521
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 1522
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    .line 1523
    return-object p0
.end method

.method public clearVersion()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 1543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1544
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    .line 1545
    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1573
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1574
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1575
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1578
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1579
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1582
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 1583
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 1518
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1540
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

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
    .line 1485
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1591
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1592
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1596
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    :sswitch_0
    return-object p0

    .line 1602
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 1603
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    goto :goto_0

    .line 1607
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1608
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    goto :goto_0

    .line 1592
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1510
    if-nez p1, :cond_0

    .line 1511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1513
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 1514
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    .line 1515
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1532
    if-nez p1, :cond_0

    .line 1533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1535
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1536
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    .line 1537
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
    .line 1563
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1564
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1566
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1567
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1569
    :cond_1
    return-void
.end method
