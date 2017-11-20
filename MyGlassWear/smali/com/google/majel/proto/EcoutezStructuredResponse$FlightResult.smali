.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlightResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;


# instance fields
.field private airlineCode_:Ljava/lang/String;

.field private airlineName_:Ljava/lang/String;

.field private bitField0_:I

.field private dateForUrl_:Ljava/lang/String;

.field public flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

.field private number_:Ljava/lang/String;

.field private updateTime_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2916
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2917
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2918
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 2

    .prologue
    .line 2790
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    if-nez v0, :cond_1

    .line 2791
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2793
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    if-nez v0, :cond_0

    .line 2794
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    .line 2796
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2798
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    return-object v0

    .line 2796
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3068
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3062
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2921
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2922
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 2923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    .line 2924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    .line 2925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    .line 2926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    .line 2928
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->cachedSize:I

    .line 2929
    return-object p0
.end method

.method public clearAirlineCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2823
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    .line 2824
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2825
    return-object p0
.end method

.method public clearAirlineName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    .line 2846
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2847
    return-object p0
.end method

.method public clearDateForUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    .line 2890
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2891
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    .line 2868
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2869
    return-object p0
.end method

.method public clearUpdateTime()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1

    .prologue
    .line 2911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    .line 2912
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2913
    return-object p0
.end method

.method public getAirlineCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDateForUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2962
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2963
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 2964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2965
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    aget-object v0, v3, v1

    .line 2966
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    if-eqz v0, :cond_0

    .line 2967
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2964
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2972
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 2973
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2976
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 2977
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2980
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 2981
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2984
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 2985
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2988
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 2989
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2992
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->cachedSize:I

    .line 2993
    return v2
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAirlineCode()Z
    .locals 1

    .prologue
    .line 2820
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAirlineName()Z
    .locals 1

    .prologue
    .line 2842
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDateForUrl()Z
    .locals 1

    .prologue
    .line 2886
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2864
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .prologue
    .line 2908
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

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
    .line 2784
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3002
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3006
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3007
    :sswitch_0
    return-object p0

    .line 3012
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3014
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    if-nez v5, :cond_2

    move v1, v4

    .line 3015
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3017
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    if-eqz v1, :cond_1

    .line 3018
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3020
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3021
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;-><init>()V

    aput-object v5, v2, v1

    .line 3022
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3023
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3020
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3014
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    array-length v1, v5

    goto :goto_1

    .line 3026
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;-><init>()V

    aput-object v5, v2, v1

    .line 3027
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3028
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    goto :goto_0

    .line 3032
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    .line 3033
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    goto :goto_0

    .line 3037
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    .line 3038
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    goto :goto_0

    .line 3042
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    .line 3043
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    goto :goto_0

    .line 3047
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    .line 3048
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    goto/16 :goto_0

    .line 3052
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    .line 3053
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    goto/16 :goto_0

    .line 3002
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2812
    if-nez p1, :cond_0

    .line 2813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2815
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    .line 2816
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2817
    return-object p0
.end method

.method public setAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2834
    if-nez p1, :cond_0

    .line 2835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2837
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    .line 2838
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2839
    return-object p0
.end method

.method public setDateForUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2878
    if-nez p1, :cond_0

    .line 2879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2881
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    .line 2882
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2883
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2856
    if-nez p1, :cond_0

    .line 2857
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2859
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    .line 2860
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2861
    return-object p0
.end method

.method public setUpdateTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2900
    if-nez p1, :cond_0

    .line 2901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2903
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    .line 2904
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    .line 2905
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
    .line 2935
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 2936
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2937
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->flight:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    aget-object v0, v2, v1

    .line 2938
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    if-eqz v0, :cond_0

    .line 2939
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2936
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2943
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2944
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2946
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 2947
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->airlineName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2949
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 2950
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->number_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2952
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 2953
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->dateForUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2955
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 2956
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightResult;->updateTime_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2958
    :cond_6
    return-void
.end method
