.class public final Lcom/google/b/a/ay;
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
    .line 13962
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13963
    invoke-direct {p0}, Lcom/google/b/a/ay;->a()Lcom/google/b/a/ay;

    .line 13964
    return-void
.end method

.method private a()Lcom/google/b/a/ay;
    .locals 1

    .prologue
    .line 13967
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/ay;->a:I

    .line 13968
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ay;->b:Ljava/lang/String;

    .line 13969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ay;->c:Ljava/lang/String;

    .line 13970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ay;->d:Ljava/lang/String;

    .line 13971
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ay;->cachedSize:I

    .line 13972
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ay;
    .locals 1

    .prologue
    .line 14013
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14014
    sparse-switch v0, :sswitch_data_0

    .line 14018
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14019
    :sswitch_0
    return-object p0

    .line 14024
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ay;->b:Ljava/lang/String;

    .line 14025
    iget v0, p0, Lcom/google/b/a/ay;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ay;->a:I

    goto :goto_0

    .line 14029
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ay;->c:Ljava/lang/String;

    .line 14030
    iget v0, p0, Lcom/google/b/a/ay;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ay;->a:I

    goto :goto_0

    .line 14034
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ay;->d:Ljava/lang/String;

    .line 14035
    iget v0, p0, Lcom/google/b/a/ay;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ay;->a:I

    goto :goto_0

    .line 14014
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
    .line 13991
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 13992
    iget v1, p0, Lcom/google/b/a/ay;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 13993
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ay;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13996
    :cond_0
    iget v1, p0, Lcom/google/b/a/ay;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 13997
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ay;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14000
    :cond_1
    iget v1, p0, Lcom/google/b/a/ay;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 14001
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ay;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14004
    :cond_2
    iput v0, p0, Lcom/google/b/a/ay;->cachedSize:I

    .line 14005
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 13877
    invoke-direct {p0, p1}, Lcom/google/b/a/ay;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 13978
    iget v0, p0, Lcom/google/b/a/ay;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 13979
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ay;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13981
    :cond_0
    iget v0, p0, Lcom/google/b/a/ay;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 13982
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ay;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13984
    :cond_1
    iget v0, p0, Lcom/google/b/a/ay;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 13985
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ay;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13987
    :cond_2
    return-void
.end method
