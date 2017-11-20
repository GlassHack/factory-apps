.class public final Lcom/google/e/a/cs;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/e/a/cs;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 396
    invoke-direct {p0}, Lcom/google/e/a/cs;->b()Lcom/google/e/a/cs;

    .line 397
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cs;
    .locals 1

    .prologue
    .line 470
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 471
    sparse-switch v0, :sswitch_data_0

    .line 475
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    :sswitch_0
    return-object p0

    .line 481
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cs;->c:Ljava/lang/String;

    .line 482
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/cs;->b:I

    goto :goto_0

    .line 486
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cs;->d:Ljava/lang/String;

    .line 487
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/cs;->b:I

    goto :goto_0

    .line 491
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/cs;->e:Z

    .line 492
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/cs;->b:I

    goto :goto_0

    .line 496
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/cs;->f:Z

    .line 497
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/cs;->b:I

    goto :goto_0

    .line 501
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/cs;->g:I

    .line 502
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/cs;->b:I

    goto :goto_0

    .line 506
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cs;->h:Ljava/lang/String;

    .line 507
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/cs;->b:I

    goto :goto_0

    .line 471
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/cs;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/google/e/a/cs;->a:[Lcom/google/e/a/cs;

    if-nez v0, :cond_1

    .line 260
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    sget-object v0, Lcom/google/e/a/cs;->a:[Lcom/google/e/a/cs;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/cs;

    sput-object v0, Lcom/google/e/a/cs;->a:[Lcom/google/e/a/cs;

    .line 265
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    sget-object v0, Lcom/google/e/a/cs;->a:[Lcom/google/e/a/cs;

    return-object v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/cs;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iput v1, p0, Lcom/google/e/a/cs;->b:I

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cs;->c:Ljava/lang/String;

    .line 402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cs;->d:Ljava/lang/String;

    .line 403
    iput-boolean v1, p0, Lcom/google/e/a/cs;->e:Z

    .line 404
    iput-boolean v1, p0, Lcom/google/e/a/cs;->f:Z

    .line 405
    iput v1, p0, Lcom/google/e/a/cs;->g:I

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cs;->h:Ljava/lang/String;

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/cs;->cachedSize:I

    .line 408
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 437
    iget v1, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 438
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/cs;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_0
    iget v1, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 442
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/cs;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_1
    iget v1, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 446
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/e/a/cs;->e:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_2
    iget v1, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 450
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/e/a/cs;->f:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_3
    iget v1, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 454
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/e/a/cs;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    :cond_4
    iget v1, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 458
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/cs;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_5
    iput v0, p0, Lcom/google/e/a/cs;->cachedSize:I

    .line 462
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/e/a/cs;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/cs;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 417
    :cond_0
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 418
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/cs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 420
    :cond_1
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/e/a/cs;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 423
    :cond_2
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 424
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/e/a/cs;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 426
    :cond_3
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 427
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/e/a/cs;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 429
    :cond_4
    iget v0, p0, Lcom/google/e/a/cs;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 430
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/cs;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 432
    :cond_5
    return-void
.end method
