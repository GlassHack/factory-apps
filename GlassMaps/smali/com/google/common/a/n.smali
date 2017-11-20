.class public final Lcom/google/common/a/n;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/n;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:J

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/n;

    sput-object v0, Lcom/google/common/a/n;->a:[Lcom/google/common/a/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 69
    iput v0, p0, Lcom/google/common/a/n;->c:I

    .line 88
    iput v0, p0, Lcom/google/common/a/n;->d:I

    .line 107
    iput v0, p0, Lcom/google/common/a/n;->e:I

    .line 126
    iput v0, p0, Lcom/google/common/a/n;->f:I

    .line 145
    iput-wide v1, p0, Lcom/google/common/a/n;->g:J

    .line 164
    iput v0, p0, Lcom/google/common/a/n;->h:I

    .line 183
    iput-wide v1, p0, Lcom/google/common/a/n;->i:J

    .line 202
    iput-boolean v0, p0, Lcom/google/common/a/n;->j:Z

    .line 221
    iput v0, p0, Lcom/google/common/a/n;->k:I

    .line 240
    iput v0, p0, Lcom/google/common/a/n;->l:I

    .line 259
    iput v0, p0, Lcom/google/common/a/n;->m:I

    .line 278
    iput v0, p0, Lcom/google/common/a/n;->n:I

    .line 297
    iput v0, p0, Lcom/google/common/a/n;->o:I

    .line 10
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/n;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 466
    sparse-switch v0, :sswitch_data_0

    .line 470
    iget-object v1, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    :sswitch_0
    return-object p0

    .line 481
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 482
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 487
    :cond_2
    iput v0, p0, Lcom/google/common/a/n;->c:I

    .line 488
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto :goto_0

    .line 490
    :cond_3
    iput v2, p0, Lcom/google/common/a/n;->c:I

    goto :goto_0

    .line 495
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 496
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 503
    :cond_4
    iput v0, p0, Lcom/google/common/a/n;->d:I

    .line 504
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto :goto_0

    .line 506
    :cond_5
    iput v2, p0, Lcom/google/common/a/n;->d:I

    goto :goto_0

    .line 511
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 512
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_6

    if-ne v0, v6, :cond_7

    .line 517
    :cond_6
    iput v0, p0, Lcom/google/common/a/n;->e:I

    .line 518
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto :goto_0

    .line 520
    :cond_7
    iput v2, p0, Lcom/google/common/a/n;->e:I

    goto :goto_0

    .line 525
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 526
    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    if-eq v0, v4, :cond_8

    if-eq v0, v5, :cond_8

    if-eq v0, v6, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 533
    :cond_8
    iput v0, p0, Lcom/google/common/a/n;->f:I

    .line 534
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 536
    :cond_9
    iput v2, p0, Lcom/google/common/a/n;->f:I

    goto/16 :goto_0

    .line 541
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/n;->g:J

    .line 542
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 546
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/n;->h:I

    .line 547
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 551
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/n;->i:J

    .line 552
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 556
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/a/n;->j:Z

    .line 557
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 561
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 562
    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v6, :cond_a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 568
    :cond_a
    iput v0, p0, Lcom/google/common/a/n;->k:I

    .line 569
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 571
    :cond_b
    iput v2, p0, Lcom/google/common/a/n;->k:I

    goto/16 :goto_0

    .line 576
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 577
    if-eqz v0, :cond_c

    if-eq v0, v3, :cond_c

    if-ne v0, v4, :cond_d

    .line 580
    :cond_c
    iput v0, p0, Lcom/google/common/a/n;->l:I

    .line 581
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 583
    :cond_d
    iput v2, p0, Lcom/google/common/a/n;->l:I

    goto/16 :goto_0

    .line 588
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 589
    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v4, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v6, :cond_e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 595
    :cond_e
    iput v0, p0, Lcom/google/common/a/n;->m:I

    .line 596
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 598
    :cond_f
    iput v2, p0, Lcom/google/common/a/n;->m:I

    goto/16 :goto_0

    .line 603
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 604
    if-eqz v0, :cond_10

    if-eq v0, v3, :cond_10

    if-eq v0, v4, :cond_10

    if-eq v0, v5, :cond_10

    if-eq v0, v6, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    const/4 v1, 0x7

    if-eq v0, v1, :cond_10

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    const/16 v1, 0x9

    if-eq v0, v1, :cond_10

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    const/16 v1, 0xb

    if-eq v0, v1, :cond_10

    const/16 v1, 0xc

    if-eq v0, v1, :cond_10

    const/16 v1, 0xd

    if-eq v0, v1, :cond_10

    const/16 v1, 0xe

    if-eq v0, v1, :cond_10

    const/16 v1, 0xf

    if-ne v0, v1, :cond_11

    .line 620
    :cond_10
    iput v0, p0, Lcom/google/common/a/n;->n:I

    .line 621
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 623
    :cond_11
    iput v2, p0, Lcom/google/common/a/n;->n:I

    goto/16 :goto_0

    .line 628
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/n;->o:I

    .line 629
    iget v0, p0, Lcom/google/common/a/n;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/common/a/n;->b:I

    goto/16 :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    if-ne p1, p0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/n;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 319
    :cond_2
    check-cast p1, Lcom/google/common/a/n;

    .line 320
    iget v2, p0, Lcom/google/common/a/n;->c:I

    iget v3, p1, Lcom/google/common/a/n;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->d:I

    iget v3, p1, Lcom/google/common/a/n;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->e:I

    iget v3, p1, Lcom/google/common/a/n;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->f:I

    iget v3, p1, Lcom/google/common/a/n;->f:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/n;->g:J

    iget-wide v4, p1, Lcom/google/common/a/n;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->h:I

    iget v3, p1, Lcom/google/common/a/n;->h:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/n;->i:J

    iget-wide v4, p1, Lcom/google/common/a/n;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/common/a/n;->j:Z

    iget-boolean v3, p1, Lcom/google/common/a/n;->j:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->k:I

    iget v3, p1, Lcom/google/common/a/n;->k:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->l:I

    iget v3, p1, Lcom/google/common/a/n;->l:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->m:I

    iget v3, p1, Lcom/google/common/a/n;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->n:I

    iget v3, p1, Lcom/google/common/a/n;->n:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/n;->o:I

    iget v3, p1, Lcom/google/common/a/n;->o:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 333
    goto :goto_0

    .line 320
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    .line 333
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 404
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/a/n;->c:I

    .line 405
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_0
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 408
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/a/n;->d:I

    .line 409
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_1
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 412
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/a/n;->e:I

    .line 413
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_2
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 416
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/a/n;->f:I

    .line 417
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_3
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 420
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/a/n;->g:J

    .line 421
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_4
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 424
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/a/n;->h:I

    .line 425
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_5
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 428
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/a/n;->i:J

    .line 429
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_6
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 432
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/a/n;->j:Z

    .line 433
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_7
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 436
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/common/a/n;->k:I

    .line 437
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_8
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 440
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/common/a/n;->l:I

    .line 441
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_9
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 444
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/a/n;->m:I

    .line 445
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    :cond_a
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 448
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/common/a/n;->n:I

    .line 449
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_b
    iget v1, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 452
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/common/a/n;->o:I

    .line 453
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_c
    iget-object v1, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    iput v0, p0, Lcom/google/common/a/n;->cachedSize:I

    .line 457
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 337
    .line 338
    iget v0, p0, Lcom/google/common/a/n;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 339
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->d:I

    add-int/2addr v0, v1

    .line 340
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->e:I

    add-int/2addr v0, v1

    .line 341
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->f:I

    add-int/2addr v0, v1

    .line 342
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/common/a/n;->g:J

    iget-wide v3, p0, Lcom/google/common/a/n;->g:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 343
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->h:I

    add-int/2addr v0, v1

    .line 344
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/common/a/n;->i:J

    iget-wide v3, p0, Lcom/google/common/a/n;->i:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 345
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/common/a/n;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 346
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->k:I

    add-int/2addr v0, v1

    .line 347
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->l:I

    add-int/2addr v0, v1

    .line 348
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->m:I

    add-int/2addr v0, v1

    .line 349
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->n:I

    add-int/2addr v0, v1

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/n;->o:I

    add-int/2addr v0, v1

    .line 351
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    .line 352
    return v0

    .line 345
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/google/common/a/n;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 357
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/a/n;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 360
    :cond_0
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/a/n;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 363
    :cond_1
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 364
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/a/n;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 366
    :cond_2
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 367
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/a/n;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 369
    :cond_3
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 370
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/common/a/n;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 372
    :cond_4
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 373
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/a/n;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 375
    :cond_5
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 376
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/common/a/n;->i:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 378
    :cond_6
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 379
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/common/a/n;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 381
    :cond_7
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 382
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/common/a/n;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 384
    :cond_8
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 385
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/common/a/n;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 387
    :cond_9
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 388
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/common/a/n;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 390
    :cond_a
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 391
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/common/a/n;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 393
    :cond_b
    iget v0, p0, Lcom/google/common/a/n;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 394
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/common/a/n;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 396
    :cond_c
    iget-object v0, p0, Lcom/google/common/a/n;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 398
    return-void
.end method
