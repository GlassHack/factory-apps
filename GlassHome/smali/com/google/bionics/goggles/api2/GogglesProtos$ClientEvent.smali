.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_EVENT_NEW_BARCODE_DETECTED:I = 0x5

.field public static final EVENT_TYPE_EVENT_RECV_RESPONSE:I = 0x2

.field public static final EVENT_TYPE_EVENT_SCENE_CHANGE_DETECTED:I = 0x3

.field public static final EVENT_TYPE_EVENT_SEND_REQUEST:I = 0x1

.field public static final EVENT_TYPE_EVENT_THUMBNAIL_FETCH:I = 0x4

.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;


# instance fields
.field private bitField0_:I

.field private fetchResourceBytes_:I

.field private fetchSucceeded_:Z

.field private fetchUrl_:Ljava/lang/String;

.field private resultSetNumber_:I

.field private sequenceNumber_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2512
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2513
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2514
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 2

    .prologue
    .line 2382
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    if-nez v0, :cond_1

    .line 2383
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2385
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    if-nez v0, :cond_0

    .line 2386
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2388
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    return-object v0

    .line 2388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2639
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2633
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2517
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2518
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    .line 2519
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    .line 2520
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    .line 2521
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    .line 2522
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    .line 2523
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    .line 2524
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->cachedSize:I

    .line 2525
    return-object p0
.end method

.method public clearFetchResourceBytes()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2507
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    .line 2508
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2509
    return-object p0
.end method

.method public clearFetchSucceeded()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    .line 2489
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2490
    return-object p0
.end method

.method public clearFetchUrl()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    .line 2470
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2471
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2447
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    .line 2448
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2449
    return-object p0
.end method

.method public clearSequenceNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2428
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    .line 2429
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2430
    return-object p0
.end method

.method public clearType()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2409
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    .line 2410
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2411
    return-object p0
.end method

.method public getFetchResourceBytes()I
    .locals 1

    .prologue
    .line 2496
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    return v0
.end method

.method public getFetchSucceeded()Z
    .locals 1

    .prologue
    .line 2477
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    return v0
.end method

.method public getFetchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 2436
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 2417
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2553
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2554
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2555
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2558
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2559
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2562
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2563
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2566
    :cond_2
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2567
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2570
    :cond_3
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 2571
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2574
    :cond_4
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 2575
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2578
    :cond_5
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->cachedSize:I

    .line 2579
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2398
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    return v0
.end method

.method public hasFetchResourceBytes()Z
    .locals 1

    .prologue
    .line 2504
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFetchSucceeded()Z
    .locals 1

    .prologue
    .line 2485
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFetchUrl()Z
    .locals 1

    .prologue
    .line 2466
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 2444
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSequenceNumber()Z
    .locals 1

    .prologue
    .line 2425
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2406
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2588
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2592
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2593
    :sswitch_0
    return-object p0

    .line 2598
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    .line 2599
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 2603
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    .line 2604
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 2608
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    .line 2609
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 2613
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    .line 2614
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 2618
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    .line 2619
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 2623
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    .line 2624
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    goto :goto_0

    .line 2588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 2369
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public setFetchResourceBytes(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2499
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    .line 2500
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2501
    return-object p0
.end method

.method public setFetchSucceeded(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2480
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    .line 2481
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2482
    return-object p0
.end method

.method public setFetchUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2458
    if-nez p1, :cond_0

    .line 2459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2461
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    .line 2462
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2463
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2439
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    .line 2440
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2441
    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2420
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    .line 2421
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2422
    return-object p0
.end method

.method public setType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2401
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    .line 2402
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    .line 2403
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
    .line 2531
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2532
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2534
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2535
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2537
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2538
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2540
    :cond_2
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2541
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2543
    :cond_3
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 2544
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2546
    :cond_4
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2547
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2549
    :cond_5
    return-void
.end method
