.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcnResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;


# instance fields
.field private anchor_:Ljava/lang/String;

.field private bitField0_:I

.field private lastChangeTime_:Ljava/lang/String;

.field private lastPrice_:F

.field private priceChange_:F

.field private pricePercentChange_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2130
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2131
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 2132
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 2

    .prologue
    .line 2016
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    if-nez v0, :cond_1

    .line 2017
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2019
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    if-nez v0, :cond_0

    .line 2020
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 2022
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    return-object v0

    .line 2022
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2244
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2238
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    .line 2137
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    .line 2138
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    .line 2139
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    .line 2140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    .line 2141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->cachedSize:I

    .line 2142
    return-object p0
.end method

.method public clearAnchor()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 2046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    .line 2047
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2048
    return-object p0
.end method

.method public clearLastChangeTime()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 2125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    .line 2126
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2127
    return-object p0
.end method

.method public clearLastPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 2065
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    .line 2066
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2067
    return-object p0
.end method

.method public clearPriceChange()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 2084
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    .line 2085
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2086
    return-object p0
.end method

.method public clearPricePercentChange()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 2103
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    .line 2104
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2105
    return-object p0
.end method

.method public getAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChangeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPrice()F
    .locals 1

    .prologue
    .line 2054
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    return v0
.end method

.method public getPriceChange()F
    .locals 1

    .prologue
    .line 2073
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    return v0
.end method

.method public getPricePercentChange()F
    .locals 1

    .prologue
    .line 2092
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2167
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2168
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2169
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2172
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2173
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2176
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2177
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2180
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2181
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2184
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2185
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2188
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->cachedSize:I

    .line 2189
    return v0
.end method

.method public hasAnchor()Z
    .locals 1

    .prologue
    .line 2043
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastChangeTime()Z
    .locals 1

    .prologue
    .line 2122
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastPrice()Z
    .locals 1

    .prologue
    .line 2062
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriceChange()Z
    .locals 1

    .prologue
    .line 2081
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPricePercentChange()Z
    .locals 1

    .prologue
    .line 2100
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

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
    .line 2010
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2198
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2202
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2203
    :sswitch_0
    return-object p0

    .line 2208
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    .line 2209
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    goto :goto_0

    .line 2213
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    .line 2214
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    goto :goto_0

    .line 2218
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    .line 2219
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    goto :goto_0

    .line 2223
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    .line 2224
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    goto :goto_0

    .line 2228
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    .line 2229
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    goto :goto_0

    .line 2198
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setAnchor(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2035
    if-nez p1, :cond_0

    .line 2036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2038
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    .line 2039
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2040
    return-object p0
.end method

.method public setLastChangeTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2114
    if-nez p1, :cond_0

    .line 2115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2117
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    .line 2118
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2119
    return-object p0
.end method

.method public setLastPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2057
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    .line 2058
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2059
    return-object p0
.end method

.method public setPriceChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2076
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    .line 2077
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2078
    return-object p0
.end method

.method public setPricePercentChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 2095
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    .line 2096
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    .line 2097
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
    .line 2148
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2149
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2151
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2152
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2154
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2155
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2157
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2158
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2160
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2161
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2163
    :cond_4
    return-void
.end method
