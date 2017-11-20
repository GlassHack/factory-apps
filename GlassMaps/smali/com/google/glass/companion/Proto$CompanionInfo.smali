.class public final Lcom/google/glass/companion/Proto$CompanionInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionInfo;


# instance fields
.field private bitField0_:I

.field public id:J

.field private requestLocaleInfo_:Z

.field private requestLog_:Z

.field private requestNetwork_:Z

.field private responseAndroidVersion_:I

.field private responseIsNetworkOk_:Z

.field private responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

.field private responseLog_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3627
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$CompanionInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3628
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3633
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 3636
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3655
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3674
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3693
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3734
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3628
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3940
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3934
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method


# virtual methods
.method public final clearRequestLocaleInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3748
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3749
    return-object p0
.end method

.method public final clearRequestLog()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3707
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3708
    return-object p0
.end method

.method public final clearRequestNetwork()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3650
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3651
    return-object p0
.end method

.method public final clearResponseAndroidVersion()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3687
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3688
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3689
    return-object p0
.end method

.method public final clearResponseIsNetworkOk()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3669
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3670
    return-object p0
.end method

.method public final clearResponseLocaleInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3769
    return-object p0
.end method

.method public final clearResponseLog()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3729
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3730
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3773
    if-ne p1, p0, :cond_1

    .line 3784
    :cond_0
    :goto_0
    return v0

    .line 3774
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 3775
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3776
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3781
    :goto_1
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v2, :cond_3

    .line 3783
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 3784
    goto :goto_0

    .line 3776
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3781
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3783
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$LocaleInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    .line 3784
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getRequestLocaleInfo()Z
    .locals 1

    .prologue
    .line 3736
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    return v0
.end method

.method public final getRequestLog()Z
    .locals 1

    .prologue
    .line 3695
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return v0
.end method

.method public final getRequestNetwork()Z
    .locals 1

    .prologue
    .line 3638
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return v0
.end method

.method public final getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 3676
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return v0
.end method

.method public final getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 3657
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return v0
.end method

.method public final getResponseLocaleInfo()Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 3755
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    return-object v0
.end method

.method public final getResponseLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 3831
    const/4 v0, 0x0

    .line 3832
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 3833
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3834
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3835
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3836
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3838
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3839
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3840
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3842
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3843
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3844
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3846
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3847
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3848
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3850
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3851
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3852
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3854
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3855
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3856
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3858
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-eqz v1, :cond_6

    .line 3859
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3860
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3862
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3863
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->cachedSize:I

    .line 3864
    return v0
.end method

.method public final hasRequestLocaleInfo()Z
    .locals 1

    .prologue
    .line 3744
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestLog()Z
    .locals 1

    .prologue
    .line 3703
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequestNetwork()Z
    .locals 1

    .prologue
    .line 3646
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseAndroidVersion()Z
    .locals 1

    .prologue
    .line 3684
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 3665
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseLocaleInfo()Z
    .locals 1

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseLog()Z
    .locals 1

    .prologue
    .line 3725
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3788
    .line 3789
    iget-wide v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit16 v0, v0, 0x20f

    .line 3790
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    .line 3791
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 3792
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    add-int/2addr v0, v4

    .line 3793
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 3794
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v3

    :goto_3
    add-int/2addr v0, v4

    .line 3795
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    if-eqz v4, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 3796
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v0, :cond_5

    move v0, v3

    :goto_5
    add-int/2addr v0, v1

    .line 3797
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_6

    :goto_6
    add-int/2addr v0, v3

    .line 3798
    return v0

    :cond_0
    move v0, v2

    .line 3790
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3791
    goto :goto_1

    :cond_2
    move v0, v2

    .line 3793
    goto :goto_2

    .line 3794
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    move v1, v2

    .line 3795
    goto :goto_4

    .line 3796
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocaleInfo;->hashCode()I

    move-result v0

    goto :goto_5

    .line 3797
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 2

    .prologue
    .line 3872
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3873
    sparse-switch v0, :sswitch_data_0

    .line 3877
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3878
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    .line 3881
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3883
    :sswitch_0
    return-object p0

    .line 3888
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    goto :goto_0

    .line 3892
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3893
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 3897
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3898
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 3902
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3903
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 3907
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3908
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 3912
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3913
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 3917
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3918
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 3922
    :sswitch_8
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v0, :cond_2

    .line 3923
    new-instance v0, Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocaleInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3925
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3873
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3624
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setRequestLocaleInfo(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3739
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3740
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3741
    return-object p0
.end method

.method public final setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3698
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3699
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3700
    return-object p0
.end method

.method public final setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3641
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3642
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3643
    return-object p0
.end method

.method public final setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3679
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3680
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3681
    return-object p0
.end method

.method public final setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3660
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3661
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3662
    return-object p0
.end method

.method public final setResponseLocaleInfo(Lcom/google/glass/companion/Proto$LocaleInfo;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3758
    if-nez p1, :cond_0

    .line 3759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3761
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3762
    return-object p0
.end method

.method public final setResponseLog(Ljava/lang/String;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3717
    if-nez p1, :cond_0

    .line 3718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3720
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3721
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3722
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 3803
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3804
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3805
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3807
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3808
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3810
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3811
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3813
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3814
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3816
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3817
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3819
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3820
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3822
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-eqz v0, :cond_6

    .line 3823
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3825
    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3827
    return-void
.end method
