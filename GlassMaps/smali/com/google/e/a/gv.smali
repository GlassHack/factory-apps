.class public final Lcom/google/e/a/gv;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/e/a/gv;


# instance fields
.field public a:[Lcom/google/e/a/cm;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:[B

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 617
    invoke-direct {p0}, Lcom/google/e/a/gv;->b()Lcom/google/e/a/gv;

    .line 618
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gv;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 725
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 726
    sparse-switch v0, :sswitch_data_0

    .line 730
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    :sswitch_0
    return-object p0

    .line 736
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gv;->d:Ljava/lang/String;

    .line 737
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto :goto_0

    .line 741
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gv;->h:Ljava/lang/String;

    .line 742
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto :goto_0

    .line 746
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 748
    iget-object v0, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    if-nez v0, :cond_2

    move v0, v1

    .line 749
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/cm;

    .line 751
    if-eqz v0, :cond_1

    .line 752
    iget-object v3, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 755
    new-instance v3, Lcom/google/e/a/cm;

    invoke-direct {v3}, Lcom/google/e/a/cm;-><init>()V

    aput-object v3, v2, v0

    .line 756
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 757
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    array-length v0, v0

    goto :goto_1

    .line 760
    :cond_3
    new-instance v3, Lcom/google/e/a/cm;

    invoke-direct {v3}, Lcom/google/e/a/cm;-><init>()V

    aput-object v3, v2, v0

    .line 761
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 762
    iput-object v2, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    goto :goto_0

    .line 766
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gv;->f:I

    .line 767
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto :goto_0

    .line 771
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gv;->g:I

    .line 772
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto :goto_0

    .line 776
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gv;->j:I

    .line 777
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto/16 :goto_0

    .line 781
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/gv;->k:I

    .line 782
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto/16 :goto_0

    .line 786
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gv;->e:[B

    .line 787
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto/16 :goto_0

    .line 791
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gv;->i:[B

    .line 792
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/gv;->c:I

    goto/16 :goto_0

    .line 726
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/gv;
    .locals 2

    .prologue
    .line 436
    sget-object v0, Lcom/google/e/a/gv;->b:[Lcom/google/e/a/gv;

    if-nez v0, :cond_1

    .line 437
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    sget-object v0, Lcom/google/e/a/gv;->b:[Lcom/google/e/a/gv;

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/gv;

    sput-object v0, Lcom/google/e/a/gv;->b:[Lcom/google/e/a/gv;

    .line 442
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_1
    sget-object v0, Lcom/google/e/a/gv;->b:[Lcom/google/e/a/gv;

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/gv;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 621
    iput v1, p0, Lcom/google/e/a/gv;->c:I

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/gv;->d:Ljava/lang/String;

    .line 623
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/e/a/gv;->e:[B

    .line 624
    iput v1, p0, Lcom/google/e/a/gv;->f:I

    .line 625
    iput v1, p0, Lcom/google/e/a/gv;->g:I

    .line 626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/gv;->h:Ljava/lang/String;

    .line 627
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/e/a/gv;->i:[B

    .line 628
    iput v1, p0, Lcom/google/e/a/gv;->j:I

    .line 629
    iput v1, p0, Lcom/google/e/a/gv;->k:I

    .line 630
    invoke-static {}, Lcom/google/e/a/cm;->a()[Lcom/google/e/a/cm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    .line 631
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/gv;->cachedSize:I

    .line 632
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 674
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 675
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 676
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/gv;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 679
    :cond_0
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 680
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/gv;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 684
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 685
    iget-object v2, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    aget-object v2, v2, v0

    .line 686
    if-eqz v2, :cond_2

    .line 687
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 684
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 692
    :cond_4
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 693
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/e/a/gv;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_5
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 697
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/e/a/gv;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 700
    :cond_6
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 701
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/e/a/gv;->j:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 704
    :cond_7
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 705
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/e/a/gv;->k:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 708
    :cond_8
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 709
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/e/a/gv;->e:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    :cond_9
    iget v1, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    .line 713
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/e/a/gv;->i:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 716
    :cond_a
    iput v0, p0, Lcom/google/e/a/gv;->cachedSize:I

    .line 717
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/e/a/gv;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/gv;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 638
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/gv;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 641
    :cond_0
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/gv;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 645
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/google/e/a/gv;->a:[Lcom/google/e/a/cm;

    aget-object v1, v1, v0

    .line 647
    if-eqz v1, :cond_2

    .line 648
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 645
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_3
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 653
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/e/a/gv;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 655
    :cond_4
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 656
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/e/a/gv;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 658
    :cond_5
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 659
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/e/a/gv;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 661
    :cond_6
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 662
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/e/a/gv;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 664
    :cond_7
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 665
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/e/a/gv;->e:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 667
    :cond_8
    iget v0, p0, Lcom/google/e/a/gv;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 668
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/e/a/gv;->i:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 670
    :cond_9
    return-void
.end method
