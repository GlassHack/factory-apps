.class public final Lcom/google/e/a/w;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11367
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11368
    invoke-direct {p0}, Lcom/google/e/a/w;->a()Lcom/google/e/a/w;

    .line 11369
    return-void
.end method

.method private a()Lcom/google/e/a/w;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11372
    iput v0, p0, Lcom/google/e/a/w;->a:I

    .line 11373
    iput v0, p0, Lcom/google/e/a/w;->b:I

    .line 11374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/w;->c:Ljava/lang/String;

    .line 11375
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/w;->cachedSize:I

    .line 11376
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/w;
    .locals 1

    .prologue
    .line 11410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11411
    sparse-switch v0, :sswitch_data_0

    .line 11415
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11416
    :sswitch_0
    return-object p0

    .line 11421
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/w;->b:I

    .line 11422
    iget v0, p0, Lcom/google/e/a/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/w;->a:I

    goto :goto_0

    .line 11426
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/w;->c:Ljava/lang/String;

    .line 11427
    iget v0, p0, Lcom/google/e/a/w;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/w;->a:I

    goto :goto_0

    .line 11411
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 11392
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11393
    iget v1, p0, Lcom/google/e/a/w;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11394
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/w;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11397
    :cond_0
    iget v1, p0, Lcom/google/e/a/w;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11398
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/w;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11401
    :cond_1
    iput v0, p0, Lcom/google/e/a/w;->cachedSize:I

    .line 11402
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11307
    invoke-direct {p0, p1}, Lcom/google/e/a/w;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 11382
    iget v0, p0, Lcom/google/e/a/w;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11383
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/w;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11385
    :cond_0
    iget v0, p0, Lcom/google/e/a/w;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11386
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/w;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11388
    :cond_1
    return-void
.end method
