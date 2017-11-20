.class public final Lcom/google/b/a/gf;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/gq;

.field public b:[Lcom/google/b/a/gq;

.field public c:[Lcom/google/b/a/gq;

.field public d:[Lcom/google/b/a/gq;

.field public e:[Lcom/google/b/a/gq;

.field public f:[Lcom/google/b/a/gq;

.field public g:[Lcom/google/b/a/gq;

.field public h:[Lcom/google/b/a/gq;

.field public i:[Lcom/google/b/a/gq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4420
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4421
    invoke-direct {p0}, Lcom/google/b/a/gf;->a()Lcom/google/b/a/gf;

    .line 4422
    return-void
.end method

.method private a()Lcom/google/b/a/gf;
    .locals 1

    .prologue
    .line 4425
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    .line 4426
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    .line 4427
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    .line 4428
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    .line 4429
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    .line 4430
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    .line 4431
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    .line 4432
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    .line 4433
    invoke-static {}, Lcom/google/b/a/gq;->a()[Lcom/google/b/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    .line 4434
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gf;->cachedSize:I

    .line 4435
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gf;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4608
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4609
    sparse-switch v0, :sswitch_data_0

    .line 4613
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4614
    :sswitch_0
    return-object p0

    .line 4619
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4621
    iget-object v0, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    if-nez v0, :cond_2

    move v0, v1

    .line 4622
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4624
    if-eqz v0, :cond_1

    .line 4625
    iget-object v3, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4627
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4628
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4629
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4630
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4627
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4621
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_1

    .line 4633
    :cond_3
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4634
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4635
    iput-object v2, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    goto :goto_0

    .line 4639
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4641
    iget-object v0, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    if-nez v0, :cond_5

    move v0, v1

    .line 4642
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4644
    if-eqz v0, :cond_4

    .line 4645
    iget-object v3, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4647
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 4648
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4649
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4650
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4647
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4641
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_3

    .line 4653
    :cond_6
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4654
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4655
    iput-object v2, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4659
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4661
    iget-object v0, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    if-nez v0, :cond_8

    move v0, v1

    .line 4662
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4664
    if-eqz v0, :cond_7

    .line 4665
    iget-object v3, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4667
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 4668
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4669
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4670
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4667
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4661
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_5

    .line 4673
    :cond_9
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4674
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4675
    iput-object v2, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4679
    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4681
    iget-object v0, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    if-nez v0, :cond_b

    move v0, v1

    .line 4682
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4684
    if-eqz v0, :cond_a

    .line 4685
    iget-object v3, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4687
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 4688
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4689
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4690
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4687
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4681
    :cond_b
    iget-object v0, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_7

    .line 4693
    :cond_c
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4694
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4695
    iput-object v2, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4699
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4701
    iget-object v0, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    if-nez v0, :cond_e

    move v0, v1

    .line 4702
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4704
    if-eqz v0, :cond_d

    .line 4705
    iget-object v3, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4707
    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    .line 4708
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4709
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4710
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4707
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4701
    :cond_e
    iget-object v0, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_9

    .line 4713
    :cond_f
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4714
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4715
    iput-object v2, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4719
    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4721
    iget-object v0, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    if-nez v0, :cond_11

    move v0, v1

    .line 4722
    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4724
    if-eqz v0, :cond_10

    .line 4725
    iget-object v3, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4727
    :cond_10
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_12

    .line 4728
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4729
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4730
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4727
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4721
    :cond_11
    iget-object v0, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_b

    .line 4733
    :cond_12
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4734
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4735
    iput-object v2, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4739
    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4741
    iget-object v0, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    if-nez v0, :cond_14

    move v0, v1

    .line 4742
    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4744
    if-eqz v0, :cond_13

    .line 4745
    iget-object v3, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4747
    :cond_13
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_15

    .line 4748
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4749
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4750
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4747
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 4741
    :cond_14
    iget-object v0, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_d

    .line 4753
    :cond_15
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4754
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4755
    iput-object v2, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4759
    :sswitch_8
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4761
    iget-object v0, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    if-nez v0, :cond_17

    move v0, v1

    .line 4762
    :goto_f
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4764
    if-eqz v0, :cond_16

    .line 4765
    iget-object v3, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4767
    :cond_16
    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_18

    .line 4768
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4769
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4770
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4767
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4761
    :cond_17
    iget-object v0, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_f

    .line 4773
    :cond_18
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4774
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4775
    iput-object v2, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4779
    :sswitch_9
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 4781
    iget-object v0, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    if-nez v0, :cond_1a

    move v0, v1

    .line 4782
    :goto_11
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/gq;

    .line 4784
    if-eqz v0, :cond_19

    .line 4785
    iget-object v3, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4787
    :cond_19
    :goto_12
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1b

    .line 4788
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4789
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4790
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4787
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 4781
    :cond_1a
    iget-object v0, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    array-length v0, v0

    goto :goto_11

    .line 4793
    :cond_1b
    new-instance v3, Lcom/google/b/a/gq;

    invoke-direct {v3}, Lcom/google/b/a/gq;-><init>()V

    aput-object v3, v2, v0

    .line 4794
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4795
    iput-object v2, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    goto/16 :goto_0

    .line 4609
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4517
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4518
    iget-object v2, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 4519
    :goto_0
    iget-object v3, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 4520
    iget-object v3, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4521
    if-eqz v3, :cond_0

    .line 4522
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4519
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4527
    :cond_2
    iget-object v2, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 4528
    :goto_1
    iget-object v3, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 4529
    iget-object v3, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4530
    if-eqz v3, :cond_3

    .line 4531
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4528
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 4536
    :cond_5
    iget-object v2, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 4537
    :goto_2
    iget-object v3, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 4538
    iget-object v3, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4539
    if-eqz v3, :cond_6

    .line 4540
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4537
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    .line 4545
    :cond_8
    iget-object v2, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    .line 4546
    :goto_3
    iget-object v3, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 4547
    iget-object v3, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4548
    if-eqz v3, :cond_9

    .line 4549
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4546
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v0, v2

    .line 4554
    :cond_b
    iget-object v2, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_e

    move v2, v0

    move v0, v1

    .line 4555
    :goto_4
    iget-object v3, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    .line 4556
    iget-object v3, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4557
    if-eqz v3, :cond_c

    .line 4558
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4555
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    move v0, v2

    .line 4563
    :cond_e
    iget-object v2, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_11

    move v2, v0

    move v0, v1

    .line 4564
    :goto_5
    iget-object v3, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 4565
    iget-object v3, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4566
    if-eqz v3, :cond_f

    .line 4567
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4564
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    move v0, v2

    .line 4572
    :cond_11
    iget-object v2, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v0

    move v0, v1

    .line 4573
    :goto_6
    iget-object v3, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_13

    .line 4574
    iget-object v3, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4575
    if-eqz v3, :cond_12

    .line 4576
    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4573
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    move v0, v2

    .line 4581
    :cond_14
    iget-object v2, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_17

    move v2, v0

    move v0, v1

    .line 4582
    :goto_7
    iget-object v3, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    array-length v3, v3

    if-ge v0, v3, :cond_16

    .line 4583
    iget-object v3, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    aget-object v3, v3, v0

    .line 4584
    if-eqz v3, :cond_15

    .line 4585
    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4582
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    move v0, v2

    .line 4590
    :cond_17
    iget-object v2, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-lez v2, :cond_19

    .line 4591
    :goto_8
    iget-object v2, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 4592
    iget-object v2, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    aget-object v2, v2, v1

    .line 4593
    if-eqz v2, :cond_18

    .line 4594
    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4591
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4599
    :cond_19
    iput v0, p0, Lcom/google/b/a/gf;->cachedSize:I

    .line 4600
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4376
    invoke-direct {p0, p1}, Lcom/google/b/a/gf;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4441
    iget-object v0, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 4442
    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 4443
    iget-object v2, p0, Lcom/google/b/a/gf;->a:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4444
    if-eqz v2, :cond_0

    .line 4445
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4442
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4449
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 4450
    :goto_1
    iget-object v2, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 4451
    iget-object v2, p0, Lcom/google/b/a/gf;->b:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4452
    if-eqz v2, :cond_2

    .line 4453
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4450
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4457
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 4458
    :goto_2
    iget-object v2, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 4459
    iget-object v2, p0, Lcom/google/b/a/gf;->c:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4460
    if-eqz v2, :cond_4

    .line 4461
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4458
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4465
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 4466
    :goto_3
    iget-object v2, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 4467
    iget-object v2, p0, Lcom/google/b/a/gf;->d:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4468
    if-eqz v2, :cond_6

    .line 4469
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4466
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4473
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    .line 4474
    :goto_4
    iget-object v2, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 4475
    iget-object v2, p0, Lcom/google/b/a/gf;->e:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4476
    if-eqz v2, :cond_8

    .line 4477
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4474
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4481
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 4482
    :goto_5
    iget-object v2, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 4483
    iget-object v2, p0, Lcom/google/b/a/gf;->f:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4484
    if-eqz v2, :cond_a

    .line 4485
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4482
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4489
    :cond_b
    iget-object v0, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 4490
    :goto_6
    iget-object v2, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 4491
    iget-object v2, p0, Lcom/google/b/a/gf;->g:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4492
    if-eqz v2, :cond_c

    .line 4493
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4490
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4497
    :cond_d
    iget-object v0, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_f

    move v0, v1

    .line 4498
    :goto_7
    iget-object v2, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    array-length v2, v2

    if-ge v0, v2, :cond_f

    .line 4499
    iget-object v2, p0, Lcom/google/b/a/gf;->h:[Lcom/google/b/a/gq;

    aget-object v2, v2, v0

    .line 4500
    if-eqz v2, :cond_e

    .line 4501
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4498
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4505
    :cond_f
    iget-object v0, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-lez v0, :cond_11

    .line 4506
    :goto_8
    iget-object v0, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    array-length v0, v0

    if-ge v1, v0, :cond_11

    .line 4507
    iget-object v0, p0, Lcom/google/b/a/gf;->i:[Lcom/google/b/a/gq;

    aget-object v0, v0, v1

    .line 4508
    if-eqz v0, :cond_10

    .line 4509
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4506
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4513
    :cond_11
    return-void
.end method
