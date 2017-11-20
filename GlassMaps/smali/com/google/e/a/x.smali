.class public final Lcom/google/e/a/x;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/aa;

.field public b:Lcom/google/e/a/ar;

.field public c:Lcom/google/e/a/ed;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4177
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4178
    invoke-direct {p0}, Lcom/google/e/a/x;->a()Lcom/google/e/a/x;

    .line 4179
    return-void
.end method

.method private a()Lcom/google/e/a/x;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4182
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/x;->d:I

    .line 4183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/x;->e:Ljava/lang/String;

    .line 4184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/x;->f:Ljava/lang/String;

    .line 4185
    iput-object v1, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    .line 4186
    iput-object v1, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    .line 4187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/x;->g:Ljava/lang/String;

    .line 4188
    iput-object v1, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    .line 4189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/x;->cachedSize:I

    .line 4190
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/x;
    .locals 1

    .prologue
    .line 4252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4253
    sparse-switch v0, :sswitch_data_0

    .line 4257
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4258
    :sswitch_0
    return-object p0

    .line 4263
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/x;->e:Ljava/lang/String;

    .line 4264
    iget v0, p0, Lcom/google/e/a/x;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/x;->d:I

    goto :goto_0

    .line 4268
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/x;->f:Ljava/lang/String;

    .line 4269
    iget v0, p0, Lcom/google/e/a/x;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/x;->d:I

    goto :goto_0

    .line 4273
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    if-nez v0, :cond_1

    .line 4274
    new-instance v0, Lcom/google/e/a/aa;

    invoke-direct {v0}, Lcom/google/e/a/aa;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    .line 4276
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4280
    :sswitch_4
    iget-object v0, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    if-nez v0, :cond_2

    .line 4281
    new-instance v0, Lcom/google/e/a/ar;

    invoke-direct {v0}, Lcom/google/e/a/ar;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    .line 4283
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4287
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/x;->g:Ljava/lang/String;

    .line 4288
    iget v0, p0, Lcom/google/e/a/x;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/x;->d:I

    goto :goto_0

    .line 4292
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    if-nez v0, :cond_3

    .line 4293
    new-instance v0, Lcom/google/e/a/ed;

    invoke-direct {v0}, Lcom/google/e/a/ed;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    .line 4295
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4253
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 4218
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4219
    iget v1, p0, Lcom/google/e/a/x;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4220
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/x;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4223
    :cond_0
    iget v1, p0, Lcom/google/e/a/x;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4224
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/x;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4227
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    if-eqz v1, :cond_2

    .line 4228
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4231
    :cond_2
    iget-object v1, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    if-eqz v1, :cond_3

    .line 4232
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4235
    :cond_3
    iget v1, p0, Lcom/google/e/a/x;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 4236
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/x;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4239
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    if-eqz v1, :cond_5

    .line 4240
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4243
    :cond_5
    iput v0, p0, Lcom/google/e/a/x;->cachedSize:I

    .line 4244
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4083
    invoke-direct {p0, p1}, Lcom/google/e/a/x;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 4196
    iget v0, p0, Lcom/google/e/a/x;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4197
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/x;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4199
    :cond_0
    iget v0, p0, Lcom/google/e/a/x;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4200
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/x;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4202
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    if-eqz v0, :cond_2

    .line 4203
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/x;->a:Lcom/google/e/a/aa;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4205
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    if-eqz v0, :cond_3

    .line 4206
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/x;->b:Lcom/google/e/a/ar;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4208
    :cond_3
    iget v0, p0, Lcom/google/e/a/x;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 4209
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/x;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4211
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    if-eqz v0, :cond_5

    .line 4212
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/x;->c:Lcom/google/e/a/ed;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4214
    :cond_5
    return-void
.end method
