.class public final Lcom/google/e/a/ch;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:D

.field private c:D

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 309
    invoke-direct {p0}, Lcom/google/e/a/ch;->a()Lcom/google/e/a/ch;

    .line 310
    return-void
.end method

.method private a()Lcom/google/e/a/ch;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/ch;->a:I

    .line 314
    iput-wide v1, p0, Lcom/google/e/a/ch;->b:D

    .line 315
    iput-wide v1, p0, Lcom/google/e/a/ch;->c:D

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ch;->d:Ljava/lang/String;

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ch;->e:Ljava/lang/String;

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/ch;->f:Ljava/lang/String;

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ch;->cachedSize:I

    .line 320
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ch;
    .locals 2

    .prologue
    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 376
    sparse-switch v0, :sswitch_data_0

    .line 380
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :sswitch_0
    return-object p0

    .line 386
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/ch;->b:D

    .line 387
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ch;->a:I

    goto :goto_0

    .line 391
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/ch;->c:D

    .line 392
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ch;->a:I

    goto :goto_0

    .line 396
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ch;->d:Ljava/lang/String;

    .line 397
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/ch;->a:I

    goto :goto_0

    .line 401
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ch;->e:Ljava/lang/String;

    .line 402
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/ch;->a:I

    goto :goto_0

    .line 406
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/ch;->f:Ljava/lang/String;

    .line 407
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/ch;->a:I

    goto :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 345
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 346
    iget v1, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 347
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/e/a/ch;->b:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    :cond_0
    iget v1, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 351
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/e/a/ch;->c:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_1
    iget v1, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 355
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/ch;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_2
    iget v1, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 359
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/ch;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_3
    iget v1, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 363
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/ch;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_4
    iput v0, p0, Lcom/google/e/a/ch;->cachedSize:I

    .line 367
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/google/e/a/ch;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ch;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 326
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/e/a/ch;->b:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 329
    :cond_0
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 330
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/e/a/ch;->c:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 332
    :cond_1
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 333
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/ch;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 335
    :cond_2
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 336
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/ch;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 338
    :cond_3
    iget v0, p0, Lcom/google/e/a/ch;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 339
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/ch;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 341
    :cond_4
    return-void
.end method
