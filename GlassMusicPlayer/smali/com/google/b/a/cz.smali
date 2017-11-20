.class public final Lcom/google/b/a/cz;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/ch;

.field public b:Lcom/google/b/a/ch;

.field public c:Lcom/google/b/a/ci;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 192
    invoke-direct {p0}, Lcom/google/b/a/cz;->a()Lcom/google/b/a/cz;

    .line 193
    return-void
.end method

.method private a()Lcom/google/b/a/cz;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cz;->e:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cz;->f:Ljava/lang/String;

    .line 199
    iput-object v1, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cz;->g:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cz;->h:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/b/a/cz;->i:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cz;->j:Ljava/lang/String;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cz;->k:Ljava/lang/String;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/cz;->cachedSize:I

    .line 208
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cz;
    .locals 1

    .prologue
    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 299
    sparse-switch v0, :sswitch_data_0

    .line 303
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    :sswitch_0
    return-object p0

    .line 309
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cz;->e:Ljava/lang/String;

    .line 310
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    goto :goto_0

    .line 314
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cz;->f:Ljava/lang/String;

    .line 315
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    goto :goto_0

    .line 319
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    if-nez v0, :cond_1

    .line 320
    new-instance v0, Lcom/google/b/a/ch;

    invoke-direct {v0}, Lcom/google/b/a/ch;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 326
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cz;->g:Ljava/lang/String;

    .line 327
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    goto :goto_0

    .line 331
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    if-nez v0, :cond_2

    .line 332
    new-instance v0, Lcom/google/b/a/ch;

    invoke-direct {v0}, Lcom/google/b/a/ch;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 338
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cz;->h:Ljava/lang/String;

    .line 339
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    goto :goto_0

    .line 343
    :sswitch_7
    iget-object v0, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    if-nez v0, :cond_3

    .line 344
    new-instance v0, Lcom/google/b/a/ci;

    invoke-direct {v0}, Lcom/google/b/a/ci;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 350
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/cz;->i:I

    .line 351
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    goto/16 :goto_0

    .line 355
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cz;->j:Ljava/lang/String;

    .line 356
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    goto/16 :goto_0

    .line 360
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cz;->k:Ljava/lang/String;

    .line 361
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/cz;->d:I

    goto/16 :goto_0

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 249
    iget v1, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/cz;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_0
    iget v1, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 254
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/cz;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    if-eqz v1, :cond_2

    .line 258
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_2
    iget v1, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 262
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/cz;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    if-eqz v1, :cond_4

    .line 266
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_4
    iget v1, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 270
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/cz;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    if-eqz v1, :cond_6

    .line 274
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_6
    iget v1, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 278
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/b/a/cz;->i:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_7
    iget v1, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 282
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/cz;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_8
    iget v1, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    .line 286
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/b/a/cz;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_9
    iput v0, p0, Lcom/google/b/a/cz;->cachedSize:I

    .line 290
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/cz;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/cz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 217
    :cond_0
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/cz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    if-eqz v0, :cond_2

    .line 221
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/cz;->a:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 223
    :cond_2
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 224
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/cz;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    if-eqz v0, :cond_4

    .line 227
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/cz;->b:Lcom/google/b/a/ch;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 229
    :cond_4
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 230
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/cz;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    if-eqz v0, :cond_6

    .line 233
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/cz;->c:Lcom/google/b/a/ci;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 235
    :cond_6
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 236
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/b/a/cz;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 238
    :cond_7
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 239
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/cz;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 241
    :cond_8
    iget v0, p0, Lcom/google/b/a/cz;->d:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 242
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/b/a/cz;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 244
    :cond_9
    return-void
.end method
