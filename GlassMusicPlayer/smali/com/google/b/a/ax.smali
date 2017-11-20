.class public final Lcom/google/b/a/ax;
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
    .line 14139
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14140
    invoke-direct {p0}, Lcom/google/b/a/ax;->a()Lcom/google/b/a/ax;

    .line 14141
    return-void
.end method

.method private a()Lcom/google/b/a/ax;
    .locals 1

    .prologue
    .line 14144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/ax;->a:I

    .line 14145
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ax;->b:Ljava/lang/String;

    .line 14146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ax;->c:Ljava/lang/String;

    .line 14147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ax;->d:Ljava/lang/String;

    .line 14148
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ax;->cachedSize:I

    .line 14149
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ax;
    .locals 1

    .prologue
    .line 14190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14191
    sparse-switch v0, :sswitch_data_0

    .line 14195
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14196
    :sswitch_0
    return-object p0

    .line 14201
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ax;->b:Ljava/lang/String;

    .line 14202
    iget v0, p0, Lcom/google/b/a/ax;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ax;->a:I

    goto :goto_0

    .line 14206
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ax;->c:Ljava/lang/String;

    .line 14207
    iget v0, p0, Lcom/google/b/a/ax;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ax;->a:I

    goto :goto_0

    .line 14211
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ax;->d:Ljava/lang/String;

    .line 14212
    iget v0, p0, Lcom/google/b/a/ax;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ax;->a:I

    goto :goto_0

    .line 14191
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
    .line 14168
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 14169
    iget v1, p0, Lcom/google/b/a/ax;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14170
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ax;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14173
    :cond_0
    iget v1, p0, Lcom/google/b/a/ax;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 14174
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ax;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14177
    :cond_1
    iget v1, p0, Lcom/google/b/a/ax;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 14178
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ax;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14181
    :cond_2
    iput v0, p0, Lcom/google/b/a/ax;->cachedSize:I

    .line 14182
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 14054
    invoke-direct {p0, p1}, Lcom/google/b/a/ax;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ax;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 14155
    iget v0, p0, Lcom/google/b/a/ax;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 14156
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ax;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14158
    :cond_0
    iget v0, p0, Lcom/google/b/a/ax;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 14159
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ax;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14161
    :cond_1
    iget v0, p0, Lcom/google/b/a/ax;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 14162
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ax;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14164
    :cond_2
    return-void
.end method
