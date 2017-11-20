.class public final Lcom/google/b/a/q;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/cr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3801
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3802
    invoke-direct {p0}, Lcom/google/b/a/q;->a()Lcom/google/b/a/q;

    .line 3803
    return-void
.end method

.method private a()Lcom/google/b/a/q;
    .locals 1

    .prologue
    .line 3806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    .line 3807
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/q;->cachedSize:I

    .line 3808
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/q;
    .locals 1

    .prologue
    .line 3835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3836
    sparse-switch v0, :sswitch_data_0

    .line 3840
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3841
    :sswitch_0
    return-object p0

    .line 3846
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    if-nez v0, :cond_1

    .line 3847
    new-instance v0, Lcom/google/b/a/cr;

    invoke-direct {v0}, Lcom/google/b/a/cr;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    .line 3849
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3836
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
    .line 3821
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3822
    iget-object v1, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    if-eqz v1, :cond_0

    .line 3823
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3826
    :cond_0
    iput v0, p0, Lcom/google/b/a/q;->cachedSize:I

    .line 3827
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3781
    invoke-direct {p0, p1}, Lcom/google/b/a/q;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/q;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    if-eqz v0, :cond_0

    .line 3815
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/cr;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3817
    :cond_0
    return-void
.end method
