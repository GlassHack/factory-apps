.class public final Lcom/google/b/a/gy;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/cm;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 223
    invoke-direct {p0}, Lcom/google/b/a/gy;->a()Lcom/google/b/a/gy;

    .line 224
    return-void
.end method

.method private a()Lcom/google/b/a/gy;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iput v1, p0, Lcom/google/b/a/gy;->b:I

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gy;->c:Ljava/lang/String;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gy;->d:Ljava/lang/String;

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gy;->e:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/b/a/gy;->f:[B

    .line 232
    iput-boolean v1, p0, Lcom/google/b/a/gy;->g:Z

    .line 233
    iput-boolean v1, p0, Lcom/google/b/a/gy;->h:Z

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gy;->i:Ljava/lang/String;

    .line 235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gy;->j:Ljava/lang/String;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/gy;->k:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/google/b/a/cm;->a()[Lcom/google/b/a/cm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/gy;->cachedSize:I

    .line 239
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 340
    sparse-switch v0, :sswitch_data_0

    .line 344
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    :sswitch_0
    return-object p0

    .line 350
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->c:Ljava/lang/String;

    .line 351
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto :goto_0

    .line 355
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->e:Ljava/lang/String;

    .line 356
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto :goto_0

    .line 360
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 362
    iget-object v0, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    if-nez v0, :cond_2

    move v0, v1

    .line 363
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/cm;

    .line 365
    if-eqz v0, :cond_1

    .line 366
    iget-object v3, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 369
    new-instance v3, Lcom/google/b/a/cm;

    invoke-direct {v3}, Lcom/google/b/a/cm;-><init>()V

    aput-object v3, v2, v0

    .line 370
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 371
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    array-length v0, v0

    goto :goto_1

    .line 374
    :cond_3
    new-instance v3, Lcom/google/b/a/cm;

    invoke-direct {v3}, Lcom/google/b/a/cm;-><init>()V

    aput-object v3, v2, v0

    .line 375
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 376
    iput-object v2, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    goto :goto_0

    .line 380
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->i:Ljava/lang/String;

    .line 381
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto :goto_0

    .line 385
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->f:[B

    .line 386
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto :goto_0

    .line 390
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->d:Ljava/lang/String;

    .line 391
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto/16 :goto_0

    .line 395
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->j:Ljava/lang/String;

    .line 396
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto/16 :goto_0

    .line 400
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/gy;->k:Ljava/lang/String;

    .line 401
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto/16 :goto_0

    .line 405
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gy;->g:Z

    .line 406
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto/16 :goto_0

    .line 410
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/gy;->h:Z

    .line 411
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/gy;->b:I

    goto/16 :goto_0

    .line 340
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
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 284
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 285
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 286
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/gy;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_0
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 290
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/gy;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 294
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    aget-object v2, v2, v0

    .line 296
    if-eqz v2, :cond_2

    .line 297
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 294
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 302
    :cond_4
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 303
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/gy;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_5
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 307
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/gy;->f:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_6
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 311
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/gy;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_7
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 315
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/gy;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_8
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 319
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/gy;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_9
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 323
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/b/a/gy;->g:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_a
    iget v1, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    .line 327
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/b/a/gy;->h:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_b
    iput v0, p0, Lcom/google/b/a/gy;->cachedSize:I

    .line 331
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/gy;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/gy;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 245
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/gy;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 248
    :cond_0
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/gy;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 252
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/google/b/a/gy;->a:[Lcom/google/b/a/cm;

    aget-object v1, v1, v0

    .line 254
    if-eqz v1, :cond_2

    .line 255
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 252
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_3
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 260
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/gy;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 262
    :cond_4
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 263
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/gy;->f:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 265
    :cond_5
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 266
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/gy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 268
    :cond_6
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 269
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/gy;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_7
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 272
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/gy;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 274
    :cond_8
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 275
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/b/a/gy;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 277
    :cond_9
    iget v0, p0, Lcom/google/b/a/gy;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 278
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/b/a/gy;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 280
    :cond_a
    return-void
.end method
