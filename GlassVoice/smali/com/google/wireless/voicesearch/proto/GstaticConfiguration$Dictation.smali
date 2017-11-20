.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dictation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;


# instance fields
.field private bitField0_:I

.field private delayBetweenCommittingNewTextMsec_:I

.field private embeddedRecognizerFallbackTimeout_:I

.field public endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private logEditDistanceMaxContiguousChars_:I

.field private logEditDistanceMaxNewCharsPerc_:I

.field private maxSpanLength_:I

.field private maxTotalSpanLength_:I

.field private partialResultMinConfidence_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2661
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2662
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2663
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 2

    .prologue
    .line 2512
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    if-nez v0, :cond_1

    .line 2513
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2515
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    if-nez v0, :cond_0

    .line 2516
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2518
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2520
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    return-object v0

    .line 2518
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2816
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2810
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2666
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2667
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    .line 2668
    const/16 v0, 0xfa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    .line 2669
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    .line 2670
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    .line 2671
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    .line 2672
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    .line 2673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2674
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    .line 2675
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->cachedSize:I

    .line 2676
    return-object p0
.end method

.method public clearDelayBetweenCommittingNewTextMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2577
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    .line 2578
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2579
    return-object p0
.end method

.method public clearEmbeddedRecognizerFallbackTimeout()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2656
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    .line 2657
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2658
    return-object p0
.end method

.method public clearLogEditDistanceMaxContiguousChars()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2615
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    .line 2616
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2617
    return-object p0
.end method

.method public clearLogEditDistanceMaxNewCharsPerc()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2634
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    .line 2635
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2636
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2539
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    .line 2540
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2541
    return-object p0
.end method

.method public clearMaxTotalSpanLength()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2558
    const/16 v0, 0xfa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    .line 2559
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2560
    return-object p0
.end method

.method public clearPartialResultMinConfidence()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2596
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    .line 2597
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2598
    return-object p0
.end method

.method public getDelayBetweenCommittingNewTextMsec()I
    .locals 1

    .prologue
    .line 2566
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    return v0
.end method

.method public getEmbeddedRecognizerFallbackTimeout()I
    .locals 1

    .prologue
    .line 2645
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    return v0
.end method

.method public getLogEditDistanceMaxContiguousChars()I
    .locals 1

    .prologue
    .line 2604
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    return v0
.end method

.method public getLogEditDistanceMaxNewCharsPerc()I
    .locals 1

    .prologue
    .line 2623
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    return v0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 2528
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    return v0
.end method

.method public getMaxTotalSpanLength()I
    .locals 1

    .prologue
    .line 2547
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    return v0
.end method

.method public getPartialResultMinConfidence()F
    .locals 1

    .prologue
    .line 2585
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2710
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2711
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2712
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2715
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2716
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2719
    :cond_1
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2720
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2723
    :cond_2
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2724
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2727
    :cond_3
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2728
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2731
    :cond_4
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2732
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2735
    :cond_5
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v1, :cond_6

    .line 2736
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2739
    :cond_6
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 2740
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2743
    :cond_7
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->cachedSize:I

    .line 2744
    return v0
.end method

.method public hasDelayBetweenCommittingNewTextMsec()Z
    .locals 1

    .prologue
    .line 2574
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEmbeddedRecognizerFallbackTimeout()Z
    .locals 1

    .prologue
    .line 2653
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogEditDistanceMaxContiguousChars()Z
    .locals 1

    .prologue
    .line 2612
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogEditDistanceMaxNewCharsPerc()Z
    .locals 1

    .prologue
    .line 2631
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxSpanLength()Z
    .locals 1

    .prologue
    .line 2536
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxTotalSpanLength()Z
    .locals 1

    .prologue
    .line 2555
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPartialResultMinConfidence()Z
    .locals 1

    .prologue
    .line 2593
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 2506
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2752
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2753
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2757
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2758
    :sswitch_0
    return-object p0

    .line 2763
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    .line 2764
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    goto :goto_0

    .line 2768
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    .line 2769
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    goto :goto_0

    .line 2773
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    .line 2774
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    goto :goto_0

    .line 2778
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    .line 2779
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    goto :goto_0

    .line 2783
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    .line 2784
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    goto :goto_0

    .line 2788
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    .line 2789
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    goto :goto_0

    .line 2793
    :sswitch_7
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-nez v1, :cond_1

    .line 2794
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2796
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2800
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    .line 2801
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    goto :goto_0

    .line 2753
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public setDelayBetweenCommittingNewTextMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2569
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    .line 2570
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2571
    return-object p0
.end method

.method public setEmbeddedRecognizerFallbackTimeout(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2648
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    .line 2649
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2650
    return-object p0
.end method

.method public setLogEditDistanceMaxContiguousChars(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2607
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    .line 2608
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2609
    return-object p0
.end method

.method public setLogEditDistanceMaxNewCharsPerc(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2626
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    .line 2627
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2628
    return-object p0
.end method

.method public setMaxSpanLength(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2531
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    .line 2532
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2533
    return-object p0
.end method

.method public setMaxTotalSpanLength(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2550
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    .line 2551
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2552
    return-object p0
.end method

.method public setPartialResultMinConfidence(F)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2588
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    .line 2589
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    .line 2590
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
    .line 2682
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2683
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2685
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2686
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2688
    :cond_1
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2689
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2691
    :cond_2
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2692
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2694
    :cond_3
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2695
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2697
    :cond_4
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2698
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2700
    :cond_5
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v0, :cond_6

    .line 2701
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2703
    :cond_6
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 2704
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2706
    :cond_7
    return-void
.end method
