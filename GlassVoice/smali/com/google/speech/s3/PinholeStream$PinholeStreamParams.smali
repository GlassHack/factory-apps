.class public final Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeStreamParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;


# instance fields
.field private addXUserIpHeader_:Z

.field public additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

.field public additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

.field private bitField0_:I

.field private forcePinholePrefetch_:Z

.field private maxPinholePrefetchRequestPerQuery_:I

.field private requirePinholeParams_:Z

.field private serverResource_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 898
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->clear()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    .line 899
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 2

    .prologue
    .line 780
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    if-nez v0, :cond_1

    .line 781
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 783
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    sput-object v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    .line 786
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_1
    sget-object v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->_emptyArray:[Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    return-object v0

    .line 786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1081
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 902
    iput v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    .line 904
    invoke-static {}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 905
    invoke-static {}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->emptyArray()[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 906
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    .line 907
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->forcePinholePrefetch_:Z

    .line 908
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->maxPinholePrefetchRequestPerQuery_:I

    .line 909
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->requirePinholeParams_:Z

    .line 910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->cachedSize:I

    .line 911
    return-object p0
.end method

.method public clearAddXUserIpHeader()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    .line 836
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 837
    return-object p0
.end method

.method public clearForcePinholePrefetch()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->forcePinholePrefetch_:Z

    .line 855
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 856
    return-object p0
.end method

.method public clearMaxPinholePrefetchRequestPerQuery()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 873
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->maxPinholePrefetchRequestPerQuery_:I

    .line 874
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 875
    return-object p0
.end method

.method public clearRequirePinholeParams()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->requirePinholeParams_:Z

    .line 893
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 894
    return-object p0
.end method

.method public clearServerResource()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    .line 811
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 812
    return-object p0
.end method

.method public getAddXUserIpHeader()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    return v0
.end method

.method public getForcePinholePrefetch()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->forcePinholePrefetch_:Z

    return v0
.end method

.method public getMaxPinholePrefetchRequestPerQuery()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->maxPinholePrefetchRequestPerQuery_:I

    return v0
.end method

.method public getRequirePinholeParams()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->requirePinholeParams_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 952
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 953
    .local v2, "size":I
    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 954
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 957
    :cond_0
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 958
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 959
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    aget-object v0, v3, v1

    .line 960
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    if-eqz v0, :cond_1

    .line 961
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 958
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 966
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 967
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 968
    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    aget-object v0, v3, v1

    .line 969
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    if-eqz v0, :cond_3

    .line 970
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 967
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 975
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 976
    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 979
    :cond_5
    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 980
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->requirePinholeParams_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 983
    :cond_6
    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    .line 984
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->forcePinholePrefetch_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 987
    :cond_7
    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_8

    .line 988
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->maxPinholePrefetchRequestPerQuery_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 991
    :cond_8
    iput v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->cachedSize:I

    .line 992
    return v2
.end method

.method public getServerResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddXUserIpHeader()Z
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForcePinholePrefetch()Z
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxPinholePrefetchRequestPerQuery()Z
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequirePinholeParams()Z
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerResource()Z
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

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
    .line 774
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1001
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1005
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1006
    :sswitch_0
    return-object p0

    .line 1011
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    .line 1012
    iget v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    goto :goto_0

    .line 1016
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1018
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-nez v5, :cond_2

    move v1, v4

    .line 1019
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 1021
    .local v2, "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    if-eqz v1, :cond_1

    .line 1022
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1024
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1025
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 1026
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1027
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1018
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v1, v5

    goto :goto_1

    .line 1030
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_3
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    aput-object v5, v2, v1

    .line 1031
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1032
    iput-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    goto :goto_0

    .line 1036
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1038
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-nez v5, :cond_5

    move v1, v4

    .line 1039
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 1041
    .local v2, "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    if-eqz v1, :cond_4

    .line 1042
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1044
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 1045
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    aput-object v5, v2, v1

    .line 1046
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1047
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1038
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_5
    iget-object v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v1, v5

    goto :goto_3

    .line 1050
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_6
    new-instance v5, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v5}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    aput-object v5, v2, v1

    .line 1051
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1052
    iput-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    goto/16 :goto_0

    .line 1056
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    .line 1057
    iget v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    goto/16 :goto_0

    .line 1061
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->requirePinholeParams_:Z

    .line 1062
    iget v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    goto/16 :goto_0

    .line 1066
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->forcePinholePrefetch_:Z

    .line 1067
    iget v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    goto/16 :goto_0

    .line 1071
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->maxPinholePrefetchRequestPerQuery_:I

    .line 1072
    iget v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    goto/16 :goto_0

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setAddXUserIpHeader(Z)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    .line 828
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 829
    return-object p0
.end method

.method public setForcePinholePrefetch(Z)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 846
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->forcePinholePrefetch_:Z

    .line 847
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 848
    return-object p0
.end method

.method public setMaxPinholePrefetchRequestPerQuery(I)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 865
    iput p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->maxPinholePrefetchRequestPerQuery_:I

    .line 866
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 867
    return-object p0
.end method

.method public setRequirePinholeParams(Z)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 884
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->requirePinholeParams_:Z

    .line 885
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 886
    return-object p0
.end method

.method public setServerResource(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 799
    if-nez p1, :cond_0

    .line 800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 802
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    .line 803
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    .line 804
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
    .line 917
    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 918
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 920
    :cond_0
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 921
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 922
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    aget-object v0, v2, v1

    .line 923
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    if-eqz v0, :cond_1

    .line 924
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 921
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 929
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 930
    iget-object v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    aget-object v0, v2, v1

    .line 931
    .local v0, "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    if-eqz v0, :cond_3

    .line 932
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 929
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 936
    .end local v0    # "element":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 937
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 939
    :cond_5
    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 940
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->requirePinholeParams_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 942
    :cond_6
    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 943
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->forcePinholePrefetch_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 945
    :cond_7
    iget v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8

    .line 946
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->maxPinholePrefetchRequestPerQuery_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 948
    :cond_8
    return-void
.end method
