.class public final Lcom/google/b/a/ga;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile g:[Lcom/google/b/a/ga;


# instance fields
.field public a:Lcom/google/b/a/gr;

.field public b:Lcom/google/b/a/ge;

.field public c:Lcom/google/b/a/gm;

.field public d:Lcom/google/b/a/gg;

.field public e:Lcom/google/b/a/go;

.field public f:Lcom/google/b/a/gh;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 351
    invoke-direct {p0}, Lcom/google/b/a/ga;->b()Lcom/google/b/a/ga;

    .line 352
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ga;
    .locals 1

    .prologue
    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 466
    sparse-switch v0, :sswitch_data_0

    .line 470
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :sswitch_0
    return-object p0

    .line 476
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ga;->i:I

    .line 477
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ga;->h:I

    goto :goto_0

    .line 481
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ga;->j:Ljava/lang/String;

    .line 482
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ga;->h:I

    goto :goto_0

    .line 486
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ga;->l:I

    .line 487
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ga;->h:I

    goto :goto_0

    .line 491
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ga;->k:Ljava/lang/String;

    .line 492
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ga;->h:I

    goto :goto_0

    .line 496
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/ga;->m:I

    .line 497
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ga;->h:I

    goto :goto_0

    .line 501
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    if-nez v0, :cond_1

    .line 502
    new-instance v0, Lcom/google/b/a/gr;

    invoke-direct {v0}, Lcom/google/b/a/gr;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 508
    :sswitch_7
    iget-object v0, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    if-nez v0, :cond_2

    .line 509
    new-instance v0, Lcom/google/b/a/ge;

    invoke-direct {v0}, Lcom/google/b/a/ge;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 515
    :sswitch_8
    iget-object v0, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    if-nez v0, :cond_3

    .line 516
    new-instance v0, Lcom/google/b/a/gm;

    invoke-direct {v0}, Lcom/google/b/a/gm;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 522
    :sswitch_9
    iget-object v0, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    if-nez v0, :cond_4

    .line 523
    new-instance v0, Lcom/google/b/a/gg;

    invoke-direct {v0}, Lcom/google/b/a/gg;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 529
    :sswitch_a
    iget-object v0, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    if-nez v0, :cond_5

    .line 530
    new-instance v0, Lcom/google/b/a/go;

    invoke-direct {v0}, Lcom/google/b/a/go;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    .line 532
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 536
    :sswitch_b
    iget-object v0, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    if-nez v0, :cond_6

    .line 537
    new-instance v0, Lcom/google/b/a/gh;

    invoke-direct {v0}, Lcom/google/b/a/gh;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x1f42 -> :sswitch_6
        0x1f4a -> :sswitch_7
        0x1f52 -> :sswitch_8
        0x1ce1f542 -> :sswitch_9
        0x1ce33f6a -> :sswitch_a
        0x1dc91f1a -> :sswitch_b
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ga;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/google/b/a/ga;->g:[Lcom/google/b/a/ga;

    if-nez v0, :cond_1

    .line 219
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-object v0, Lcom/google/b/a/ga;->g:[Lcom/google/b/a/ga;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ga;

    sput-object v0, Lcom/google/b/a/ga;->g:[Lcom/google/b/a/ga;

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    sget-object v0, Lcom/google/b/a/ga;->g:[Lcom/google/b/a/ga;

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ga;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    iput v2, p0, Lcom/google/b/a/ga;->h:I

    .line 356
    iput v2, p0, Lcom/google/b/a/ga;->i:I

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ga;->j:Ljava/lang/String;

    .line 358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ga;->k:Ljava/lang/String;

    .line 359
    iput v2, p0, Lcom/google/b/a/ga;->l:I

    .line 360
    iput v2, p0, Lcom/google/b/a/ga;->m:I

    .line 361
    iput-object v1, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    .line 362
    iput-object v1, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    .line 363
    iput-object v1, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    .line 364
    iput-object v1, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    .line 365
    iput-object v1, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    .line 366
    iput-object v1, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    .line 367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ga;->cachedSize:I

    .line 368
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 411
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 412
    iget v1, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 413
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/ga;->i:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_0
    iget v1, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 417
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ga;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_1
    iget v1, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 421
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/ga;->l:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_2
    iget v1, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 425
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ga;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_3
    iget v1, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 429
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/ga;->m:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    if-eqz v1, :cond_5

    .line 433
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_5
    iget-object v1, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    if-eqz v1, :cond_6

    .line 437
    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_6
    iget-object v1, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    if-eqz v1, :cond_7

    .line 441
    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_7
    iget-object v1, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    if-eqz v1, :cond_8

    .line 445
    const v1, 0x39c3ea8

    iget-object v2, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_8
    iget-object v1, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    if-eqz v1, :cond_9

    .line 449
    const v1, 0x39c67ed

    iget-object v2, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_9
    iget-object v1, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    if-eqz v1, :cond_a

    .line 453
    const v1, 0x3b923e3

    iget-object v2, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_a
    iput v0, p0, Lcom/google/b/a/ga;->cachedSize:I

    .line 457
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/google/b/a/ga;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 374
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/ga;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 377
    :cond_0
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ga;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 380
    :cond_1
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 381
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/ga;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 383
    :cond_2
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 384
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ga;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 386
    :cond_3
    iget v0, p0, Lcom/google/b/a/ga;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 387
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/ga;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    if-eqz v0, :cond_5

    .line 390
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/b/a/ga;->a:Lcom/google/b/a/gr;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 392
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    if-eqz v0, :cond_6

    .line 393
    const/16 v0, 0x3e9

    iget-object v1, p0, Lcom/google/b/a/ga;->b:Lcom/google/b/a/ge;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    if-eqz v0, :cond_7

    .line 396
    const/16 v0, 0x3ea

    iget-object v1, p0, Lcom/google/b/a/ga;->c:Lcom/google/b/a/gm;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 398
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    if-eqz v0, :cond_8

    .line 399
    const v0, 0x39c3ea8

    iget-object v1, p0, Lcom/google/b/a/ga;->d:Lcom/google/b/a/gg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    if-eqz v0, :cond_9

    .line 402
    const v0, 0x39c67ed

    iget-object v1, p0, Lcom/google/b/a/ga;->e:Lcom/google/b/a/go;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 404
    :cond_9
    iget-object v0, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    if-eqz v0, :cond_a

    .line 405
    const v0, 0x3b923e3

    iget-object v1, p0, Lcom/google/b/a/ga;->f:Lcom/google/b/a/gh;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 407
    :cond_a
    return-void
.end method
