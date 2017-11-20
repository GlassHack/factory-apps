.class public final Lcom/google/b/a/gn;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3550
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3551
    invoke-direct {p0}, Lcom/google/b/a/gn;->a()Lcom/google/b/a/gn;

    .line 3552
    return-void
.end method

.method private a()Lcom/google/b/a/gn;
    .locals 1

    .prologue
    .line 3555
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/gn;->b:I

    .line 3556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gn;->c:Ljava/lang/String;

    .line 3557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gn;->d:Ljava/lang/String;

    .line 3558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gn;->e:Ljava/lang/String;

    .line 3559
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gn;->f:Ljava/lang/String;

    .line 3560
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    .line 3561
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gn;->cachedSize:I

    .line 3562
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gn;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3632
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3633
    sparse-switch v0, :sswitch_data_0

    .line 3637
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3638
    :sswitch_0
    return-object p0

    .line 3643
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gn;->c:Ljava/lang/String;

    .line 3644
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gn;->b:I

    goto :goto_0

    .line 3648
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gn;->d:Ljava/lang/String;

    .line 3649
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/gn;->b:I

    goto :goto_0

    .line 3653
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gn;->e:Ljava/lang/String;

    .line 3654
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/gn;->b:I

    goto :goto_0

    .line 3658
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gn;->f:Ljava/lang/String;

    .line 3659
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/gn;->b:I

    goto :goto_0

    .line 3663
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3665
    iget-object v0, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 3666
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3667
    if-eqz v0, :cond_1

    .line 3668
    iget-object v3, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3670
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3671
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3672
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3670
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3665
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3675
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3676
    iput-object v2, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3633
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3592
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3593
    iget v2, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3594
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/b/a/gn;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3597
    :cond_0
    iget v2, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3598
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/b/a/gn;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3601
    :cond_1
    iget v2, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3602
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/b/a/gn;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3605
    :cond_2
    iget v2, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 3606
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/b/a/gn;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3609
    :cond_3
    iget-object v2, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 3612
    :goto_0
    iget-object v4, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 3613
    iget-object v4, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 3614
    if-eqz v4, :cond_4

    .line 3615
    add-int/lit8 v3, v3, 0x1

    .line 3616
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3612
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3620
    :cond_5
    add-int/2addr v0, v2

    .line 3621
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 3623
    :cond_6
    iput v0, p0, Lcom/google/b/a/gn;->cachedSize:I

    .line 3624
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3440
    invoke-direct {p0, p1}, Lcom/google/b/a/gn;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gn;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 3568
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3569
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/gn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3571
    :cond_0
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3572
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/gn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3574
    :cond_1
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3575
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/gn;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3577
    :cond_2
    iget v0, p0, Lcom/google/b/a/gn;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3578
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/gn;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3580
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 3581
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 3582
    iget-object v1, p0, Lcom/google/b/a/gn;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 3583
    if-eqz v1, :cond_4

    .line 3584
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3581
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3588
    :cond_5
    return-void
.end method
