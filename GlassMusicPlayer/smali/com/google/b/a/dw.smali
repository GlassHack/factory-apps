.class public final Lcom/google/b/a/dw;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/dx;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4345
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4346
    invoke-direct {p0}, Lcom/google/b/a/dw;->a()Lcom/google/b/a/dw;

    .line 4347
    return-void
.end method

.method private a()Lcom/google/b/a/dw;
    .locals 1

    .prologue
    .line 4350
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/dw;->b:I

    .line 4351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    .line 4352
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/dw;->c:Ljava/lang/String;

    .line 4353
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dw;->cachedSize:I

    .line 4354
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dw;
    .locals 1

    .prologue
    .line 4388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4389
    sparse-switch v0, :sswitch_data_0

    .line 4393
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4394
    :sswitch_0
    return-object p0

    .line 4399
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    if-nez v0, :cond_1

    .line 4400
    new-instance v0, Lcom/google/b/a/dx;

    invoke-direct {v0}, Lcom/google/b/a/dx;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    .line 4402
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4406
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/dw;->c:Ljava/lang/String;

    .line 4407
    iget v0, p0, Lcom/google/b/a/dw;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dw;->b:I

    goto :goto_0

    .line 4389
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 4370
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4371
    iget-object v1, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    if-eqz v1, :cond_0

    .line 4372
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4375
    :cond_0
    iget v1, p0, Lcom/google/b/a/dw;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 4376
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/dw;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4379
    :cond_1
    iput v0, p0, Lcom/google/b/a/dw;->cachedSize:I

    .line 4380
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4301
    invoke-direct {p0, p1}, Lcom/google/b/a/dw;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dw;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 4360
    iget-object v0, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    if-eqz v0, :cond_0

    .line 4361
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/dw;->a:Lcom/google/b/a/dx;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4363
    :cond_0
    iget v0, p0, Lcom/google/b/a/dw;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4364
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/dw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4366
    :cond_1
    return-void
.end method
