.class public final Lcom/google/b/a/du;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8200
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8201
    invoke-direct {p0}, Lcom/google/b/a/du;->a()Lcom/google/b/a/du;

    .line 8202
    return-void
.end method

.method private a()Lcom/google/b/a/du;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8205
    iput v0, p0, Lcom/google/b/a/du;->a:I

    .line 8206
    iput v0, p0, Lcom/google/b/a/du;->b:I

    .line 8207
    iput v0, p0, Lcom/google/b/a/du;->c:I

    .line 8208
    iput v0, p0, Lcom/google/b/a/du;->d:I

    .line 8209
    iput v0, p0, Lcom/google/b/a/du;->e:I

    .line 8210
    iput v0, p0, Lcom/google/b/a/du;->f:I

    .line 8211
    iput v0, p0, Lcom/google/b/a/du;->g:I

    .line 8212
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/du;->cachedSize:I

    .line 8213
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/du;
    .locals 1

    .prologue
    .line 8275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8276
    sparse-switch v0, :sswitch_data_0

    .line 8280
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8281
    :sswitch_0
    return-object p0

    .line 8286
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/du;->b:I

    .line 8287
    iget v0, p0, Lcom/google/b/a/du;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/du;->a:I

    goto :goto_0

    .line 8291
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/du;->c:I

    .line 8292
    iget v0, p0, Lcom/google/b/a/du;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/du;->a:I

    goto :goto_0

    .line 8296
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/du;->d:I

    .line 8297
    iget v0, p0, Lcom/google/b/a/du;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/du;->a:I

    goto :goto_0

    .line 8301
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/du;->e:I

    .line 8302
    iget v0, p0, Lcom/google/b/a/du;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/du;->a:I

    goto :goto_0

    .line 8306
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/du;->f:I

    .line 8307
    iget v0, p0, Lcom/google/b/a/du;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/du;->a:I

    goto :goto_0

    .line 8311
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/du;->g:I

    .line 8312
    iget v0, p0, Lcom/google/b/a/du;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/du;->a:I

    goto :goto_0

    .line 8276
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8241
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8242
    iget v1, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8243
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/du;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8246
    :cond_0
    iget v1, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8247
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/du;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8250
    :cond_1
    iget v1, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8251
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/du;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8254
    :cond_2
    iget v1, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 8255
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/du;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8258
    :cond_3
    iget v1, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 8259
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/du;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8262
    :cond_4
    iget v1, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 8263
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/b/a/du;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8266
    :cond_5
    iput v0, p0, Lcom/google/b/a/du;->cachedSize:I

    .line 8267
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8067
    invoke-direct {p0, p1}, Lcom/google/b/a/du;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/du;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8219
    iget v0, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8220
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/du;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8222
    :cond_0
    iget v0, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8223
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/du;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8225
    :cond_1
    iget v0, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8226
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/du;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8228
    :cond_2
    iget v0, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8229
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/du;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8231
    :cond_3
    iget v0, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8232
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/du;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8234
    :cond_4
    iget v0, p0, Lcom/google/b/a/du;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8235
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/b/a/du;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8237
    :cond_5
    return-void
.end method
