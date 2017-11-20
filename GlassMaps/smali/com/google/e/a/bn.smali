.class public final Lcom/google/e/a/bn;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/b;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6062
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6063
    invoke-direct {p0}, Lcom/google/e/a/bn;->a()Lcom/google/e/a/bn;

    .line 6064
    return-void
.end method

.method private a()Lcom/google/e/a/bn;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6067
    iput v1, p0, Lcom/google/e/a/bn;->b:I

    .line 6068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bn;->c:Ljava/lang/String;

    .line 6069
    iput v1, p0, Lcom/google/e/a/bn;->d:I

    .line 6070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bn;->e:Ljava/lang/String;

    .line 6071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    .line 6072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/bn;->f:Ljava/lang/String;

    .line 6073
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/bn;->cachedSize:I

    .line 6074
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bn;
    .locals 1

    .prologue
    .line 6129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6130
    sparse-switch v0, :sswitch_data_0

    .line 6134
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6135
    :sswitch_0
    return-object p0

    .line 6140
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bn;->c:Ljava/lang/String;

    .line 6141
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/bn;->b:I

    goto :goto_0

    .line 6145
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/bn;->d:I

    .line 6146
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/bn;->b:I

    goto :goto_0

    .line 6150
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bn;->e:Ljava/lang/String;

    .line 6151
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/bn;->b:I

    goto :goto_0

    .line 6155
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    if-nez v0, :cond_1

    .line 6156
    new-instance v0, Lcom/google/e/a/b;

    invoke-direct {v0}, Lcom/google/e/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    .line 6158
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6162
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/bn;->f:Ljava/lang/String;

    .line 6163
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/bn;->b:I

    goto :goto_0

    .line 6130
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 6099
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6100
    iget v1, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6101
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/bn;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6104
    :cond_0
    iget v1, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6105
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/bn;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6108
    :cond_1
    iget v1, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6109
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/bn;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6112
    :cond_2
    iget-object v1, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    if-eqz v1, :cond_3

    .line 6113
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6116
    :cond_3
    iget v1, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 6117
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/bn;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6120
    :cond_4
    iput v0, p0, Lcom/google/e/a/bn;->cachedSize:I

    .line 6121
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 5955
    invoke-direct {p0, p1}, Lcom/google/e/a/bn;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 6080
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6081
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/bn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6083
    :cond_0
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6084
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/bn;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6086
    :cond_1
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6087
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/bn;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6089
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    if-eqz v0, :cond_3

    .line 6090
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/bn;->a:Lcom/google/e/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 6092
    :cond_3
    iget v0, p0, Lcom/google/e/a/bn;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 6093
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/bn;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6095
    :cond_4
    return-void
.end method
