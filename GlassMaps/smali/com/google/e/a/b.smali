.class public final Lcom/google/e/a/b;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 253
    invoke-direct {p0}, Lcom/google/e/a/b;->a()Lcom/google/e/a/b;

    .line 254
    return-void
.end method

.method private a()Lcom/google/e/a/b;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/google/e/a/b;->a:I

    .line 258
    iput v0, p0, Lcom/google/e/a/b;->b:I

    .line 259
    iput v0, p0, Lcom/google/e/a/b;->c:I

    .line 260
    iput v0, p0, Lcom/google/e/a/b;->d:I

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/b;->cachedSize:I

    .line 262
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/b;
    .locals 1

    .prologue
    .line 303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 304
    sparse-switch v0, :sswitch_data_0

    .line 308
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :sswitch_0
    return-object p0

    .line 314
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/b;->b:I

    .line 315
    iget v0, p0, Lcom/google/e/a/b;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/b;->a:I

    goto :goto_0

    .line 319
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/b;->c:I

    .line 320
    iget v0, p0, Lcom/google/e/a/b;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/b;->a:I

    goto :goto_0

    .line 324
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/b;->d:I

    .line 325
    iget v0, p0, Lcom/google/e/a/b;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/b;->a:I

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 282
    iget v1, p0, Lcom/google/e/a/b;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/b;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_0
    iget v1, p0, Lcom/google/e/a/b;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/b;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_1
    iget v1, p0, Lcom/google/e/a/b;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 291
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/b;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_2
    iput v0, p0, Lcom/google/e/a/b;->cachedSize:I

    .line 295
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/e/a/b;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/google/e/a/b;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/b;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 271
    :cond_0
    iget v0, p0, Lcom/google/e/a/b;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 274
    :cond_1
    iget v0, p0, Lcom/google/e/a/b;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 275
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/b;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 277
    :cond_2
    return-void
.end method
