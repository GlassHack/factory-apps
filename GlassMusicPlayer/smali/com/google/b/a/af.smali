.class public final Lcom/google/b/a/af;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/ar;

.field public b:Lcom/google/b/a/ar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9530
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9531
    invoke-direct {p0}, Lcom/google/b/a/af;->a()Lcom/google/b/a/af;

    .line 9532
    return-void
.end method

.method private a()Lcom/google/b/a/af;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9535
    iput-object v0, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    .line 9536
    iput-object v0, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    .line 9537
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/af;->cachedSize:I

    .line 9538
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/af;
    .locals 1

    .prologue
    .line 9572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9573
    sparse-switch v0, :sswitch_data_0

    .line 9577
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9578
    :sswitch_0
    return-object p0

    .line 9583
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    if-nez v0, :cond_1

    .line 9584
    new-instance v0, Lcom/google/b/a/ar;

    invoke-direct {v0}, Lcom/google/b/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    .line 9586
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9590
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    if-nez v0, :cond_2

    .line 9591
    new-instance v0, Lcom/google/b/a/ar;

    invoke-direct {v0}, Lcom/google/b/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    .line 9593
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9573
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
    .line 9554
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9555
    iget-object v1, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    if-eqz v1, :cond_0

    .line 9556
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9559
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    if-eqz v1, :cond_1

    .line 9560
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9563
    :cond_1
    iput v0, p0, Lcom/google/b/a/af;->cachedSize:I

    .line 9564
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9507
    invoke-direct {p0, p1}, Lcom/google/b/a/af;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/af;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 9544
    iget-object v0, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    if-eqz v0, :cond_0

    .line 9545
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/af;->a:Lcom/google/b/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9547
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    if-eqz v0, :cond_1

    .line 9548
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/af;->b:Lcom/google/b/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9550
    :cond_1
    return-void
.end method
