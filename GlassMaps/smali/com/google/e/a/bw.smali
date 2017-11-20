.class public final Lcom/google/e/a/bw;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/cr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3888
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3889
    invoke-direct {p0}, Lcom/google/e/a/bw;->a()Lcom/google/e/a/bw;

    .line 3890
    return-void
.end method

.method private a()Lcom/google/e/a/bw;
    .locals 1

    .prologue
    .line 3893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    .line 3894
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bw;->cachedSize:I

    .line 3895
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bw;
    .locals 1

    .prologue
    .line 3922
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3923
    sparse-switch v0, :sswitch_data_0

    .line 3927
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3928
    :sswitch_0
    return-object p0

    .line 3933
    :sswitch_1
    iget-object v0, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    if-nez v0, :cond_1

    .line 3934
    new-instance v0, Lcom/google/e/a/cr;

    invoke-direct {v0}, Lcom/google/e/a/cr;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    .line 3936
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3923
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
    .line 3908
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3909
    iget-object v1, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    if-eqz v1, :cond_0

    .line 3910
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3913
    :cond_0
    iput v0, p0, Lcom/google/e/a/bw;->cachedSize:I

    .line 3914
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3868
    invoke-direct {p0, p1}, Lcom/google/e/a/bw;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    if-eqz v0, :cond_0

    .line 3902
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bw;->a:Lcom/google/e/a/cr;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3904
    :cond_0
    return-void
.end method
