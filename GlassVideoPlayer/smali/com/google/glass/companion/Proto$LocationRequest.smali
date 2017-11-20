.class public final Lcom/google/glass/companion/Proto$LocationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationRequest;


# instance fields
.field private bitField0_:I

.field private fastestInterval_:J

.field private minDistance_:F

.field private minTime_:J

.field private priority_:I

.field public provider:Ljava/lang/String;

.field private sendLastKnownLocation_:Z

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2577
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$LocationRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2578
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2594
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 2597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 2600
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    .line 2619
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    .line 2638
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2657
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    .line 2676
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    .line 2578
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2855
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2849
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method


# virtual methods
.method public final clearFastestInterval()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 2

    .prologue
    .line 2689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    .line 2690
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2691
    return-object p0
.end method

.method public final clearMinDistance()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2632
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    .line 2633
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2634
    return-object p0
.end method

.method public final clearMinTime()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 2

    .prologue
    .line 2613
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    .line 2614
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2615
    return-object p0
.end method

.method public final clearPriority()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2670
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    .line 2671
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2672
    return-object p0
.end method

.method public final clearSendLastKnownLocation()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2652
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2653
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2696
    if-ne p1, p0, :cond_1

    .line 2706
    :cond_0
    :goto_0
    return v0

    .line 2697
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2698
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$LocationRequest;

    .line 2699
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    iget v3, p1, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2700
    :goto_1
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 2706
    goto :goto_0

    .line 2699
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 2700
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    .line 2706
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getFastestInterval()J
    .locals 2

    .prologue
    .line 2678
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    return-wide v0
.end method

.method public final getMinDistance()F
    .locals 1

    .prologue
    .line 2621
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    return v0
.end method

.method public final getMinTime()J
    .locals 2

    .prologue
    .line 2602
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 2659
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    return v0
.end method

.method public final getSendLastKnownLocation()Z
    .locals 1

    .prologue
    .line 2640
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 2747
    const/4 v0, 0x0

    .line 2748
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 2749
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2750
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 2751
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2752
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2753
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    .line 2754
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2756
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2757
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    .line 2758
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2760
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2761
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2762
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2764
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2765
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    .line 2766
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2768
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2769
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    .line 2770
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2772
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2773
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->cachedSize:I

    .line 2774
    return v0
.end method

.method public final hasFastestInterval()Z
    .locals 1

    .prologue
    .line 2686
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMinDistance()Z
    .locals 1

    .prologue
    .line 2629
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMinTime()Z
    .locals 1

    .prologue
    .line 2610
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPriority()Z
    .locals 1

    .prologue
    .line 2667
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSendLastKnownLocation()Z
    .locals 1

    .prologue
    .line 2648
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 2710
    .line 2711
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    add-int/lit16 v0, v0, 0x20f

    .line 2712
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 2713
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 2714
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2715
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 2716
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    add-int/2addr v0, v2

    .line 2717
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 2718
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 2719
    return v0

    .line 2712
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2715
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 2718
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2782
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2783
    sparse-switch v0, :sswitch_data_0

    .line 2787
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2788
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    .line 2791
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2793
    :sswitch_0
    return-object p0

    .line 2798
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 2799
    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_3

    .line 2801
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    goto :goto_0

    .line 2803
    :cond_3
    iput v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    goto :goto_0

    .line 2808
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    goto :goto_0

    .line 2812
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    .line 2813
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 2817
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    .line 2818
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 2822
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2823
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 2827
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 2828
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2831
    :cond_4
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    .line 2832
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 2834
    :cond_5
    iput v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    goto :goto_0

    .line 2839
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    .line 2840
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    goto :goto_0

    .line 2783
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2574
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setFastestInterval(J)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2681
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    .line 2682
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2683
    return-object p0
.end method

.method public final setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2624
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    .line 2625
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2626
    return-object p0
.end method

.method public final setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2605
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    .line 2606
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2607
    return-object p0
.end method

.method public final setPriority(I)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2662
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    .line 2663
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2664
    return-object p0
.end method

.method public final setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 2643
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    .line 2644
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    .line 2645
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2724
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2725
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2726
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2727
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2729
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2730
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2732
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2733
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2735
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2736
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2738
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2739
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2741
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2743
    return-void
.end method
