.class public final Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsLookupRequest"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;


# instance fields
.field private bitField0_:I

.field private clientCountryCode_:Ljava/lang/String;

.field public clientFlags:[Ljava/lang/String;

.field private clientId_:Ljava/lang/String;

.field private clientLocale_:Ljava/lang/String;

.field private clientName_:Ljava/lang/String;

.field private clientVersion_:Ljava/lang/String;

.field private debug_:Z

.field public desiredResultType:[I

.field private maxResults_:I

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 370
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clear()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 371
    return-void
.end method

.method public static emptyArray()[Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-nez v0, :cond_1

    .line 181
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    sput-object v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 186
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    sget-object v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->_emptyArray:[Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    .line 376
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    .line 377
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    .line 378
    iput-boolean v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    .line 379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    .line 384
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    .line 385
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->cachedSize:I

    .line 386
    return-object p0
.end method

.method public clearClientCountryCode()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    .line 362
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 363
    return-object p0
.end method

.method public clearClientId()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    .line 340
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 341
    return-object p0
.end method

.method public clearClientLocale()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    .line 274
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 275
    return-object p0
.end method

.method public clearClientName()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    .line 296
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 297
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    .line 318
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 319
    return-object p0
.end method

.method public clearDebug()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    .line 252
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public clearMaxResults()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    .line 233
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 234
    return-object p0
.end method

.method public clearSessionId()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    .line 211
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 212
    return-object p0
.end method

.method public getClientCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    return v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 433
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 434
    .local v4, "size":I
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 435
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 438
    :cond_0
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    array-length v5, v5

    if-lez v5, :cond_2

    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 441
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    aget v2, v5, v3

    .line 442
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    .end local v2    # "element":I
    :cond_1
    add-int/2addr v4, v1

    .line 446
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 448
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 449
    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 452
    :cond_3
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 453
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 456
    :cond_4
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    .line 457
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 460
    :cond_5
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_6

    .line 461
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 464
    :cond_6
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    .line 465
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 468
    :cond_7
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 469
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 472
    :cond_8
    iget v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9

    .line 473
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 476
    :cond_9
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_c

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 479
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_b

    .line 480
    iget-object v5, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 481
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 482
    add-int/lit8 v0, v0, 0x1

    .line 483
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 479
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 487
    .end local v2    # "element":Ljava/lang/String;
    :cond_b
    add-int/2addr v4, v1

    .line 488
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 490
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_c
    iput v4, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->cachedSize:I

    .line 491
    return v4
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientCountryCode()Z
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientLocale()Z
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientName()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientVersion()Z
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxResults()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 499
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 500
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 504
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 505
    :sswitch_0
    return-object p0

    .line 510
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    .line 511
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto :goto_0

    .line 515
    :sswitch_2
    const/16 v8, 0x10

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 517
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 518
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 519
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 520
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 523
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 524
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 517
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    array-length v1, v8

    goto :goto_1

    .line 527
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 528
    iput-object v4, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    goto :goto_0

    .line 532
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 533
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 535
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 536
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 537
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 538
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 541
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 542
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 543
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 544
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 545
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 548
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 542
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    array-length v1, v8

    goto :goto_4

    .line 550
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    .line 551
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 555
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    .line 556
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto/16 :goto_0

    .line 560
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    .line 561
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto/16 :goto_0

    .line 565
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    .line 566
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto/16 :goto_0

    .line 570
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    .line 571
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto/16 :goto_0

    .line 575
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    .line 576
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto/16 :goto_0

    .line 580
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    .line 581
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto/16 :goto_0

    .line 585
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    .line 586
    iget v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    goto/16 :goto_0

    .line 590
    :sswitch_b
    const/16 v8, 0x52

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 592
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    if-nez v8, :cond_9

    move v1, v7

    .line 593
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 594
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 595
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    :cond_8
    :goto_7
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 598
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 599
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 592
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_6

    .line 602
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 603
    iput-object v4, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    goto/16 :goto_0

    .line 500
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x40 -> :sswitch_9
        0x4a -> :sswitch_a
        0x52 -> :sswitch_b
    .end sparse-switch
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
    .line 174
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    .line 354
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 355
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 331
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    .line 332
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 333
    return-object p0
.end method

.method public setClientLocale(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    .line 266
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 267
    return-object p0
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    .line 288
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 289
    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    .line 310
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 311
    return-object p0
.end method

.method public setDebug(Z)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    .line 244
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 245
    return-object p0
.end method

.method public setMaxResults(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    .line 225
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 226
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    .line 203
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    .line 204
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
    .line 392
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 393
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    array-length v2, v2

    if-lez v2, :cond_1

    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 397
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 401
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 403
    :cond_2
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 404
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 406
    :cond_3
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 407
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 409
    :cond_4
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 410
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 412
    :cond_5
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 413
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 415
    :cond_6
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 416
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 418
    :cond_7
    iget v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    .line 419
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 421
    :cond_8
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 422
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 423
    iget-object v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientFlags:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 424
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 425
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 422
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_a
    return-void
.end method
