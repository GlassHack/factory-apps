.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinanceResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;


# instance fields
.field private bitField0_:I

.field private chartLink_:Ljava/lang/String;

.field private chartUrl_:Ljava/lang/String;

.field private company_:Ljava/lang/String;

.field public ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

.field private exchangeCode_:Ljava/lang/String;

.field private exchange_:Ljava/lang/String;

.field public stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

.field private symbolUrl_:Ljava/lang/String;

.field private symbol_:Ljava/lang/String;

.field public topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2572
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2573
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2574
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 2

    .prologue
    .line 2396
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    if-nez v0, :cond_1

    .line 2397
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2399
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    if-nez v0, :cond_0

    .line 2400
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2402
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2404
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    return-object v0

    .line 2402
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2780
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2774
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2577
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    .line 2579
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    .line 2580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    .line 2581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    .line 2582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    .line 2583
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    .line 2585
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    .line 2586
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 2587
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 2588
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->cachedSize:I

    .line 2589
    return-object p0
.end method

.method public clearChartLink()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    .line 2562
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2563
    return-object p0
.end method

.method public clearChartUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    .line 2540
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2541
    return-object p0
.end method

.method public clearCompany()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    .line 2471
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2472
    return-object p0
.end method

.method public clearExchange()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    .line 2493
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2494
    return-object p0
.end method

.method public clearExchangeCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    .line 2515
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2516
    return-object p0
.end method

.method public clearSymbol()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    .line 2427
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2428
    return-object p0
.end method

.method public clearSymbolUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    .line 2449
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2450
    return-object p0
.end method

.method public getChartLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getChartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    return-object v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2634
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2635
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2636
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2639
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2640
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2643
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 2644
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2647
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 2648
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2651
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    .line 2652
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2655
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 2656
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 2657
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    aget-object v0, v3, v1

    .line 2658
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    if-eqz v0, :cond_5

    .line 2659
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2656
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2664
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .end local v1    # "i":I
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_7

    .line 2665
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2668
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_8

    .line 2669
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2672
    :cond_8
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    if-eqz v3, :cond_9

    .line 2673
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2676
    :cond_9
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    if-eqz v3, :cond_a

    .line 2677
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2680
    :cond_a
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->cachedSize:I

    .line 2681
    return v2
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasChartLink()Z
    .locals 1

    .prologue
    .line 2558
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChartUrl()Z
    .locals 1

    .prologue
    .line 2536
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompany()Z
    .locals 1

    .prologue
    .line 2467
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExchange()Z
    .locals 1

    .prologue
    .line 2489
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExchangeCode()Z
    .locals 1

    .prologue
    .line 2511
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSymbol()Z
    .locals 1

    .prologue
    .line 2423
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSymbolUrl()Z
    .locals 1

    .prologue
    .line 2445
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

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
    .line 2248
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2690
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2694
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2695
    :sswitch_0
    return-object p0

    .line 2700
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    .line 2701
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    goto :goto_0

    .line 2705
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    .line 2706
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    goto :goto_0

    .line 2710
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    .line 2711
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    goto :goto_0

    .line 2715
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    .line 2716
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    goto :goto_0

    .line 2720
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    .line 2721
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    goto :goto_0

    .line 2725
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2727
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    if-nez v5, :cond_2

    move v1, v4

    .line 2728
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2730
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    if-eqz v1, :cond_1

    .line 2731
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2733
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2734
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;-><init>()V

    aput-object v5, v2, v1

    .line 2735
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2736
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2733
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2727
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    array-length v1, v5

    goto :goto_1

    .line 2739
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;-><init>()V

    aput-object v5, v2, v1

    .line 2740
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2741
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    goto/16 :goto_0

    .line 2745
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    .line 2746
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    goto/16 :goto_0

    .line 2750
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    .line 2751
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    goto/16 :goto_0

    .line 2755
    :sswitch_9
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    if-nez v5, :cond_4

    .line 2756
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 2758
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2762
    :sswitch_a
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    if-nez v5, :cond_5

    .line 2763
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 2765
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2690
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public setChartLink(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2550
    if-nez p1, :cond_0

    .line 2551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2553
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    .line 2554
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2555
    return-object p0
.end method

.method public setChartUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2528
    if-nez p1, :cond_0

    .line 2529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2531
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    .line 2532
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2533
    return-object p0
.end method

.method public setCompany(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2459
    if-nez p1, :cond_0

    .line 2460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2462
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    .line 2463
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2464
    return-object p0
.end method

.method public setExchange(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2481
    if-nez p1, :cond_0

    .line 2482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2484
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    .line 2485
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2486
    return-object p0
.end method

.method public setExchangeCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2503
    if-nez p1, :cond_0

    .line 2504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2506
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    .line 2507
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2508
    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2415
    if-nez p1, :cond_0

    .line 2416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2418
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    .line 2419
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2420
    return-object p0
.end method

.method public setSymbolUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2437
    if-nez p1, :cond_0

    .line 2438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2440
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    .line 2441
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    .line 2442
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2595
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2596
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2598
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2599
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2601
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2602
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2604
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 2605
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2607
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 2608
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2610
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 2611
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 2612
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    aget-object v0, v2, v1

    .line 2613
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    if-eqz v0, :cond_5

    .line 2614
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2611
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2618
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .end local v1    # "i":I
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7

    .line 2619
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2621
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 2622
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2624
    :cond_8
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    if-eqz v2, :cond_9

    .line 2625
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2627
    :cond_9
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    if-eqz v2, :cond_a

    .line 2628
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2630
    :cond_a
    return-void
.end method
