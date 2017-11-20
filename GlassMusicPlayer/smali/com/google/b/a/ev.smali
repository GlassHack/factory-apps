.class public final Lcom/google/b/a/ev;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11646
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11647
    invoke-direct {p0}, Lcom/google/b/a/ev;->a()Lcom/google/b/a/ev;

    .line 11648
    return-void
.end method

.method private a()Lcom/google/b/a/ev;
    .locals 1

    .prologue
    .line 11651
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    .line 11652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->b:Ljava/lang/String;

    .line 11653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->c:Ljava/lang/String;

    .line 11654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->d:Ljava/lang/String;

    .line 11655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->e:Ljava/lang/String;

    .line 11656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->f:Ljava/lang/String;

    .line 11657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->g:Ljava/lang/String;

    .line 11658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->h:Ljava/lang/String;

    .line 11659
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->i:Ljava/lang/String;

    .line 11660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ev;->j:Ljava/lang/String;

    .line 11661
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ev;->cachedSize:I

    .line 11662
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ev;
    .locals 1

    .prologue
    .line 11745
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11746
    sparse-switch v0, :sswitch_data_0

    .line 11750
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11751
    :sswitch_0
    return-object p0

    .line 11756
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->b:Ljava/lang/String;

    .line 11757
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11761
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->c:Ljava/lang/String;

    .line 11762
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11766
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->d:Ljava/lang/String;

    .line 11767
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11771
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->e:Ljava/lang/String;

    .line 11772
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11776
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->f:Ljava/lang/String;

    .line 11777
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11781
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->g:Ljava/lang/String;

    .line 11782
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11786
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->h:Ljava/lang/String;

    .line 11787
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11791
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->i:Ljava/lang/String;

    .line 11792
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto :goto_0

    .line 11796
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ev;->j:Ljava/lang/String;

    .line 11797
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/ev;->a:I

    goto/16 :goto_0

    .line 11746
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
    .locals 3

    .prologue
    .line 11699
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11700
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11701
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ev;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11704
    :cond_0
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11705
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ev;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11708
    :cond_1
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 11709
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ev;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11712
    :cond_2
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 11713
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ev;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11716
    :cond_3
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 11717
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/ev;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11720
    :cond_4
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 11721
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/ev;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11724
    :cond_5
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 11725
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/ev;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11728
    :cond_6
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 11729
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/ev;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11732
    :cond_7
    iget v1, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 11733
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/ev;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11736
    :cond_8
    iput v0, p0, Lcom/google/b/a/ev;->cachedSize:I

    .line 11737
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11429
    invoke-direct {p0, p1}, Lcom/google/b/a/ev;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ev;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 11668
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11669
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ev;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11671
    :cond_0
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11672
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ev;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11674
    :cond_1
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11675
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ev;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11677
    :cond_2
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 11678
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ev;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11680
    :cond_3
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 11681
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/ev;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11683
    :cond_4
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 11684
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/ev;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11686
    :cond_5
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 11687
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/ev;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11689
    :cond_6
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 11690
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/ev;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11692
    :cond_7
    iget v0, p0, Lcom/google/b/a/ev;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 11693
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/ev;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11695
    :cond_8
    return-void
.end method
