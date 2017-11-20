.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpServerInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;


# instance fields
.field private bitField0_:I

.field private chunkSize_:I

.field private connectionTimeoutMsec_:I

.field private disableCompression_:Z

.field private header_:Ljava/lang/String;

.field public httpHeaderKey:[Ljava/lang/String;

.field public httpHeaderValue:[Ljava/lang/String;

.field private readTimeoutMsec_:I

.field private replaceHostWithTld_:Z

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2160
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2161
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2162
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 2

    .prologue
    .line 2002
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-nez v0, :cond_1

    .line 2003
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2005
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    if-nez v0, :cond_0

    .line 2006
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2008
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    return-object v0

    .line 2008
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2380
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2374
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2165
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    .line 2167
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->replaceHostWithTld_:Z

    .line 2168
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    .line 2169
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    .line 2170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    .line 2171
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    .line 2172
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    .line 2173
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    .line 2174
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    .line 2175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->cachedSize:I

    .line 2176
    return-object p0
.end method

.method public clearChunkSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    .line 2137
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2138
    return-object p0
.end method

.method public clearConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2098
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    .line 2099
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2100
    return-object p0
.end method

.method public clearDisableCompression()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    .line 2156
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2157
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    .line 2080
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2081
    return-object p0
.end method

.method public clearReadTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2117
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    .line 2118
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2119
    return-object p0
.end method

.method public clearReplaceHostWithTld()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->replaceHostWithTld_:Z

    .line 2052
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2053
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    .line 2033
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2034
    return-object p0
.end method

.method public getChunkSize()I
    .locals 1

    .prologue
    .line 2125
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    return v0
.end method

.method public getConnectionTimeoutMsec()I
    .locals 1

    .prologue
    .line 2087
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    return v0
.end method

.method public getDisableCompression()Z
    .locals 1

    .prologue
    .line 2144
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTimeoutMsec()I
    .locals 1

    .prologue
    .line 2106
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    return v0
.end method

.method public getReplaceHostWithTld()Z
    .locals 1

    .prologue
    .line 2040
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->replaceHostWithTld_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 2223
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 2224
    .local v4, "size":I
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 2225
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2228
    :cond_0
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 2229
    const/4 v0, 0x0

    .line 2230
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 2231
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 2232
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2233
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2234
    add-int/lit8 v0, v0, 0x1

    .line 2235
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2231
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2239
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/2addr v4, v1

    .line 2240
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 2242
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 2243
    const/4 v0, 0x0

    .line 2244
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 2245
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 2246
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2247
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2248
    add-int/lit8 v0, v0, 0x1

    .line 2249
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2245
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2253
    .end local v2    # "element":Ljava/lang/String;
    :cond_5
    add-int/2addr v4, v1

    .line 2254
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 2256
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    .line 2257
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2260
    :cond_7
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_8

    .line 2261
    const/4 v5, 0x5

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2264
    :cond_8
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_9

    .line 2265
    const/4 v5, 0x6

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2268
    :cond_9
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_a

    .line 2269
    const/4 v5, 0x7

    iget v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2272
    :cond_a
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_b

    .line 2273
    const/16 v5, 0x8

    iget-boolean v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 2276
    :cond_b
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_c

    .line 2277
    const/16 v5, 0x9

    iget-boolean v6, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->replaceHostWithTld_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 2280
    :cond_c
    iput v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->cachedSize:I

    .line 2281
    return v4
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasChunkSize()Z
    .locals 1

    .prologue
    .line 2133
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnectionTimeoutMsec()Z
    .locals 1

    .prologue
    .line 2095
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisableCompression()Z
    .locals 1

    .prologue
    .line 2152
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 2076
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReadTimeoutMsec()Z
    .locals 1

    .prologue
    .line 2114
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReplaceHostWithTld()Z
    .locals 1

    .prologue
    .line 2048
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2029
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

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
    .line 1996
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2289
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2290
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2294
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2295
    :sswitch_0
    return-object p0

    .line 2300
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    .line 2301
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    goto :goto_0

    .line 2305
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2307
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 2308
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2309
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2310
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2312
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2313
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2314
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2307
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 2317
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2318
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    goto :goto_0

    .line 2322
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2324
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    .line 2325
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2326
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 2327
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2329
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 2330
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2331
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2329
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2324
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    .line 2334
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2335
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2339
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    .line 2340
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2344
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    .line 2345
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2349
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    .line 2350
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2354
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    .line 2355
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2359
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    .line 2360
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2364
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->replaceHostWithTld_:Z

    .line 2365
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    goto/16 :goto_0

    .line 2290
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public setChunkSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2128
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    .line 2129
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2130
    return-object p0
.end method

.method public setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2090
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    .line 2091
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2092
    return-object p0
.end method

.method public setDisableCompression(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2147
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    .line 2148
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2149
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2068
    if-nez p1, :cond_0

    .line 2069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2071
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    .line 2072
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2073
    return-object p0
.end method

.method public setReadTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2109
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    .line 2110
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2111
    return-object p0
.end method

.method public setReplaceHostWithTld(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2043
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->replaceHostWithTld_:Z

    .line 2044
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2045
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2021
    if-nez p1, :cond_0

    .line 2022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2024
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    .line 2025
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    .line 2026
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
    .line 2182
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2183
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2185
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 2186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2187
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 2188
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2189
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2193
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 2194
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2195
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 2196
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2197
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2194
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2201
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 2202
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2204
    :cond_5
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 2205
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2207
    :cond_6
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 2208
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2210
    :cond_7
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 2211
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2213
    :cond_8
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    .line 2214
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2216
    :cond_9
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 2217
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->replaceHostWithTld_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2219
    :cond_a
    return-void
.end method
