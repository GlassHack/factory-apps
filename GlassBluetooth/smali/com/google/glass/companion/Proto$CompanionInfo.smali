.class public final Lcom/google/glass/companion/Proto$CompanionInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionInfo"
.end annotation


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
    .line 3775
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$CompanionInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3776
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3781
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 3784
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3803
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3822
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3841
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3882
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3776
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4088
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4082
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method


# virtual methods
.method public clearRequestLocaleInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3896
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3897
    return-object p0
.end method

.method public clearRequestLog()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3855
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3856
    return-object p0
.end method

.method public clearRequestNetwork()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3798
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3799
    return-object p0
.end method

.method public clearResponseAndroidVersion()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3835
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3836
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3837
    return-object p0
.end method

.method public clearResponseIsNetworkOk()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3817
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3818
    return-object p0
.end method

.method public clearResponseLocaleInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3917
    return-object p0
.end method

.method public clearResponseLog()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 3876
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3877
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3878
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3921
    if-ne p1, p0, :cond_1

    .line 3932
    :cond_0
    :goto_0
    return v1

    .line 3922
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3923
    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 3924
    .local v0, "other":Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3929
    :goto_1
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v3, :cond_3

    .line 3931
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 3932
    goto :goto_0

    .line 3924
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3929
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3931
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$LocaleInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    .line 3932
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getRequestLocaleInfo()Z
    .locals 1

    .prologue
    .line 3884
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    return v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 3843
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 3786
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 3824
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 3805
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLocaleInfo()Lcom/google/glass/companion/Proto$LocaleInfo;
    .locals 1

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    return-object v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3979
    const/4 v0, 0x0

    .line 3980
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 3981
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3982
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3983
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3984
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3986
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3987
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3988
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3990
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3991
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3992
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3994
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3995
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3996
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3998
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3999
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4000
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4002
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4003
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 4004
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4006
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-eqz v1, :cond_6

    .line 4007
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 4008
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4010
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4011
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->cachedSize:I

    .line 4012
    return v0
.end method

.method public hasRequestLocaleInfo()Z
    .locals 1

    .prologue
    .line 3892
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

.method public hasRequestLog()Z
    .locals 1

    .prologue
    .line 3851
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

.method public hasRequestNetwork()Z
    .locals 1

    .prologue
    .line 3794
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

.method public hasResponseAndroidVersion()Z
    .locals 1

    .prologue
    .line 3832
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

.method public hasResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 3813
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

.method public hasResponseLocaleInfo()Z
    .locals 1

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseLog()Z
    .locals 1

    .prologue
    .line 3873
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

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3936
    const/16 v0, 0x11

    .line 3937
    .local v0, "result":I
    iget-wide v5, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    iget-wide v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    const/16 v1, 0x20

    ushr-long/2addr v7, v1

    xor-long/2addr v5, v7

    long-to-int v1, v5

    add-int/lit16 v0, v1, 0x20f

    .line 3938
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v5, v1

    .line 3939
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v5, v1

    .line 3940
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    add-int v0, v1, v5

    .line 3941
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v5, v1

    .line 3942
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v4

    :goto_3
    add-int v0, v5, v1

    .line 3943
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v5, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    if-eqz v5, :cond_4

    :goto_4
    add-int v0, v1, v2

    .line 3944
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v1, :cond_5

    move v1, v4

    :goto_5
    add-int v0, v2, v1

    .line 3945
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_6

    :goto_6
    add-int v0, v1, v4

    .line 3946
    return v0

    :cond_0
    move v1, v3

    .line 3938
    goto :goto_0

    :cond_1
    move v1, v3

    .line 3939
    goto :goto_1

    :cond_2
    move v1, v3

    .line 3941
    goto :goto_2

    .line 3942
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v2, v3

    .line 3943
    goto :goto_4

    .line 3944
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$LocaleInfo;->hashCode()I

    move-result v1

    goto :goto_5

    .line 3945
    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v4

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4020
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4021
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4025
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4026
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    .line 4029
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4031
    :sswitch_0
    return-object p0

    .line 4036
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    goto :goto_0

    .line 4040
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 4041
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4045
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 4046
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4050
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 4051
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4055
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 4056
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4060
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 4061
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4065
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 4066
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    goto :goto_0

    .line 4070
    :sswitch_8
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-nez v1, :cond_2

    .line 4071
    new-instance v1, Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$LocaleInfo;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 4073
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4021
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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3772
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public setRequestLocaleInfo(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3887
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    .line 3888
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3889
    return-object p0
.end method

.method public setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3846
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 3847
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3848
    return-object p0
.end method

.method public setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3789
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 3790
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3791
    return-object p0
.end method

.method public setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3827
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 3828
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3829
    return-object p0
.end method

.method public setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3808
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 3809
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3810
    return-object p0
.end method

.method public setResponseLocaleInfo(Lcom/google/glass/companion/Proto$LocaleInfo;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$LocaleInfo;

    .prologue
    .line 3906
    if-nez p1, :cond_0

    .line 3907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3909
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    .line 3910
    return-object p0
.end method

.method public setResponseLog(Ljava/lang/String;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3865
    if-nez p1, :cond_0

    .line 3866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3868
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    .line 3869
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 3870
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3951
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3952
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3953
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3955
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3956
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3958
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3959
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3961
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3962
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3964
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3965
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3967
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3968
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLocaleInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3970
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    if-eqz v0, :cond_6

    .line 3971
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLocaleInfo_:Lcom/google/glass/companion/Proto$LocaleInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3973
    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3975
    return-void
.end method
