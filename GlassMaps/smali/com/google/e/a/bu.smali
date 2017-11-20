.class public final Lcom/google/e/a/bu;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/hg;

.field public b:Lcom/google/e/a/hg;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7893
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7894
    invoke-direct {p0}, Lcom/google/e/a/bu;->a()Lcom/google/e/a/bu;

    .line 7895
    return-void
.end method

.method private a()Lcom/google/e/a/bu;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7898
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/bu;->c:I

    .line 7899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bu;->d:Ljava/lang/String;

    .line 7900
    iput-object v1, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    .line 7901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bu;->e:Ljava/lang/String;

    .line 7902
    iput-object v1, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    .line 7903
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bu;->cachedSize:I

    .line 7904
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bu;
    .locals 1

    .prologue
    .line 7952
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7953
    sparse-switch v0, :sswitch_data_0

    .line 7957
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7958
    :sswitch_0
    return-object p0

    .line 7963
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bu;->d:Ljava/lang/String;

    .line 7964
    iget v0, p0, Lcom/google/e/a/bu;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bu;->c:I

    goto :goto_0

    .line 7968
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bu;->e:Ljava/lang/String;

    .line 7969
    iget v0, p0, Lcom/google/e/a/bu;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bu;->c:I

    goto :goto_0

    .line 7973
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    if-nez v0, :cond_1

    .line 7974
    new-instance v0, Lcom/google/e/a/hg;

    invoke-direct {v0}, Lcom/google/e/a/hg;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    .line 7976
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7980
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    if-nez v0, :cond_2

    .line 7981
    new-instance v0, Lcom/google/e/a/hg;

    invoke-direct {v0}, Lcom/google/e/a/hg;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    .line 7983
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7953
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 7926
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7927
    iget v1, p0, Lcom/google/e/a/bu;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7928
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/bu;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7931
    :cond_0
    iget v1, p0, Lcom/google/e/a/bu;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7932
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/bu;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7935
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    if-eqz v1, :cond_2

    .line 7936
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7939
    :cond_2
    iget-object v1, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    if-eqz v1, :cond_3

    .line 7940
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7943
    :cond_3
    iput v0, p0, Lcom/google/e/a/bu;->cachedSize:I

    .line 7944
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7824
    invoke-direct {p0, p1}, Lcom/google/e/a/bu;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bu;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 7910
    iget v0, p0, Lcom/google/e/a/bu;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7911
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7913
    :cond_0
    iget v0, p0, Lcom/google/e/a/bu;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7914
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/bu;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7916
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    if-eqz v0, :cond_2

    .line 7917
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/bu;->a:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7919
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    if-eqz v0, :cond_3

    .line 7920
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/bu;->b:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7922
    :cond_3
    return-void
.end method
