.class public final Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowserParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;


# instance fields
.field private bitField0_:I

.field private googleDomain_:Ljava/lang/String;

.field private heightPixels_:I

.field private searchLanguage_:Ljava/lang/String;

.field private useMetricUnits_:Z

.field private usePreciseGeolocation_:Z

.field private userAgent_:Ljava/lang/String;

.field private widthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 407
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->clear()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 408
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-nez v0, :cond_1

    .line 252
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    sput-object v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 257
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 540
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 412
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    .line 413
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    .line 417
    iput-boolean v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->cachedSize:I

    .line 420
    return-object p0
.end method

.method public clearGoogleDomain()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    .line 342
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 343
    return-object p0
.end method

.method public clearHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    .line 298
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 299
    return-object p0
.end method

.method public clearSearchLanguage()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    .line 364
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 365
    return-object p0
.end method

.method public clearUseMetricUnits()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    .line 383
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 384
    return-object p0
.end method

.method public clearUsePreciseGeolocation()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    .line 402
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 403
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    .line 320
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 321
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    .line 279
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 280
    return-object p0
.end method

.method public getGoogleDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    return v0
.end method

.method public getSearchLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 451
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 452
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 457
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 461
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 465
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 469
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 473
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 477
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    :cond_6
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->cachedSize:I

    .line 481
    return v0
.end method

.method public getUseMetricUnits()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    return v0
.end method

.method public getUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    return v0
.end method

.method public hasGoogleDomain()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeightPixels()Z
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchLanguage()Z
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUseMetricUnits()Z
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAgent()Z
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidthPixels()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

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
    .line 245
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 490
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 494
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    :sswitch_0
    return-object p0

    .line 500
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    .line 501
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    goto :goto_0

    .line 505
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    .line 506
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    goto :goto_0

    .line 510
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    .line 511
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    goto :goto_0

    .line 515
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    .line 516
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    goto :goto_0

    .line 520
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    .line 521
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    goto :goto_0

    .line 525
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    .line 526
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    goto :goto_0

    .line 530
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    .line 531
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    goto :goto_0

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setGoogleDomain(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    .line 334
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 335
    return-object p0
.end method

.method public setHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    .line 290
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 291
    return-object p0
.end method

.method public setSearchLanguage(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 355
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    .line 356
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 357
    return-object p0
.end method

.method public setUseMetricUnits(Z)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    .line 375
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 376
    return-object p0
.end method

.method public setUsePreciseGeolocation(Z)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    .line 394
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 395
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    .line 312
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 313
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    .line 271
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    .line 272
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
    .line 426
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->widthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 429
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 430
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->heightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 432
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 433
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->userAgent_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 435
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 436
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->googleDomain_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 438
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 439
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->searchLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 441
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 442
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->useMetricUnits_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 444
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 445
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;->usePreciseGeolocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 447
    :cond_6
    return-void
.end method
