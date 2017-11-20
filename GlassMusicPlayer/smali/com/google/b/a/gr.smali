.class public final Lcom/google/b/a/gr;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 624
    invoke-direct {p0}, Lcom/google/b/a/gr;->a()Lcom/google/b/a/gr;

    .line 625
    return-void
.end method

.method private a()Lcom/google/b/a/gr;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    iput v1, p0, Lcom/google/b/a/gr;->a:I

    .line 629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gr;->b:Ljava/lang/String;

    .line 630
    iput v1, p0, Lcom/google/b/a/gr;->c:I

    .line 631
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gr;->cachedSize:I

    .line 632
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gr;
    .locals 1

    .prologue
    .line 666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 667
    sparse-switch v0, :sswitch_data_0

    .line 671
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    :sswitch_0
    return-object p0

    .line 677
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gr;->b:Ljava/lang/String;

    .line 678
    iget v0, p0, Lcom/google/b/a/gr;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gr;->a:I

    goto :goto_0

    .line 682
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/gr;->c:I

    .line 683
    iget v0, p0, Lcom/google/b/a/gr;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/gr;->a:I

    goto :goto_0

    .line 667
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 648
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 649
    iget v1, p0, Lcom/google/b/a/gr;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 650
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/gr;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_0
    iget v1, p0, Lcom/google/b/a/gr;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 654
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/gr;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_1
    iput v0, p0, Lcom/google/b/a/gr;->cachedSize:I

    .line 658
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/google/b/a/gr;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gr;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 638
    iget v0, p0, Lcom/google/b/a/gr;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/gr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 641
    :cond_0
    iget v0, p0, Lcom/google/b/a/gr;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/gr;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 644
    :cond_1
    return-void
.end method
