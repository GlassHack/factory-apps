.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerSegmentLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;


# instance fields
.field private bitField0_:I

.field private dEPRECATEDFinalEndpointerFiredMs_:I

.field private dEPRECATEDFinalRecognitionResultComputedMs_:J

.field public hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

.field private relativeEndTimeMs_:I

.field private relativeStartTimeMs_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2359
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2360
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 2361
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 2

    .prologue
    .line 2267
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    if-nez v0, :cond_1

    .line 2268
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2270
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    if-nez v0, :cond_0

    .line 2271
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 2273
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2275
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    return-object v0

    .line 2273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2498
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2492
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2364
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2365
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    .line 2366
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    .line 2367
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    .line 2368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    .line 2369
    invoke-static {}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 2370
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->cachedSize:I

    .line 2371
    return-object p0
.end method

.method public clearDEPRECATEDFinalEndpointerFiredMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    .line 2332
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    .line 2333
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2334
    return-object p0
.end method

.method public clearDEPRECATEDFinalRecognitionResultComputedMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 2

    .prologue
    .line 2351
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    .line 2352
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2353
    return-object p0
.end method

.method public clearRelativeEndTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    .line 2314
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2315
    return-object p0
.end method

.method public clearRelativeStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    .line 2294
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    .line 2295
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2296
    return-object p0
.end method

.method public getDEPRECATEDFinalEndpointerFiredMs()I
    .locals 1

    .prologue
    .line 2321
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    return v0
.end method

.method public getDEPRECATEDFinalRecognitionResultComputedMs()J
    .locals 2

    .prologue
    .line 2340
    iget-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    return-wide v0
.end method

.method public getRelativeEndTimeMs()I
    .locals 1

    .prologue
    .line 2302
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    return v0
.end method

.method public getRelativeStartTimeMs()I
    .locals 1

    .prologue
    .line 2283
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2401
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2402
    .local v2, "size":I
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2403
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2406
    :cond_0
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2407
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2410
    :cond_1
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 2411
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2414
    :cond_2
    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 2415
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2418
    :cond_3
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 2419
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2420
    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    aget-object v0, v3, v1

    .line 2421
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    if-eqz v0, :cond_4

    .line 2422
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2419
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2427
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .end local v1    # "i":I
    :cond_5
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->cachedSize:I

    .line 2428
    return v2
.end method

.method public hasDEPRECATEDFinalEndpointerFiredMs()Z
    .locals 1

    .prologue
    .line 2329
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDFinalRecognitionResultComputedMs()Z
    .locals 1

    .prologue
    .line 2348
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelativeEndTimeMs()Z
    .locals 1

    .prologue
    .line 2310
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelativeStartTimeMs()Z
    .locals 1

    .prologue
    .line 2291
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

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
    .line 2261
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2436
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2437
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2441
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2442
    :sswitch_0
    return-object p0

    .line 2447
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    .line 2448
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    goto :goto_0

    .line 2452
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    .line 2453
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    goto :goto_0

    .line 2457
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    .line 2458
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    goto :goto_0

    .line 2462
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    .line 2463
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    goto :goto_0

    .line 2467
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2469
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-nez v5, :cond_2

    move v1, v4

    .line 2470
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 2472
    .local v2, "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    if-eqz v1, :cond_1

    .line 2473
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2475
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2476
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    aput-object v5, v2, v1

    .line 2477
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2478
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2475
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2469
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    array-length v1, v5

    goto :goto_1

    .line 2481
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    :cond_3
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    aput-object v5, v2, v1

    .line 2482
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2483
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto/16 :goto_0

    .line 2437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setDEPRECATEDFinalEndpointerFiredMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2324
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    .line 2325
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2326
    return-object p0
.end method

.method public setDEPRECATEDFinalRecognitionResultComputedMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2343
    iput-wide p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    .line 2344
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2345
    return-object p0
.end method

.method public setRelativeEndTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2305
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    .line 2306
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2307
    return-object p0
.end method

.method public setRelativeStartTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2286
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    .line 2287
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    .line 2288
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2377
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2378
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2380
    :cond_0
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2381
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2383
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2384
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2386
    :cond_2
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 2387
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2389
    :cond_3
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 2390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 2391
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    aget-object v0, v2, v1

    .line 2392
    .local v0, "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    if-eqz v0, :cond_4

    .line 2393
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2390
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2397
    .end local v0    # "element":Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
