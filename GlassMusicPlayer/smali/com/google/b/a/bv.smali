.class public final Lcom/google/b/a/bv;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/hg;

.field public b:Lcom/google/b/a/c;

.field public c:Lcom/google/b/a/b;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8252
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8253
    invoke-direct {p0}, Lcom/google/b/a/bv;->a()Lcom/google/b/a/bv;

    .line 8254
    return-void
.end method

.method private a()Lcom/google/b/a/bv;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8257
    iput v1, p0, Lcom/google/b/a/bv;->d:I

    .line 8258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/bv;->e:Ljava/lang/String;

    .line 8259
    iput-object v2, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    .line 8260
    iput-object v2, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    .line 8261
    iput-object v2, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    .line 8262
    iput v1, p0, Lcom/google/b/a/bv;->f:I

    .line 8263
    iput-boolean v1, p0, Lcom/google/b/a/bv;->g:Z

    .line 8264
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/bv;->cachedSize:I

    .line 8265
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bv;
    .locals 1

    .prologue
    .line 8327
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8328
    sparse-switch v0, :sswitch_data_0

    .line 8332
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8333
    :sswitch_0
    return-object p0

    .line 8338
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/bv;->e:Ljava/lang/String;

    .line 8339
    iget v0, p0, Lcom/google/b/a/bv;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/bv;->d:I

    goto :goto_0

    .line 8343
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    if-nez v0, :cond_1

    .line 8344
    new-instance v0, Lcom/google/b/a/hg;

    invoke-direct {v0}, Lcom/google/b/a/hg;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    .line 8346
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8350
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    if-nez v0, :cond_2

    .line 8351
    new-instance v0, Lcom/google/b/a/c;

    invoke-direct {v0}, Lcom/google/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    .line 8353
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8357
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    if-nez v0, :cond_3

    .line 8358
    new-instance v0, Lcom/google/b/a/b;

    invoke-direct {v0}, Lcom/google/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    .line 8360
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8364
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/bv;->f:I

    .line 8365
    iget v0, p0, Lcom/google/b/a/bv;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/bv;->d:I

    goto :goto_0

    .line 8369
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/bv;->g:Z

    .line 8370
    iget v0, p0, Lcom/google/b/a/bv;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/bv;->d:I

    goto :goto_0

    .line 8328
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8293
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8294
    iget v1, p0, Lcom/google/b/a/bv;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8295
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/bv;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8298
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    if-eqz v1, :cond_1

    .line 8299
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8302
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    if-eqz v1, :cond_2

    .line 8303
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8306
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    if-eqz v1, :cond_3

    .line 8307
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8310
    :cond_3
    iget v1, p0, Lcom/google/b/a/bv;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 8311
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/bv;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8314
    :cond_4
    iget v1, p0, Lcom/google/b/a/bv;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 8315
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/b/a/bv;->g:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8318
    :cond_5
    iput v0, p0, Lcom/google/b/a/bv;->cachedSize:I

    .line 8319
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8164
    invoke-direct {p0, p1}, Lcom/google/b/a/bv;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8271
    iget v0, p0, Lcom/google/b/a/bv;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8272
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/bv;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8274
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    if-eqz v0, :cond_1

    .line 8275
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/bv;->a:Lcom/google/b/a/hg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8277
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    if-eqz v0, :cond_2

    .line 8278
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/bv;->b:Lcom/google/b/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8280
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    if-eqz v0, :cond_3

    .line 8281
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/bv;->c:Lcom/google/b/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8283
    :cond_3
    iget v0, p0, Lcom/google/b/a/bv;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 8284
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/bv;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8286
    :cond_4
    iget v0, p0, Lcom/google/b/a/bv;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 8287
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/b/a/bv;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8289
    :cond_5
    return-void
.end method
