.class public final Lcom/google/e/a/aj;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile g:[Lcom/google/e/a/aj;


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[I

.field public c:[Lcom/google/e/a/ap;

.field public d:[I

.field public e:Lcom/google/e/a/ao;

.field public f:Lcom/google/e/a/c;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10285
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10286
    invoke-direct {p0}, Lcom/google/e/a/aj;->b()Lcom/google/e/a/aj;

    .line 10287
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/aj;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 10449
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10450
    sparse-switch v0, :sswitch_data_0

    .line 10454
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10455
    :sswitch_0
    return-object p0

    .line 10460
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/aj;->i:I

    .line 10461
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/aj;->h:I

    goto :goto_0

    .line 10465
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/aj;->j:I

    .line 10466
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/aj;->h:I

    goto :goto_0

    .line 10470
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10472
    iget-object v0, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 10473
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 10474
    if-eqz v0, :cond_1

    .line 10475
    iget-object v3, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10477
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 10478
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10479
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10477
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10472
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 10482
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10483
    iput-object v2, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    goto :goto_0

    .line 10487
    :sswitch_4
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10489
    iget-object v0, p0, Lcom/google/e/a/aj;->b:[I

    if-nez v0, :cond_5

    move v0, v1

    .line 10490
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 10491
    if-eqz v0, :cond_4

    .line 10492
    iget-object v3, p0, Lcom/google/e/a/aj;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10494
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 10495
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 10496
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10494
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 10489
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/aj;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 10499
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 10500
    iput-object v2, p0, Lcom/google/e/a/aj;->b:[I

    goto/16 :goto_0

    .line 10504
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 10505
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 10508
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 10509
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_7

    .line 10510
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 10511
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 10513
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 10514
    iget-object v2, p0, Lcom/google/e/a/aj;->b:[I

    if-nez v2, :cond_9

    move v2, v1

    .line 10515
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 10516
    if-eqz v2, :cond_8

    .line 10517
    iget-object v4, p0, Lcom/google/e/a/aj;->b:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10519
    :cond_8
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_a

    .line 10520
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 10519
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 10514
    :cond_9
    iget-object v2, p0, Lcom/google/e/a/aj;->b:[I

    array-length v2, v2

    goto :goto_6

    .line 10522
    :cond_a
    iput-object v0, p0, Lcom/google/e/a/aj;->b:[I

    .line 10523
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 10527
    :sswitch_6
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10529
    iget-object v0, p0, Lcom/google/e/a/aj;->d:[I

    if-nez v0, :cond_c

    move v0, v1

    .line 10530
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 10531
    if-eqz v0, :cond_b

    .line 10532
    iget-object v3, p0, Lcom/google/e/a/aj;->d:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10534
    :cond_b
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 10535
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 10536
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10534
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 10529
    :cond_c
    iget-object v0, p0, Lcom/google/e/a/aj;->d:[I

    array-length v0, v0

    goto :goto_8

    .line 10539
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 10540
    iput-object v2, p0, Lcom/google/e/a/aj;->d:[I

    goto/16 :goto_0

    .line 10544
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 10545
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 10548
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 10549
    :goto_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_e

    .line 10550
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 10551
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 10553
    :cond_e
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 10554
    iget-object v2, p0, Lcom/google/e/a/aj;->d:[I

    if-nez v2, :cond_10

    move v2, v1

    .line 10555
    :goto_b
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 10556
    if-eqz v2, :cond_f

    .line 10557
    iget-object v4, p0, Lcom/google/e/a/aj;->d:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10559
    :cond_f
    :goto_c
    array-length v4, v0

    if-ge v2, v4, :cond_11

    .line 10560
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 10559
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 10554
    :cond_10
    iget-object v2, p0, Lcom/google/e/a/aj;->d:[I

    array-length v2, v2

    goto :goto_b

    .line 10562
    :cond_11
    iput-object v0, p0, Lcom/google/e/a/aj;->d:[I

    .line 10563
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 10567
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/aj;->l:Ljava/lang/String;

    .line 10568
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/aj;->h:I

    goto/16 :goto_0

    .line 10572
    :sswitch_9
    iget-object v0, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    if-nez v0, :cond_12

    .line 10573
    new-instance v0, Lcom/google/e/a/c;

    invoke-direct {v0}, Lcom/google/e/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    .line 10575
    :cond_12
    iget-object v0, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 10579
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/aj;->m:I

    .line 10580
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/aj;->h:I

    goto/16 :goto_0

    .line 10584
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/aj;->n:I

    .line 10585
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/aj;->h:I

    goto/16 :goto_0

    .line 10589
    :sswitch_c
    iget-object v0, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    if-nez v0, :cond_13

    .line 10590
    new-instance v0, Lcom/google/e/a/ao;

    invoke-direct {v0}, Lcom/google/e/a/ao;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    .line 10592
    :cond_13
    iget-object v0, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 10596
    :sswitch_d
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10598
    iget-object v0, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    if-nez v0, :cond_15

    move v0, v1

    .line 10599
    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ap;

    .line 10601
    if-eqz v0, :cond_14

    .line 10602
    iget-object v3, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10604
    :cond_14
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_16

    .line 10605
    new-instance v3, Lcom/google/e/a/ap;

    invoke-direct {v3}, Lcom/google/e/a/ap;-><init>()V

    aput-object v3, v2, v0

    .line 10606
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10607
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10604
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10598
    :cond_15
    iget-object v0, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    array-length v0, v0

    goto :goto_d

    .line 10610
    :cond_16
    new-instance v3, Lcom/google/e/a/ap;

    invoke-direct {v3}, Lcom/google/e/a/ap;-><init>()V

    aput-object v3, v2, v0

    .line 10611
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10612
    iput-object v2, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    goto/16 :goto_0

    .line 10616
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/aj;->k:Ljava/lang/String;

    .line 10617
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/aj;->h:I

    goto/16 :goto_0

    .line 10450
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x30 -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
        0x50 -> :sswitch_b
        0x5a -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/aj;
    .locals 2

    .prologue
    .line 10134
    sget-object v0, Lcom/google/e/a/aj;->g:[Lcom/google/e/a/aj;

    if-nez v0, :cond_1

    .line 10135
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10137
    :try_start_0
    sget-object v0, Lcom/google/e/a/aj;->g:[Lcom/google/e/a/aj;

    if-nez v0, :cond_0

    .line 10138
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/aj;

    sput-object v0, Lcom/google/e/a/aj;->g:[Lcom/google/e/a/aj;

    .line 10140
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10142
    :cond_1
    sget-object v0, Lcom/google/e/a/aj;->g:[Lcom/google/e/a/aj;

    return-object v0

    .line 10140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/aj;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10290
    iput v1, p0, Lcom/google/e/a/aj;->h:I

    .line 10291
    iput v1, p0, Lcom/google/e/a/aj;->i:I

    .line 10292
    iput v1, p0, Lcom/google/e/a/aj;->j:I

    .line 10293
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    .line 10294
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/e/a/aj;->b:[I

    .line 10295
    invoke-static {}, Lcom/google/e/a/ap;->a()[Lcom/google/e/a/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    .line 10296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/aj;->k:Ljava/lang/String;

    .line 10297
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/e/a/aj;->d:[I

    .line 10298
    iput-object v2, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    .line 10299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/aj;->l:Ljava/lang/String;

    .line 10300
    iput-object v2, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    .line 10301
    iput v1, p0, Lcom/google/e/a/aj;->m:I

    .line 10302
    iput v1, p0, Lcom/google/e/a/aj;->n:I

    .line 10303
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/aj;->cachedSize:I

    .line 10304
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 10364
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10365
    iget v1, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10366
    const/4 v1, 0x1

    iget v3, p0, Lcom/google/e/a/aj;->i:I

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10369
    :cond_0
    iget v1, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10370
    const/4 v1, 0x2

    iget v3, p0, Lcom/google/e/a/aj;->j:I

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10373
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 10376
    :goto_0
    iget-object v5, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 10377
    iget-object v5, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 10378
    if-eqz v5, :cond_2

    .line 10379
    add-int/lit8 v4, v4, 0x1

    .line 10380
    invoke-static {v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 10376
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10384
    :cond_3
    add-int/2addr v0, v3

    .line 10385
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 10387
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/aj;->b:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/e/a/aj;->b:[I

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    .line 10389
    :goto_1
    iget-object v4, p0, Lcom/google/e/a/aj;->b:[I

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 10390
    iget-object v4, p0, Lcom/google/e/a/aj;->b:[I

    aget v4, v4, v1

    .line 10391
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 10389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10394
    :cond_5
    add-int/2addr v0, v3

    .line 10395
    iget-object v1, p0, Lcom/google/e/a/aj;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 10397
    :cond_6
    iget-object v1, p0, Lcom/google/e/a/aj;->d:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/e/a/aj;->d:[I

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    move v3, v2

    .line 10399
    :goto_2
    iget-object v4, p0, Lcom/google/e/a/aj;->d:[I

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 10400
    iget-object v4, p0, Lcom/google/e/a/aj;->d:[I

    aget v4, v4, v1

    .line 10401
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 10399
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10404
    :cond_7
    add-int/2addr v0, v3

    .line 10405
    iget-object v1, p0, Lcom/google/e/a/aj;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 10407
    :cond_8
    iget v1, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    .line 10408
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/e/a/aj;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10411
    :cond_9
    iget-object v1, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    if-eqz v1, :cond_a

    .line 10412
    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10415
    :cond_a
    iget v1, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    .line 10416
    const/16 v1, 0x9

    iget v3, p0, Lcom/google/e/a/aj;->m:I

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10419
    :cond_b
    iget v1, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    .line 10420
    const/16 v1, 0xa

    iget v3, p0, Lcom/google/e/a/aj;->n:I

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10423
    :cond_c
    iget-object v1, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    if-eqz v1, :cond_d

    .line 10424
    const/16 v1, 0xb

    iget-object v3, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    invoke-static {v1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10427
    :cond_d
    iget-object v1, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    array-length v1, v1

    if-lez v1, :cond_f

    .line 10428
    :goto_3
    iget-object v1, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    array-length v1, v1

    if-ge v2, v1, :cond_f

    .line 10429
    iget-object v1, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    aget-object v1, v1, v2

    .line 10430
    if-eqz v1, :cond_e

    .line 10431
    const/16 v3, 0xc

    invoke-static {v3, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10428
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 10436
    :cond_f
    iget v1, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_10

    .line 10437
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/e/a/aj;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10440
    :cond_10
    iput v0, p0, Lcom/google/e/a/aj;->cachedSize:I

    .line 10441
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10115
    invoke-direct {p0, p1}, Lcom/google/e/a/aj;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10310
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10311
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/e/a/aj;->i:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10313
    :cond_0
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10314
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/e/a/aj;->j:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10316
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 10317
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 10318
    iget-object v2, p0, Lcom/google/e/a/aj;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 10319
    if-eqz v2, :cond_2

    .line 10320
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10317
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10324
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/aj;->b:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/e/a/aj;->b:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 10325
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/aj;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 10326
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/e/a/aj;->b:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10329
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/aj;->d:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/e/a/aj;->d:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 10330
    :goto_2
    iget-object v2, p0, Lcom/google/e/a/aj;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 10331
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/e/a/aj;->d:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10330
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10334
    :cond_5
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 10335
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/e/a/aj;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10337
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    if-eqz v0, :cond_7

    .line 10338
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/e/a/aj;->f:Lcom/google/e/a/c;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10340
    :cond_7
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 10341
    const/16 v0, 0x9

    iget v2, p0, Lcom/google/e/a/aj;->m:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10343
    :cond_8
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 10344
    const/16 v0, 0xa

    iget v2, p0, Lcom/google/e/a/aj;->n:I

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10346
    :cond_9
    iget-object v0, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    if-eqz v0, :cond_a

    .line 10347
    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/e/a/aj;->e:Lcom/google/e/a/ao;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10349
    :cond_a
    iget-object v0, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 10350
    :goto_3
    iget-object v0, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    array-length v0, v0

    if-ge v1, v0, :cond_c

    .line 10351
    iget-object v0, p0, Lcom/google/e/a/aj;->c:[Lcom/google/e/a/ap;

    aget-object v0, v0, v1

    .line 10352
    if-eqz v0, :cond_b

    .line 10353
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10350
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10357
    :cond_c
    iget v0, p0, Lcom/google/e/a/aj;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    .line 10358
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/e/a/aj;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10360
    :cond_d
    return-void
.end method
