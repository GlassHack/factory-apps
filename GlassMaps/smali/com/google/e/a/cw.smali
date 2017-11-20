.class public final Lcom/google/e/a/cw;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2395
    invoke-direct {p0}, Lcom/google/e/a/cw;->a()Lcom/google/e/a/cw;

    .line 2396
    return-void
.end method

.method private a()Lcom/google/e/a/cw;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2399
    iput v2, p0, Lcom/google/e/a/cw;->b:I

    .line 2400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cw;->c:Ljava/lang/String;

    .line 2401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cw;->d:Ljava/lang/String;

    .line 2402
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    .line 2403
    iput v2, p0, Lcom/google/e/a/cw;->e:I

    .line 2404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cw;->f:Ljava/lang/String;

    .line 2405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/cw;->g:J

    .line 2406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cw;->h:Ljava/lang/String;

    .line 2407
    iput v2, p0, Lcom/google/e/a/cw;->i:I

    .line 2408
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cw;->j:Ljava/lang/String;

    .line 2409
    iput-boolean v2, p0, Lcom/google/e/a/cw;->k:Z

    .line 2410
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/cw;->cachedSize:I

    .line 2411
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cw;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2516
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2517
    sparse-switch v0, :sswitch_data_0

    .line 2521
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2522
    :sswitch_0
    return-object p0

    .line 2527
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cw;->c:Ljava/lang/String;

    .line 2528
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto :goto_0

    .line 2532
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cw;->d:Ljava/lang/String;

    .line 2533
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto :goto_0

    .line 2537
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2539
    iget-object v0, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 2540
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2541
    if-eqz v0, :cond_1

    .line 2542
    iget-object v3, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2544
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2545
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2546
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2544
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2539
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2549
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2550
    iput-object v2, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    goto :goto_0

    .line 2554
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cw;->f:Ljava/lang/String;

    .line 2555
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto :goto_0

    .line 2559
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/e/a/cw;->g:J

    .line 2560
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto :goto_0

    .line 2564
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cw;->h:Ljava/lang/String;

    .line 2565
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto/16 :goto_0

    .line 2569
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/cw;->k:Z

    .line 2570
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto/16 :goto_0

    .line 2574
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/cw;->i:I

    .line 2575
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto/16 :goto_0

    .line 2579
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cw;->j:Ljava/lang/String;

    .line 2580
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto/16 :goto_0

    .line 2584
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/cw;->e:I

    .line 2585
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/cw;->b:I

    goto/16 :goto_0

    .line 2517
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2456
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2457
    iget v2, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2458
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/cw;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2461
    :cond_0
    iget v2, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2462
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/e/a/cw;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2465
    :cond_1
    iget-object v2, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 2468
    :goto_0
    iget-object v4, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 2469
    iget-object v4, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 2470
    if-eqz v4, :cond_2

    .line 2471
    add-int/lit8 v3, v3, 0x1

    .line 2472
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2468
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2476
    :cond_3
    add-int/2addr v0, v2

    .line 2477
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 2479
    :cond_4
    iget v1, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 2480
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/cw;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2483
    :cond_5
    iget v1, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 2484
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/e/a/cw;->g:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2487
    :cond_6
    iget v1, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 2488
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/cw;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2491
    :cond_7
    iget v1, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 2492
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/e/a/cw;->k:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2495
    :cond_8
    iget v1, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    .line 2496
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/e/a/cw;->i:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2499
    :cond_9
    iget v1, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    .line 2500
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/e/a/cw;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2503
    :cond_a
    iget v1, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 2504
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/e/a/cw;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2507
    :cond_b
    iput v0, p0, Lcom/google/e/a/cw;->cachedSize:I

    .line 2508
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2186
    invoke-direct {p0, p1}, Lcom/google/e/a/cw;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 2417
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2418
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/cw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2420
    :cond_0
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2421
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/cw;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2423
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 2424
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2425
    iget-object v1, p0, Lcom/google/e/a/cw;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2426
    if-eqz v1, :cond_2

    .line 2427
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2424
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2431
    :cond_3
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 2432
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/cw;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2434
    :cond_4
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2435
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/e/a/cw;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2437
    :cond_5
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 2438
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/cw;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2440
    :cond_6
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 2441
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/e/a/cw;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2443
    :cond_7
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 2444
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/e/a/cw;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2446
    :cond_8
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 2447
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/e/a/cw;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2449
    :cond_9
    iget v0, p0, Lcom/google/e/a/cw;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    .line 2450
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/e/a/cw;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2452
    :cond_a
    return-void
.end method
