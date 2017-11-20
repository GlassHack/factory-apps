.class public final Lcom/google/e/a/bh;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7732
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7733
    invoke-direct {p0}, Lcom/google/e/a/bh;->a()Lcom/google/e/a/bh;

    .line 7734
    return-void
.end method

.method private a()Lcom/google/e/a/bh;
    .locals 1

    .prologue
    .line 7737
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/bh;->a:I

    .line 7738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bh;->b:Ljava/lang/String;

    .line 7739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bh;->c:Ljava/lang/String;

    .line 7740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bh;->d:Ljava/lang/String;

    .line 7741
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bh;->cachedSize:I

    .line 7742
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bh;
    .locals 1

    .prologue
    .line 7783
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7784
    sparse-switch v0, :sswitch_data_0

    .line 7788
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7789
    :sswitch_0
    return-object p0

    .line 7794
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bh;->b:Ljava/lang/String;

    .line 7795
    iget v0, p0, Lcom/google/e/a/bh;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bh;->a:I

    goto :goto_0

    .line 7799
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bh;->c:Ljava/lang/String;

    .line 7800
    iget v0, p0, Lcom/google/e/a/bh;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bh;->a:I

    goto :goto_0

    .line 7804
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bh;->d:Ljava/lang/String;

    .line 7805
    iget v0, p0, Lcom/google/e/a/bh;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/bh;->a:I

    goto :goto_0

    .line 7784
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 7761
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7762
    iget v1, p0, Lcom/google/e/a/bh;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7763
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/bh;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7766
    :cond_0
    iget v1, p0, Lcom/google/e/a/bh;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7767
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/bh;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7770
    :cond_1
    iget v1, p0, Lcom/google/e/a/bh;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7771
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/bh;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7774
    :cond_2
    iput v0, p0, Lcom/google/e/a/bh;->cachedSize:I

    .line 7775
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7647
    invoke-direct {p0, p1}, Lcom/google/e/a/bh;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 7748
    iget v0, p0, Lcom/google/e/a/bh;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7749
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7751
    :cond_0
    iget v0, p0, Lcom/google/e/a/bh;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7752
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7754
    :cond_1
    iget v0, p0, Lcom/google/e/a/bh;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7755
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/bh;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7757
    :cond_2
    return-void
.end method
