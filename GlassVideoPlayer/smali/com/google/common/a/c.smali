.class public final Lcom/google/common/a/c;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/c;


# instance fields
.field public b:[Lcom/google/common/a/b;

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/c;

    sput-object v0, Lcom/google/common/a/c;->a:[Lcom/google/common/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 119
    sget-object v0, Lcom/google/common/a/b;->a:[Lcom/google/common/a/b;

    iput-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    .line 122
    iput-wide v2, p0, Lcom/google/common/a/c;->d:J

    .line 141
    iput v1, p0, Lcom/google/common/a/c;->e:I

    .line 160
    iput v1, p0, Lcom/google/common/a/c;->f:I

    .line 179
    iput v1, p0, Lcom/google/common/a/c;->g:I

    .line 198
    iput v1, p0, Lcom/google/common/a/c;->h:I

    .line 217
    iput v1, p0, Lcom/google/common/a/c;->i:I

    .line 236
    iput v1, p0, Lcom/google/common/a/c;->j:I

    .line 255
    iput v1, p0, Lcom/google/common/a/c;->k:I

    .line 274
    iput-wide v2, p0, Lcom/google/common/a/c;->l:J

    .line 293
    iput v1, p0, Lcom/google/common/a/c;->m:I

    .line 312
    iput v1, p0, Lcom/google/common/a/c;->n:I

    .line 331
    iput v1, p0, Lcom/google/common/a/c;->o:I

    .line 350
    iput-boolean v1, p0, Lcom/google/common/a/c;->p:Z

    .line 369
    iput v1, p0, Lcom/google/common/a/c;->q:I

    .line 105
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/c;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 568
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 569
    sparse-switch v0, :sswitch_data_0

    .line 573
    iget-object v2, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    .line 577
    :cond_1
    iget-object v2, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    :sswitch_0
    return-object p0

    .line 584
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 585
    iget-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-nez v0, :cond_3

    move v0, v1

    .line 586
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/a/b;

    .line 587
    iget-object v3, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-eqz v3, :cond_2

    .line 588
    iget-object v3, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    :cond_2
    iput-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    .line 591
    :goto_2
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 592
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    new-instance v3, Lcom/google/common/a/b;

    invoke-direct {v3}, Lcom/google/common/a/b;-><init>()V

    aput-object v3, v2, v0

    .line 593
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 594
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v0, v0

    goto :goto_1

    .line 597
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    new-instance v3, Lcom/google/common/a/b;

    invoke-direct {v3}, Lcom/google/common/a/b;-><init>()V

    aput-object v3, v2, v0

    .line 598
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 602
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/a/c;->d:J

    .line 603
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto :goto_0

    .line 607
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->e:I

    .line 608
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto :goto_0

    .line 612
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->f:I

    .line 613
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 617
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->g:I

    .line 618
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 622
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->k:I

    .line 623
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 627
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/a/c;->l:J

    .line 628
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 632
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->h:I

    .line 633
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 637
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->m:I

    .line 638
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 642
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->i:I

    .line 643
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 647
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->j:I

    .line 648
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 652
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->n:I

    .line 653
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 657
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/c;->o:I

    .line 658
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 662
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/a/c;->p:Z

    .line 663
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 667
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 668
    if-eqz v0, :cond_5

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-eq v0, v2, :cond_5

    const/16 v2, 0xe

    if-eq v0, v2, :cond_5

    const/16 v2, 0xf

    if-ne v0, v2, :cond_6

    .line 674
    :cond_5
    iput v0, p0, Lcom/google/common/a/c;->q:I

    .line 675
    iget v0, p0, Lcom/google/common/a/c;->c:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/common/a/c;->c:I

    goto/16 :goto_0

    .line 677
    :cond_6
    iput v1, p0, Lcom/google/common/a/c;->q:I

    goto/16 :goto_0

    .line 569
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    if-ne p1, p0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 391
    :cond_2
    check-cast p1, Lcom/google/common/a/c;

    .line 392
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    iget-object v3, p1, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/c;->d:J

    iget-wide v4, p1, Lcom/google/common/a/c;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->e:I

    iget v3, p1, Lcom/google/common/a/c;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->f:I

    iget v3, p1, Lcom/google/common/a/c;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->g:I

    iget v3, p1, Lcom/google/common/a/c;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->h:I

    iget v3, p1, Lcom/google/common/a/c;->h:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->i:I

    iget v3, p1, Lcom/google/common/a/c;->i:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->j:I

    iget v3, p1, Lcom/google/common/a/c;->j:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->k:I

    iget v3, p1, Lcom/google/common/a/c;->k:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/c;->l:J

    iget-wide v4, p1, Lcom/google/common/a/c;->l:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->m:I

    iget v3, p1, Lcom/google/common/a/c;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->n:I

    iget v3, p1, Lcom/google/common/a/c;->n:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->o:I

    iget v3, p1, Lcom/google/common/a/c;->o:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/common/a/c;->p:Z

    iget-boolean v3, p1, Lcom/google/common/a/c;->p:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/c;->q:I

    iget v3, p1, Lcom/google/common/a/c;->q:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 407
    goto :goto_0

    .line 392
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    .line 407
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 493
    .line 494
    iget-object v1, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-eqz v1, :cond_1

    .line 495
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 496
    if-eqz v4, :cond_0

    .line 497
    const/4 v5, 0x1

    .line 498
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 495
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    :cond_1
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 503
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/a/c;->d:J

    .line 504
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_2
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 507
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/a/c;->e:I

    .line 508
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_3
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 511
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/a/c;->f:I

    .line 512
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_4
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 515
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/a/c;->g:I

    .line 516
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 518
    :cond_5
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    .line 519
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/a/c;->k:I

    .line 520
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 522
    :cond_6
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 523
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/a/c;->l:J

    .line 524
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 526
    :cond_7
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 527
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/common/a/c;->h:I

    .line 528
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 530
    :cond_8
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 531
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/common/a/c;->m:I

    .line 532
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 534
    :cond_9
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    .line 535
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/common/a/c;->i:I

    .line 536
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 538
    :cond_a
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_b

    .line 539
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/a/c;->j:I

    .line 540
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 542
    :cond_b
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_c

    .line 543
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/common/a/c;->n:I

    .line 544
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 546
    :cond_c
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_d

    .line 547
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/common/a/c;->o:I

    .line 548
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    :cond_d
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_e

    .line 551
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/common/a/c;->p:Z

    .line 552
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 554
    :cond_e
    iget v1, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_f

    .line 555
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/common/a/c;->q:I

    .line 556
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 558
    :cond_f
    iget-object v1, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    iput v0, p0, Lcom/google/common/a/c;->cachedSize:I

    .line 560
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 411
    const/16 v0, 0x11

    .line 412
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    .line 418
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v2, p0, Lcom/google/common/a/c;->d:J

    iget-wide v4, p0, Lcom/google/common/a/c;->d:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 419
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->e:I

    add-int/2addr v0, v2

    .line 420
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->f:I

    add-int/2addr v0, v2

    .line 421
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->g:I

    add-int/2addr v0, v2

    .line 422
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->h:I

    add-int/2addr v0, v2

    .line 423
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->i:I

    add-int/2addr v0, v2

    .line 424
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->j:I

    add-int/2addr v0, v2

    .line 425
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->k:I

    add-int/2addr v0, v2

    .line 426
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/a/c;->l:J

    iget-wide v4, p0, Lcom/google/common/a/c;->l:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 427
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->m:I

    add-int/2addr v0, v2

    .line 428
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->n:I

    add-int/2addr v0, v2

    .line 429
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->o:I

    add-int/2addr v0, v2

    .line 430
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/common/a/c;->p:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 431
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/c;->q:I

    add-int/2addr v0, v2

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    :goto_1
    add-int/2addr v0, v1

    .line 433
    return v0

    :cond_1
    move v2, v0

    move v0, v1

    .line 414
    :goto_2
    iget-object v3, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 415
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_3
    add-int/2addr v2, v3

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/a/b;->hashCode()I

    move-result v2

    goto :goto_3

    .line 430
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/common/a/c;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 440
    if-eqz v3, :cond_0

    .line 441
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 439
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 446
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/common/a/c;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 448
    :cond_2
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 449
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/a/c;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 451
    :cond_3
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 452
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/a/c;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 454
    :cond_4
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 455
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/a/c;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 457
    :cond_5
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 458
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/a/c;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 460
    :cond_6
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 461
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/common/a/c;->l:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 463
    :cond_7
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 464
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/common/a/c;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 466
    :cond_8
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 467
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/common/a/c;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 469
    :cond_9
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 470
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/common/a/c;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 472
    :cond_a
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 473
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/common/a/c;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 475
    :cond_b
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 476
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/common/a/c;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 478
    :cond_c
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_d

    .line 479
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/common/a/c;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 481
    :cond_d
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    .line 482
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/google/common/a/c;->p:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 484
    :cond_e
    iget v0, p0, Lcom/google/common/a/c;->c:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 485
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/common/a/c;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 487
    :cond_f
    iget-object v0, p0, Lcom/google/common/a/c;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 489
    return-void
.end method
