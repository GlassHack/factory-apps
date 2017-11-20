.class public final Lcom/google/e/a/dl;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Lcom/google/e/a/dp;

.field public c:[I

.field public d:Lcom/google/e/a/dn;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 524
    invoke-direct {p0}, Lcom/google/e/a/dl;->a()Lcom/google/e/a/dl;

    .line 525
    return-void
.end method

.method private a()Lcom/google/e/a/dl;
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/dl;->e:I

    .line 529
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    .line 530
    invoke-static {}, Lcom/google/e/a/dp;->a()[Lcom/google/e/a/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    .line 531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/dl;->f:Ljava/lang/String;

    .line 532
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/e/a/dl;->c:[I

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/dl;->cachedSize:I

    .line 535
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dl;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 623
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 624
    sparse-switch v0, :sswitch_data_0

    .line 628
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :sswitch_0
    return-object p0

    .line 634
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 636
    iget-object v0, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 637
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 638
    if-eqz v0, :cond_1

    .line 639
    iget-object v3, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 642
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 643
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 646
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 647
    iput-object v2, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    goto :goto_0

    .line 651
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dl;->f:Ljava/lang/String;

    .line 652
    iget v0, p0, Lcom/google/e/a/dl;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/dl;->e:I

    goto :goto_0

    .line 656
    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 658
    iget-object v0, p0, Lcom/google/e/a/dl;->c:[I

    if-nez v0, :cond_5

    move v0, v1

    .line 659
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 660
    if-eqz v0, :cond_4

    .line 661
    iget-object v3, p0, Lcom/google/e/a/dl;->c:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 663
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 664
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 665
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 658
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/dl;->c:[I

    array-length v0, v0

    goto :goto_3

    .line 668
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 669
    iput-object v2, p0, Lcom/google/e/a/dl;->c:[I

    goto :goto_0

    .line 673
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 674
    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 677
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v0, v1

    .line 678
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_7

    .line 679
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 682
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 683
    iget-object v2, p0, Lcom/google/e/a/dl;->c:[I

    if-nez v2, :cond_9

    move v2, v1

    .line 684
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 685
    if-eqz v2, :cond_8

    .line 686
    iget-object v4, p0, Lcom/google/e/a/dl;->c:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    :cond_8
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_a

    .line 689
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v0, v2

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 683
    :cond_9
    iget-object v2, p0, Lcom/google/e/a/dl;->c:[I

    array-length v2, v2

    goto :goto_6

    .line 691
    :cond_a
    iput-object v0, p0, Lcom/google/e/a/dl;->c:[I

    .line 692
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 696
    :sswitch_5
    iget-object v0, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    if-nez v0, :cond_b

    .line 697
    new-instance v0, Lcom/google/e/a/dn;

    invoke-direct {v0}, Lcom/google/e/a/dn;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    .line 699
    :cond_b
    iget-object v0, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 703
    :sswitch_6
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 705
    iget-object v0, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    if-nez v0, :cond_d

    move v0, v1

    .line 706
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/dp;

    .line 708
    if-eqz v0, :cond_c

    .line 709
    iget-object v3, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    :cond_c
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    .line 712
    new-instance v3, Lcom/google/e/a/dp;

    invoke-direct {v3}, Lcom/google/e/a/dp;-><init>()V

    aput-object v3, v2, v0

    .line 713
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 714
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 705
    :cond_d
    iget-object v0, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    array-length v0, v0

    goto :goto_8

    .line 717
    :cond_e
    new-instance v3, Lcom/google/e/a/dp;

    invoke-direct {v3}, Lcom/google/e/a/dp;-><init>()V

    aput-object v3, v2, v0

    .line 718
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 719
    iput-object v2, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    goto/16 :goto_0

    .line 624
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 573
    iget-object v0, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    move v2, v1

    move v3, v1

    .line 576
    :goto_0
    iget-object v5, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 577
    iget-object v5, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 578
    if-eqz v5, :cond_0

    .line 579
    add-int/lit8 v3, v3, 0x1

    .line 580
    invoke-static {v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 576
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_1
    add-int v0, v4, v2

    .line 585
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 587
    :goto_1
    iget v2, p0, Lcom/google/e/a/dl;->e:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 588
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/e/a/dl;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/google/e/a/dl;->c:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/e/a/dl;->c:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 593
    :goto_2
    iget-object v4, p0, Lcom/google/e/a/dl;->c:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 594
    iget-object v4, p0, Lcom/google/e/a/dl;->c:[I

    aget v4, v4, v2

    .line 595
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 598
    :cond_3
    add-int/2addr v0, v3

    .line 599
    iget-object v2, p0, Lcom/google/e/a/dl;->c:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 601
    :cond_4
    iget-object v2, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    if-eqz v2, :cond_5

    .line 602
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 605
    :cond_5
    iget-object v2, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 606
    :goto_3
    iget-object v2, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 607
    iget-object v2, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    aget-object v2, v2, v1

    .line 608
    if-eqz v2, :cond_6

    .line 609
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 606
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 614
    :cond_7
    iput v0, p0, Lcom/google/e/a/dl;->cachedSize:I

    .line 615
    return v0

    :cond_8
    move v0, v4

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/google/e/a/dl;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-object v0, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 542
    :goto_0
    iget-object v2, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/google/e/a/dl;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 544
    if-eqz v2, :cond_0

    .line 545
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 542
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    iget v0, p0, Lcom/google/e/a/dl;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 550
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/e/a/dl;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/dl;->c:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/dl;->c:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 553
    :goto_1
    iget-object v2, p0, Lcom/google/e/a/dl;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 554
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/e/a/dl;->c:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    if-eqz v0, :cond_4

    .line 558
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/e/a/dl;->d:Lcom/google/e/a/dn;

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 560
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 561
    :goto_2
    iget-object v0, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 562
    iget-object v0, p0, Lcom/google/e/a/dl;->b:[Lcom/google/e/a/dp;

    aget-object v0, v0, v1

    .line 563
    if-eqz v0, :cond_5

    .line 564
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 561
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 568
    :cond_6
    return-void
.end method
