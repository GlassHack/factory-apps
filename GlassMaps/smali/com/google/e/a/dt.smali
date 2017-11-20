.class public final Lcom/google/e/a/dt;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/eq;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10463
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10464
    invoke-direct {p0}, Lcom/google/e/a/dt;->a()Lcom/google/e/a/dt;

    .line 10465
    return-void
.end method

.method private a()Lcom/google/e/a/dt;
    .locals 1

    .prologue
    .line 10468
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/dt;->b:I

    .line 10469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/dt;->c:Ljava/lang/String;

    .line 10470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    .line 10471
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/dt;->cachedSize:I

    .line 10472
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dt;
    .locals 1

    .prologue
    .line 10506
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10507
    sparse-switch v0, :sswitch_data_0

    .line 10511
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10512
    :sswitch_0
    return-object p0

    .line 10517
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dt;->c:Ljava/lang/String;

    .line 10518
    iget v0, p0, Lcom/google/e/a/dt;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/dt;->b:I

    goto :goto_0

    .line 10522
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    if-nez v0, :cond_1

    .line 10523
    new-instance v0, Lcom/google/e/a/eq;

    invoke-direct {v0}, Lcom/google/e/a/eq;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    .line 10525
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10507
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
    .line 10488
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10489
    iget v1, p0, Lcom/google/e/a/dt;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10490
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/dt;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10493
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    if-eqz v1, :cond_1

    .line 10494
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10497
    :cond_1
    iput v0, p0, Lcom/google/e/a/dt;->cachedSize:I

    .line 10498
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10419
    invoke-direct {p0, p1}, Lcom/google/e/a/dt;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dt;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 10478
    iget v0, p0, Lcom/google/e/a/dt;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10479
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/dt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10481
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    if-eqz v0, :cond_1

    .line 10482
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/dt;->a:Lcom/google/e/a/eq;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10484
    :cond_1
    return-void
.end method
