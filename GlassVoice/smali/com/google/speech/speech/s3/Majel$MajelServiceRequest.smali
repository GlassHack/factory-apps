.class public final Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelServiceRequest"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;


# instance fields
.field private bitField0_:I

.field private originalQuery_:Ljava/lang/String;

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 508
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->clear()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 509
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 2

    .prologue
    .line 450
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    if-nez v0, :cond_1

    .line 451
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    sput-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 456
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->_emptyArray:[Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    return-object v0

    .line 456
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->cachedSize:I

    .line 516
    return-object p0
.end method

.method public clearOriginalQuery()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1

    .prologue
    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    .line 503
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    .line 504
    return-object p0
.end method

.method public clearQuery()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1

    .prologue
    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    .line 481
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    .line 482
    return-object p0
.end method

.method public getOriginalQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 532
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 533
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 537
    :cond_0
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 538
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->cachedSize:I

    .line 542
    return v0
.end method

.method public hasOriginalQuery()Z
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

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
    .line 444
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 551
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 555
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    :sswitch_0
    return-object p0

    .line 561
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    .line 562
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    goto :goto_0

    .line 566
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    .line 567
    iget v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    goto :goto_0

    .line 551
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setOriginalQuery(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 494
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    .line 495
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    .line 496
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    .line 473
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    .line 474
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
    .line 522
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 525
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 526
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 528
    :cond_1
    return-void
.end method
