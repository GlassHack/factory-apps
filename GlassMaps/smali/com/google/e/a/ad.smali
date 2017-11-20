.class public final Lcom/google/e/a/ad;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/ar;

.field public b:Lcom/google/e/a/ar;

.field public c:Lcom/google/e/a/ed;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3657
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3658
    invoke-direct {p0}, Lcom/google/e/a/ad;->a()Lcom/google/e/a/ad;

    .line 3659
    return-void
.end method

.method private a()Lcom/google/e/a/ad;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3662
    iput v0, p0, Lcom/google/e/a/ad;->d:I

    .line 3663
    iput-object v1, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    .line 3664
    iput-object v1, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    .line 3665
    iput v0, p0, Lcom/google/e/a/ad;->e:I

    .line 3666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ad;->f:Ljava/lang/String;

    .line 3667
    iput-object v1, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    .line 3668
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ad;->cachedSize:I

    .line 3669
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ad;
    .locals 1

    .prologue
    .line 3724
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3725
    sparse-switch v0, :sswitch_data_0

    .line 3729
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3730
    :sswitch_0
    return-object p0

    .line 3735
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    if-nez v0, :cond_1

    .line 3736
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    .line 3738
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3742
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    if-nez v0, :cond_2

    .line 3743
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    .line 3745
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3749
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/ad;->e:I

    .line 3750
    iget v0, p0, Lcom/google/e/a/ad;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ad;->d:I

    goto :goto_0

    .line 3754
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ad;->f:Ljava/lang/String;

    .line 3755
    iget v0, p0, Lcom/google/e/a/ad;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ad;->d:I

    goto :goto_0

    .line 3759
    :sswitch_5
    iget-object v0, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    if-nez v0, :cond_3

    .line 3760
    new-instance v0, Lcom/google/e/a/ed;

    invoke-direct {v0}, Lcom/google/e/a/ed;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    .line 3762
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3725
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3694
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3695
    iget-object v1, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    if-eqz v1, :cond_0

    .line 3696
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3699
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    if-eqz v1, :cond_1

    .line 3700
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3703
    :cond_1
    iget v1, p0, Lcom/google/e/a/ad;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3704
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/ad;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3707
    :cond_2
    iget v1, p0, Lcom/google/e/a/ad;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 3708
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/ad;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3711
    :cond_3
    iget-object v1, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    if-eqz v1, :cond_4

    .line 3712
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3715
    :cond_4
    iput v0, p0, Lcom/google/e/a/ad;->cachedSize:I

    .line 3716
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3588
    invoke-direct {p0, p1}, Lcom/google/e/a/ad;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    if-eqz v0, :cond_0

    .line 3676
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/ad;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3678
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    if-eqz v0, :cond_1

    .line 3679
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/ad;->b:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3681
    :cond_1
    iget v0, p0, Lcom/google/e/a/ad;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3682
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/ad;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3684
    :cond_2
    iget v0, p0, Lcom/google/e/a/ad;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 3685
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/ad;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3687
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    if-eqz v0, :cond_4

    .line 3688
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/ad;->c:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3690
    :cond_4
    return-void
.end method
