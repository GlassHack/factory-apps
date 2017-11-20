.class public final Lcom/google/e/a/h;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/fr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 488
    invoke-direct {p0}, Lcom/google/e/a/h;->a()Lcom/google/e/a/h;

    .line 489
    return-void
.end method

.method private a()Lcom/google/e/a/h;
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    .line 493
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/h;->cachedSize:I

    .line 494
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/h;
    .locals 1

    .prologue
    .line 521
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 522
    sparse-switch v0, :sswitch_data_0

    .line 526
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    :sswitch_0
    return-object p0

    .line 532
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lcom/google/e/a/fr;

    invoke-direct {v0}, Lcom/google/e/a/fr;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 522
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
    .line 507
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 508
    iget-object v1, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_0
    iput v0, p0, Lcom/google/e/a/h;->cachedSize:I

    .line 513
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/google/e/a/h;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/h;->a:Lcom/google/e/a/fr;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 503
    :cond_0
    return-void
.end method
