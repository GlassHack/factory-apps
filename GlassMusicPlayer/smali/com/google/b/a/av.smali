.class public final Lcom/google/b/a/av;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3361
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3362
    invoke-direct {p0}, Lcom/google/b/a/av;->a()Lcom/google/b/a/av;

    .line 3363
    return-void
.end method

.method private a()Lcom/google/b/a/av;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3366
    iput v0, p0, Lcom/google/b/a/av;->a:I

    .line 3367
    iput v0, p0, Lcom/google/b/a/av;->b:I

    .line 3368
    iput v0, p0, Lcom/google/b/a/av;->c:I

    .line 3369
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/av;->cachedSize:I

    .line 3370
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/av;
    .locals 1

    .prologue
    .line 3404
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3405
    sparse-switch v0, :sswitch_data_0

    .line 3409
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3410
    :sswitch_0
    return-object p0

    .line 3415
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/av;->b:I

    .line 3416
    iget v0, p0, Lcom/google/b/a/av;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/av;->a:I

    goto :goto_0

    .line 3420
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/av;->c:I

    .line 3421
    iget v0, p0, Lcom/google/b/a/av;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/av;->a:I

    goto :goto_0

    .line 3405
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 3386
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3387
    iget v1, p0, Lcom/google/b/a/av;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3388
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/av;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3391
    :cond_0
    iget v1, p0, Lcom/google/b/a/av;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3392
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/av;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3395
    :cond_1
    iput v0, p0, Lcom/google/b/a/av;->cachedSize:I

    .line 3396
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3291
    invoke-direct {p0, p1}, Lcom/google/b/a/av;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3376
    iget v0, p0, Lcom/google/b/a/av;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3377
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/av;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3379
    :cond_0
    iget v0, p0, Lcom/google/b/a/av;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3380
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/av;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3382
    :cond_1
    return-void
.end method
