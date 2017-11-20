.class public final Lcom/google/e/a/dx;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/ef;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4207
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4208
    invoke-direct {p0}, Lcom/google/e/a/dx;->a()Lcom/google/e/a/dx;

    .line 4209
    return-void
.end method

.method private a()Lcom/google/e/a/dx;
    .locals 1

    .prologue
    .line 4212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/dx;->b:I

    .line 4213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/dx;->c:Ljava/lang/String;

    .line 4214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/dx;->d:Ljava/lang/String;

    .line 4215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    .line 4216
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/dx;->cachedSize:I

    .line 4217
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dx;
    .locals 1

    .prologue
    .line 4258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4259
    sparse-switch v0, :sswitch_data_0

    .line 4263
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4264
    :sswitch_0
    return-object p0

    .line 4269
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dx;->c:Ljava/lang/String;

    .line 4270
    iget v0, p0, Lcom/google/e/a/dx;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/dx;->b:I

    goto :goto_0

    .line 4274
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dx;->d:Ljava/lang/String;

    .line 4275
    iget v0, p0, Lcom/google/e/a/dx;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/dx;->b:I

    goto :goto_0

    .line 4279
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    if-nez v0, :cond_1

    .line 4280
    new-instance v0, Lcom/google/e/a/ef;

    invoke-direct {v0}, Lcom/google/e/a/ef;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    .line 4282
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4259
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
    .line 4236
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4237
    iget v1, p0, Lcom/google/e/a/dx;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4238
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/dx;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4241
    :cond_0
    iget v1, p0, Lcom/google/e/a/dx;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4242
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/dx;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4245
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    if-eqz v1, :cond_2

    .line 4246
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4249
    :cond_2
    iput v0, p0, Lcom/google/e/a/dx;->cachedSize:I

    .line 4250
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4141
    invoke-direct {p0, p1}, Lcom/google/e/a/dx;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dx;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 4223
    iget v0, p0, Lcom/google/e/a/dx;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4224
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/dx;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4226
    :cond_0
    iget v0, p0, Lcom/google/e/a/dx;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4227
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/dx;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4229
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    if-eqz v0, :cond_2

    .line 4230
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/dx;->a:Lcom/google/e/a/ef;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4232
    :cond_2
    return-void
.end method
