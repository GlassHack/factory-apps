.class public final Lcom/google/a/a/a/h;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 449
    invoke-direct {p0}, Lcom/google/a/a/a/h;->a()Lcom/google/a/a/a/h;

    .line 450
    return-void
.end method

.method private a()Lcom/google/a/a/a/h;
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/h;->a:I

    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/h;->b:Ljava/lang/String;

    .line 455
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/h;->cachedSize:I

    .line 456
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/h;
    .locals 1

    .prologue
    .line 483
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 484
    sparse-switch v0, :sswitch_data_0

    .line 488
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    :sswitch_0
    return-object p0

    .line 494
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/h;->b:Ljava/lang/String;

    .line 495
    iget v0, p0, Lcom/google/a/a/a/h;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/h;->a:I

    goto :goto_0

    .line 484
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
    .line 469
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 470
    iget v1, p0, Lcom/google/a/a/a/h;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 471
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/h;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_0
    iput v0, p0, Lcom/google/a/a/a/h;->cachedSize:I

    .line 475
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/google/a/a/a/h;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Lcom/google/a/a/a/h;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method
