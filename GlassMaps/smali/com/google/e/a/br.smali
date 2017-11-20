.class public final Lcom/google/e/a/br;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/e/a/aa;

.field public b:Lcom/google/e/a/z;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12386
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12387
    invoke-direct {p0}, Lcom/google/e/a/br;->a()Lcom/google/e/a/br;

    .line 12388
    return-void
.end method

.method private a()Lcom/google/e/a/br;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 12391
    iput v2, p0, Lcom/google/e/a/br;->c:I

    .line 12392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/br;->d:Ljava/lang/String;

    .line 12393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/br;->e:Ljava/lang/String;

    .line 12394
    iput v2, p0, Lcom/google/e/a/br;->f:I

    .line 12395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/br;->g:J

    .line 12396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/br;->h:Ljava/lang/String;

    .line 12397
    iput v2, p0, Lcom/google/e/a/br;->i:I

    .line 12398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/br;->j:Ljava/lang/String;

    .line 12399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/br;->k:Ljava/lang/String;

    .line 12400
    iput-object v3, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    .line 12401
    iput-object v3, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    .line 12402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/br;->l:Ljava/lang/String;

    .line 12403
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/br;->cachedSize:I

    .line 12404
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/br;
    .locals 2

    .prologue
    .line 12501
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12502
    sparse-switch v0, :sswitch_data_0

    .line 12506
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12507
    :sswitch_0
    return-object p0

    .line 12512
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/br;->d:Ljava/lang/String;

    .line 12513
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto :goto_0

    .line 12517
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/br;->f:I

    .line 12518
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto :goto_0

    .line 12522
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/br;->g:J

    .line 12523
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto :goto_0

    .line 12527
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/br;->h:Ljava/lang/String;

    .line 12528
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto :goto_0

    .line 12532
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/br;->i:I

    .line 12533
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto :goto_0

    .line 12537
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/br;->j:Ljava/lang/String;

    .line 12538
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto :goto_0

    .line 12542
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/br;->k:Ljava/lang/String;

    .line 12543
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto :goto_0

    .line 12547
    :sswitch_8
    iget-object v0, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    if-nez v0, :cond_1

    .line 12548
    new-instance v0, Lcom/google/e/a/aa;

    invoke-direct {v0}, Lcom/google/e/a/aa;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    .line 12550
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12554
    :sswitch_9
    iget-object v0, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    if-nez v0, :cond_2

    .line 12555
    new-instance v0, Lcom/google/e/a/z;

    invoke-direct {v0}, Lcom/google/e/a/z;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    .line 12557
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12561
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/br;->l:Ljava/lang/String;

    .line 12562
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto/16 :goto_0

    .line 12566
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/br;->e:Ljava/lang/String;

    .line 12567
    iget v0, p0, Lcom/google/e/a/br;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/br;->c:I

    goto/16 :goto_0

    .line 12502
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 12447
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 12448
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 12449
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/br;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12452
    :cond_0
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 12453
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/br;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12456
    :cond_1
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 12457
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/e/a/br;->g:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12460
    :cond_2
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 12461
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/br;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12464
    :cond_3
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 12465
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/e/a/br;->i:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12468
    :cond_4
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 12469
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/br;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12472
    :cond_5
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    .line 12473
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/e/a/br;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12476
    :cond_6
    iget-object v1, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    if-eqz v1, :cond_7

    .line 12477
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12480
    :cond_7
    iget-object v1, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    if-eqz v1, :cond_8

    .line 12481
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12484
    :cond_8
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 12485
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/e/a/br;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12488
    :cond_9
    iget v1, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 12489
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/e/a/br;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12492
    :cond_a
    iput v0, p0, Lcom/google/e/a/br;->cachedSize:I

    .line 12493
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 12168
    invoke-direct {p0, p1}, Lcom/google/e/a/br;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 12410
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12411
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/br;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12413
    :cond_0
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 12414
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/br;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12416
    :cond_1
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 12417
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/e/a/br;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 12419
    :cond_2
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 12420
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/br;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12422
    :cond_3
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 12423
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/e/a/br;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12425
    :cond_4
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 12426
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/br;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12428
    :cond_5
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 12429
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/br;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12431
    :cond_6
    iget-object v0, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    if-eqz v0, :cond_7

    .line 12432
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/e/a/br;->a:Lcom/google/e/a/aa;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12434
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    if-eqz v0, :cond_8

    .line 12435
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/e/a/br;->b:Lcom/google/e/a/z;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12437
    :cond_8
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 12438
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/e/a/br;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12440
    :cond_9
    iget v0, p0, Lcom/google/e/a/br;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 12441
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/e/a/br;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12443
    :cond_a
    return-void
.end method
