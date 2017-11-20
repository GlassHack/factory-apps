.class public final Lcom/google/b/a/ba;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13567
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13568
    invoke-direct {p0}, Lcom/google/b/a/ba;->a()Lcom/google/b/a/ba;

    .line 13569
    return-void
.end method

.method private a()Lcom/google/b/a/ba;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13572
    iput v1, p0, Lcom/google/b/a/ba;->a:I

    .line 13573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ba;->b:Ljava/lang/String;

    .line 13574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ba;->c:Ljava/lang/String;

    .line 13575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ba;->d:Ljava/lang/String;

    .line 13576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ba;->e:Ljava/lang/String;

    .line 13577
    iput-boolean v1, p0, Lcom/google/b/a/ba;->f:Z

    .line 13578
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ba;->cachedSize:I

    .line 13579
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ba;
    .locals 1

    .prologue
    .line 13634
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13635
    sparse-switch v0, :sswitch_data_0

    .line 13639
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13640
    :sswitch_0
    return-object p0

    .line 13645
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ba;->b:Ljava/lang/String;

    .line 13646
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ba;->a:I

    goto :goto_0

    .line 13650
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ba;->c:Ljava/lang/String;

    .line 13651
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ba;->a:I

    goto :goto_0

    .line 13655
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ba;->d:Ljava/lang/String;

    .line 13656
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ba;->a:I

    goto :goto_0

    .line 13660
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ba;->e:Ljava/lang/String;

    .line 13661
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ba;->a:I

    goto :goto_0

    .line 13665
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/ba;->f:Z

    .line 13666
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ba;->a:I

    goto :goto_0

    .line 13635
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 13604
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13605
    iget v1, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13606
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ba;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13609
    :cond_0
    iget v1, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13610
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ba;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13613
    :cond_1
    iget v1, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 13614
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ba;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13617
    :cond_2
    iget v1, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 13618
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ba;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13621
    :cond_3
    iget v1, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 13622
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/b/a/ba;->f:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13625
    :cond_4
    iput v0, p0, Lcom/google/b/a/ba;->cachedSize:I

    .line 13626
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 13441
    invoke-direct {p0, p1}, Lcom/google/b/a/ba;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ba;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 13585
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13586
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ba;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13588
    :cond_0
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13589
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ba;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13591
    :cond_1
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 13592
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ba;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13594
    :cond_2
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 13595
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ba;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13597
    :cond_3
    iget v0, p0, Lcom/google/b/a/ba;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 13598
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/b/a/ba;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 13600
    :cond_4
    return-void
.end method
