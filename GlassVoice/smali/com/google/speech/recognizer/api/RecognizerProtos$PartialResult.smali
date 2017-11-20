.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartialResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;


# instance fields
.field private bitField0_:I

.field private endTimeUsec_:J

.field public hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

.field private hotwordConfidence_:F

.field private hotwordEndTimeUsec_:J

.field private hotwordFired_:Z

.field private hotwordStartTimeUsec_:J

.field public hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

.field private latticeFst_:[B

.field public part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

.field public phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private startTimeUsec_:J

.field public stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field public verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

.field public wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field public wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1740
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1741
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->clear()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1742
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 2

    .prologue
    .line 1567
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-nez v0, :cond_1

    .line 1568
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1570
    :try_start_0
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-nez v0, :cond_0

    .line 1571
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    sput-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 1573
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :cond_1
    sget-object v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->_emptyArray:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    return-object v0

    .line 1573
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2092
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2086
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1745
    iput v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1746
    invoke-static {}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1747
    iput-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    .line 1748
    iput-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    .line 1749
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1750
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1751
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1752
    invoke-static {}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->emptyArray()[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 1753
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 1754
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    .line 1755
    iput-boolean v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    .line 1756
    iput-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordStartTimeUsec_:J

    .line 1757
    iput-wide v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordEndTimeUsec_:J

    .line 1758
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->latticeFst_:[B

    .line 1759
    invoke-static {}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 1760
    invoke-static {}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;->emptyArray()[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    .line 1761
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->cachedSize:I

    .line 1762
    return-object p0
.end method

.method public clearEndTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 2

    .prologue
    .line 1616
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    .line 1617
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1618
    return-object p0
.end method

.method public clearHotwordConfidence()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1650
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    .line 1651
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1652
    return-object p0
.end method

.method public clearHotwordEndTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 2

    .prologue
    .line 1707
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordEndTimeUsec_:J

    .line 1708
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1709
    return-object p0
.end method

.method public clearHotwordFired()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    .line 1670
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1671
    return-object p0
.end method

.method public clearHotwordStartTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 2

    .prologue
    .line 1688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordStartTimeUsec_:J

    .line 1689
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1690
    return-object p0
.end method

.method public clearLatticeFst()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1

    .prologue
    .line 1729
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->latticeFst_:[B

    .line 1730
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1731
    return-object p0
.end method

.method public clearStartTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 2

    .prologue
    .line 1597
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    .line 1598
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1599
    return-object p0
.end method

.method public getEndTimeUsec()J
    .locals 2

    .prologue
    .line 1605
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    return-wide v0
.end method

.method public getHotwordConfidence()F
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    return v0
.end method

.method public getHotwordEndTimeUsec()J
    .locals 2

    .prologue
    .line 1696
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordEndTimeUsec_:J

    return-wide v0
.end method

.method public getHotwordFired()Z
    .locals 1

    .prologue
    .line 1658
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    return v0
.end method

.method public getHotwordStartTimeUsec()J
    .locals 2

    .prologue
    .line 1677
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordStartTimeUsec_:J

    return-wide v0
.end method

.method public getLatticeFst()[B
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->latticeFst_:[B

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1837
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1838
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1839
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1840
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    aget-object v0, v3, v1

    .line 1841
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    if-eqz v0, :cond_0

    .line 1842
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1839
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1847
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 1848
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1851
    :cond_2
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1852
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1855
    :cond_3
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v3, :cond_4

    .line 1856
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1859
    :cond_4
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v3, :cond_5

    .line 1860
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1863
    :cond_5
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 1864
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 1865
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    aget-object v0, v3, v1

    .line 1866
    .local v0, "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    if-eqz v0, :cond_6

    .line 1867
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1864
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1872
    .end local v0    # "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .end local v1    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    if-eqz v3, :cond_8

    .line 1873
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1876
    :cond_8
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    .line 1877
    const/16 v3, 0x8

    iget v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 1880
    :cond_9
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_a

    .line 1881
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1884
    :cond_a
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v3, :cond_b

    .line 1885
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1888
    :cond_b
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_c

    .line 1889
    const/16 v3, 0xb

    iget-wide v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordStartTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1892
    :cond_c
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_d

    .line 1893
    const/16 v3, 0xc

    iget-wide v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordEndTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1896
    :cond_d
    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_e

    .line 1897
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->latticeFst_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 1900
    :cond_e
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v3, v3

    if-lez v3, :cond_10

    .line 1901
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v3, v3

    if-ge v1, v3, :cond_10

    .line 1902
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v0, v3, v1

    .line 1903
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    if-eqz v0, :cond_f

    .line 1904
    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1901
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1909
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1    # "i":I
    :cond_10
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    array-length v3, v3

    if-lez v3, :cond_12

    .line 1910
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    array-length v3, v3

    if-ge v1, v3, :cond_12

    .line 1911
    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    aget-object v0, v3, v1

    .line 1912
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    if-eqz v0, :cond_11

    .line 1913
    const/16 v3, 0xf

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1910
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1918
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .end local v1    # "i":I
    :cond_12
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->cachedSize:I

    .line 1919
    return v2
.end method

.method public getStartTimeUsec()J
    .locals 2

    .prologue
    .line 1586
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    return-wide v0
.end method

.method public hasEndTimeUsec()Z
    .locals 1

    .prologue
    .line 1613
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHotwordConfidence()Z
    .locals 1

    .prologue
    .line 1647
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHotwordEndTimeUsec()Z
    .locals 1

    .prologue
    .line 1704
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHotwordFired()Z
    .locals 1

    .prologue
    .line 1666
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHotwordStartTimeUsec()Z
    .locals 1

    .prologue
    .line 1685
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 1726
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 1594
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

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
    .line 1561
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1927
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1928
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1932
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1933
    :sswitch_0
    return-object p0

    .line 1938
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1940
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    if-nez v5, :cond_2

    move v1, v4

    .line 1941
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1943
    .local v2, "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    if-eqz v1, :cond_1

    .line 1944
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1946
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1947
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;-><init>()V

    aput-object v5, v2, v1

    .line 1948
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1949
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1946
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1940
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v1, v5

    goto :goto_1

    .line 1952
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_3
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;-><init>()V

    aput-object v5, v2, v1

    .line 1953
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1954
    iput-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    goto :goto_0

    .line 1958
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    .line 1959
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    goto :goto_0

    .line 1963
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    .line 1964
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    goto :goto_0

    .line 1968
    :sswitch_4
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v5, :cond_4

    .line 1969
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1971
    :cond_4
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1975
    :sswitch_5
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v5, :cond_5

    .line 1976
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 1978
    :cond_5
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1982
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1984
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-nez v5, :cond_7

    move v1, v4

    .line 1985
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 1987
    .local v2, "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    if-eqz v1, :cond_6

    .line 1988
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1990
    :cond_6
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 1991
    new-instance v5, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v5}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    aput-object v5, v2, v1

    .line 1992
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1993
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1990
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1984
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_7
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v1, v5

    goto :goto_3

    .line 1996
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_8
    new-instance v5, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v5}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    aput-object v5, v2, v1

    .line 1997
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1998
    iput-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto/16 :goto_0

    .line 2002
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :sswitch_7
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    if-nez v5, :cond_9

    .line 2003
    new-instance v5, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 2005
    :cond_9
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2009
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    .line 2010
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    goto/16 :goto_0

    .line 2014
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    .line 2015
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    goto/16 :goto_0

    .line 2019
    :sswitch_a
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-nez v5, :cond_a

    .line 2020
    new-instance v5, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v5}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 2022
    :cond_a
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2026
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordStartTimeUsec_:J

    .line 2027
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    goto/16 :goto_0

    .line 2031
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordEndTimeUsec_:J

    .line 2032
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    goto/16 :goto_0

    .line 2036
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->latticeFst_:[B

    .line 2037
    iget v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    goto/16 :goto_0

    .line 2041
    :sswitch_e
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2043
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-nez v5, :cond_c

    move v1, v4

    .line 2044
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 2046
    .local v2, "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    if-eqz v1, :cond_b

    .line 2047
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2049
    :cond_b
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    .line 2050
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    aput-object v5, v2, v1

    .line 2051
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2052
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2049
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2043
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_c
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v1, v5

    goto :goto_5

    .line 2055
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_d
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    aput-object v5, v2, v1

    .line 2056
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2057
    iput-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto/16 :goto_0

    .line 2061
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :sswitch_f
    const/16 v5, 0x7a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2063
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    if-nez v5, :cond_f

    move v1, v4

    .line 2064
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    .line 2066
    .local v2, "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    if-eqz v1, :cond_e

    .line 2067
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2069
    :cond_e
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_10

    .line 2070
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;-><init>()V

    aput-object v5, v2, v1

    .line 2071
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2072
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2069
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2063
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    :cond_f
    iget-object v5, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    array-length v1, v5

    goto :goto_7

    .line 2075
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    :cond_10
    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;-><init>()V

    aput-object v5, v2, v1

    .line 2076
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2077
    iput-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    goto/16 :goto_0

    .line 1928
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x45 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
    .end sparse-switch
.end method

.method public setEndTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1608
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    .line 1609
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1610
    return-object p0
.end method

.method public setHotwordConfidence(F)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1642
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    .line 1643
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1644
    return-object p0
.end method

.method public setHotwordEndTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1699
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordEndTimeUsec_:J

    .line 1700
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1701
    return-object p0
.end method

.method public setHotwordFired(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1661
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    .line 1662
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1663
    return-object p0
.end method

.method public setHotwordStartTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1680
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordStartTimeUsec_:J

    .line 1681
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1682
    return-object p0
.end method

.method public setLatticeFst([B)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 1718
    if-nez p1, :cond_0

    .line 1719
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1721
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->latticeFst_:[B

    .line 1722
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1723
    return-object p0
.end method

.method public setStartTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1589
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    .line 1590
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    .line 1591
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
    .line 1768
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1769
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1770
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->part:[Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    aget-object v0, v2, v1

    .line 1771
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    if-eqz v0, :cond_0

    .line 1772
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1769
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1776
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1777
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->startTimeUsec_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1779
    :cond_2
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1780
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->endTimeUsec_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1782
    :cond_3
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v2, :cond_4

    .line 1783
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1785
    :cond_4
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v2, :cond_5

    .line 1786
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->phoneAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1788
    :cond_5
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 1789
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1790
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->wordConfFeature:[Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    aget-object v0, v2, v1

    .line 1791
    .local v0, "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    if-eqz v0, :cond_6

    .line 1792
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1789
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1796
    .end local v0    # "element":Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    if-eqz v2, :cond_8

    .line 1797
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfFeature:Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1799
    :cond_8
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    .line 1800
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordConfidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1802
    :cond_9
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_a

    .line 1803
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordFired_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1805
    :cond_a
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    if-eqz v2, :cond_b

    .line 1806
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->stateAlign:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1808
    :cond_b
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c

    .line 1809
    const/16 v2, 0xb

    iget-wide v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordStartTimeUsec_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1811
    :cond_c
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_d

    .line 1812
    const/16 v2, 0xc

    iget-wide v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hotwordEndTimeUsec_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1814
    :cond_d
    iget v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_e

    .line 1815
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->latticeFst_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1817
    :cond_e
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v2, v2

    if-lez v2, :cond_10

    .line 1818
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 1819
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v0, v2, v1

    .line 1820
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    if-eqz v0, :cond_f

    .line 1821
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1818
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1825
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1    # "i":I
    :cond_10
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    array-length v2, v2

    if-lez v2, :cond_12

    .line 1826
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 1827
    iget-object v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->verificationResult:[Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;

    aget-object v0, v2, v1

    .line 1828
    .local v0, "element":Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    if-eqz v0, :cond_11

    .line 1829
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1826
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1833
    .end local v0    # "element":Lcom/google/speech/recognizer/api/RecognizerProtos$VerificationResult;
    .end local v1    # "i":I
    :cond_12
    return-void
.end method
