.class public final Lcom/google/e/a/cf;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/hg;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8070
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8071
    invoke-direct {p0}, Lcom/google/e/a/cf;->a()Lcom/google/e/a/cf;

    .line 8072
    return-void
.end method

.method private a()Lcom/google/e/a/cf;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8075
    iput v1, p0, Lcom/google/e/a/cf;->b:I

    .line 8076
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cf;->c:Ljava/lang/String;

    .line 8077
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    .line 8078
    iput v1, p0, Lcom/google/e/a/cf;->d:I

    .line 8079
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/cf;->cachedSize:I

    .line 8080
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cf;
    .locals 1

    .prologue
    .line 8121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8122
    sparse-switch v0, :sswitch_data_0

    .line 8126
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8127
    :sswitch_0
    return-object p0

    .line 8132
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cf;->c:Ljava/lang/String;

    .line 8133
    iget v0, p0, Lcom/google/e/a/cf;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/cf;->b:I

    goto :goto_0

    .line 8137
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    if-nez v0, :cond_1

    .line 8138
    new-instance v0, Lcom/google/e/a/hg;

    invoke-direct {v0}, Lcom/google/e/a/hg;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    .line 8140
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8144
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/cf;->d:I

    .line 8145
    iget v0, p0, Lcom/google/e/a/cf;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/cf;->b:I

    goto :goto_0

    .line 8122
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8099
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8100
    iget v1, p0, Lcom/google/e/a/cf;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8101
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/cf;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8104
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    if-eqz v1, :cond_1

    .line 8105
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8108
    :cond_1
    iget v1, p0, Lcom/google/e/a/cf;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 8109
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/cf;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8112
    :cond_2
    iput v0, p0, Lcom/google/e/a/cf;->cachedSize:I

    .line 8113
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8002
    invoke-direct {p0, p1}, Lcom/google/e/a/cf;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8086
    iget v0, p0, Lcom/google/e/a/cf;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8087
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/cf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8089
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    if-eqz v0, :cond_1

    .line 8090
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/cf;->a:Lcom/google/e/a/hg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8092
    :cond_1
    iget v0, p0, Lcom/google/e/a/cf;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 8093
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/cf;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8095
    :cond_2
    return-void
.end method
