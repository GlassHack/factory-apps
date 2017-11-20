.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopLink"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;


# instance fields
.field private bitField0_:I

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2314
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2315
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2316
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 2

    .prologue
    .line 2257
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    if-nez v0, :cond_1

    .line 2258
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2260
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    if-nez v0, :cond_0

    .line 2261
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2263
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    return-object v0

    .line 2263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2389
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2383
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1

    .prologue
    .line 2319
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    .line 2320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    .line 2321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    .line 2322
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->cachedSize:I

    .line 2323
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1

    .prologue
    .line 2309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    .line 2310
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    .line 2311
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1

    .prologue
    .line 2287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    .line 2288
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    .line 2289
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2339
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2340
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2341
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2344
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2345
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2348
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->cachedSize:I

    .line 2349
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 2306
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

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
    .line 2284
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

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
    .line 2251
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2358
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2362
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2363
    :sswitch_0
    return-object p0

    .line 2368
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    .line 2369
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    goto :goto_0

    .line 2373
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    .line 2374
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    goto :goto_0

    .line 2358
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2298
    if-nez p1, :cond_0

    .line 2299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2301
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    .line 2302
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    .line 2303
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2276
    if-nez p1, :cond_0

    .line 2277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2279
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    .line 2280
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    .line 2281
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
    .line 2329
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2330
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2332
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2333
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2335
    :cond_1
    return-void
.end method
