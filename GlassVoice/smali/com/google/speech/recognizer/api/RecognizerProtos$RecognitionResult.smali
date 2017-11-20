.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;


# instance fields
.field private bitField0_:I

.field private endTimeUsec_:J

.field public hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

.field private latticeFst_:[B

.field private startTimeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 580
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 581
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 2

    .prologue
    .line 503
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-nez v0, :cond_1

    .line 504
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 509
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    return-object v0

    .line 509
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    .line 585
    iput-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    .line 586
    iput-wide v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    .line 587
    invoke-static {}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 588
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:[B

    .line 589
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->cachedSize:I

    .line 590
    return-object p0
.end method

.method public clearEndTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 2

    .prologue
    .line 549
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    .line 550
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    .line 551
    return-object p0
.end method

.method public clearLatticeFst()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:[B

    .line 575
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    .line 576
    return-object p0
.end method

.method public clearStartTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 2

    .prologue
    .line 530
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    .line 531
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    .line 532
    return-object p0
.end method

.method public getEndTimeUsec()J
    .locals 2

    .prologue
    .line 538
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    return-wide v0
.end method

.method public getLatticeFst()[B
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 617
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 618
    .local v2, "size":I
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 619
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 622
    :cond_0
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 623
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 626
    :cond_1
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 627
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 628
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v0, v3, v1

    .line 629
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    if-eqz v0, :cond_2

    .line 630
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 627
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 636
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 639
    :cond_4
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->cachedSize:I

    .line 640
    return v2
.end method

.method public getStartTimeUsec()J
    .locals 2

    .prologue
    .line 519
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    return-wide v0
.end method

.method public hasEndTimeUsec()Z
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatticeFst()Z
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTimeUsec()Z
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

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
    .line 497
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 649
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 653
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 654
    :sswitch_0
    return-object p0

    .line 659
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    .line 660
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    goto :goto_0

    .line 664
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    .line 665
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    goto :goto_0

    .line 669
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 671
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-nez v5, :cond_2

    move v1, v4

    .line 672
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 674
    .local v2, "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    if-eqz v1, :cond_1

    .line 675
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 678
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    aput-object v5, v2, v1

    .line 679
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 680
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 671
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v1, v5

    goto :goto_1

    .line 683
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_3
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    aput-object v5, v2, v1

    .line 684
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 685
    iput-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 689
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:[B

    .line 690
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    goto :goto_0

    .line 649
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setEndTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 541
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    .line 542
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    .line 543
    return-object p0
.end method

.method public setLatticeFst([B)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 566
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:[B

    .line 567
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    .line 568
    return-object p0
.end method

.method public setStartTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 522
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    .line 523
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    .line 524
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
    .line 596
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 597
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 599
    :cond_0
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 600
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 603
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 604
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v0, v2, v1

    .line 605
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    if-eqz v0, :cond_2

    .line 606
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 603
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 611
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 613
    :cond_4
    return-void
.end method
