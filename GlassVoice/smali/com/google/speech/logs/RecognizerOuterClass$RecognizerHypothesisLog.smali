.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerHypothesisLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;


# instance fields
.field public alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

.field private amCost_:F

.field private bitField0_:I

.field private confidence_:F

.field private hypothesis_:Ljava/lang/String;

.field private isRedacted_:Z

.field private lmCost_:F

.field private prenormHypothesis_:Ljava/lang/String;

.field private recognizerCost_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2663
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2664
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 2665
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 2

    .prologue
    .line 2508
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-nez v0, :cond_1

    .line 2509
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2511
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-nez v0, :cond_0

    .line 2512
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 2514
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    return-object v0

    .line 2514
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2818
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2812
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2668
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2669
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 2670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 2671
    iput-boolean v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 2672
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 2673
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 2674
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 2675
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 2676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    .line 2677
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 2678
    return-object p0
.end method

.method public clearAmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 2636
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 2637
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2638
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 2598
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 2599
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2600
    return-object p0
.end method

.method public clearHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 2560
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 2561
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2562
    return-object p0
.end method

.method public clearIsRedacted()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 2579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 2580
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2581
    return-object p0
.end method

.method public clearLmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 2655
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 2656
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2657
    return-object p0
.end method

.method public clearPrenormHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 2538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 2539
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2540
    return-object p0
.end method

.method public clearRecognizerCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 2617
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 2618
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2619
    return-object p0
.end method

.method public getAmCost()F
    .locals 1

    .prologue
    .line 2625
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 2587
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    return v0
.end method

.method public getHypothesis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRedacted()Z
    .locals 1

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    return v0
.end method

.method public getLmCost()F
    .locals 1

    .prologue
    .line 2644
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    return v0
.end method

.method public getPrenormHypothesis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerCost()F
    .locals 1

    .prologue
    .line 2606
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2712
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2713
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2714
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2717
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2718
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2721
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 2722
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2725
    :cond_2
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 2726
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2729
    :cond_3
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 2730
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2733
    :cond_4
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 2734
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2737
    :cond_5
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 2738
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2741
    :cond_6
    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    if-eqz v1, :cond_7

    .line 2742
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2745
    :cond_7
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 2746
    return v0
.end method

.method public hasAmCost()Z
    .locals 1

    .prologue
    .line 2633
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 2595
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHypothesis()Z
    .locals 1

    .prologue
    .line 2557
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsRedacted()Z
    .locals 1

    .prologue
    .line 2576
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLmCost()Z
    .locals 1

    .prologue
    .line 2652
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrenormHypothesis()Z
    .locals 1

    .prologue
    .line 2535
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecognizerCost()Z
    .locals 1

    .prologue
    .line 2614
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 2502
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2754
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2755
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2759
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2760
    :sswitch_0
    return-object p0

    .line 2765
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 2766
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    goto :goto_0

    .line 2770
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 2771
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    goto :goto_0

    .line 2775
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 2776
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    goto :goto_0

    .line 2780
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 2781
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    goto :goto_0

    .line 2785
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 2786
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    goto :goto_0

    .line 2790
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 2791
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    goto :goto_0

    .line 2795
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 2796
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    goto :goto_0

    .line 2800
    :sswitch_8
    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    if-nez v1, :cond_1

    .line 2801
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;-><init>()V

    iput-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    .line 2803
    :cond_1
    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2755
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setAmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2628
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 2629
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2630
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2590
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 2591
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2592
    return-object p0
.end method

.method public setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2549
    if-nez p1, :cond_0

    .line 2550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2552
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 2553
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2554
    return-object p0
.end method

.method public setIsRedacted(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2571
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 2572
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2573
    return-object p0
.end method

.method public setLmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2647
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 2648
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2649
    return-object p0
.end method

.method public setPrenormHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2527
    if-nez p1, :cond_0

    .line 2528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2530
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 2531
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2532
    return-object p0
.end method

.method public setRecognizerCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2609
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 2610
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    .line 2611
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
    .line 2684
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2685
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2687
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2688
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2690
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 2691
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2693
    :cond_2
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 2694
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2696
    :cond_3
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 2697
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2699
    :cond_4
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 2700
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2702
    :cond_5
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 2703
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2705
    :cond_6
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    if-eqz v0, :cond_7

    .line 2706
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->alternates:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerAlternatesLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2708
    :cond_7
    return-void
.end method
