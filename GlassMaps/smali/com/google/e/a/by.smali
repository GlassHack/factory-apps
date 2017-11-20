.class public final Lcom/google/e/a/by;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/ar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9440
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9441
    invoke-direct {p0}, Lcom/google/e/a/by;->a()Lcom/google/e/a/by;

    .line 9442
    return-void
.end method

.method private a()Lcom/google/e/a/by;
    .locals 1

    .prologue
    .line 9445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    .line 9446
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/by;->cachedSize:I

    .line 9447
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/by;
    .locals 1

    .prologue
    .line 9474
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9475
    sparse-switch v0, :sswitch_data_0

    .line 9479
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9480
    :sswitch_0
    return-object p0

    .line 9485
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    if-nez v0, :cond_1

    .line 9486
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    .line 9488
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9475
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 9460
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9461
    iget-object v1, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    if-eqz v1, :cond_0

    .line 9462
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9465
    :cond_0
    iput v0, p0, Lcom/google/e/a/by;->cachedSize:I

    .line 9466
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9420
    invoke-direct {p0, p1}, Lcom/google/e/a/by;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 9453
    iget-object v0, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    if-eqz v0, :cond_0

    .line 9454
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/by;->a:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9456
    :cond_0
    return-void
.end method
