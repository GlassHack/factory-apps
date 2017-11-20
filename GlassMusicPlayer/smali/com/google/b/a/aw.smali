.class public final Lcom/google/b/a/aw;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/b/a/aw;


# instance fields
.field public a:Lcom/google/b/a/ba;

.field public b:Lcom/google/b/a/az;

.field public c:Lcom/google/b/a/ay;

.field public d:Lcom/google/b/a/ax;

.field public e:Lcom/google/b/a/bb;

.field private g:I

.field private h:[B

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14448
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14449
    invoke-direct {p0}, Lcom/google/b/a/aw;->b()Lcom/google/b/a/aw;

    .line 14450
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/aw;
    .locals 1

    .prologue
    .line 14531
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14532
    sparse-switch v0, :sswitch_data_0

    .line 14536
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14537
    :sswitch_0
    return-object p0

    .line 14542
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/aw;->h:[B

    .line 14543
    iget v0, p0, Lcom/google/b/a/aw;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/aw;->g:I

    goto :goto_0

    .line 14547
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/aw;->i:Ljava/lang/String;

    .line 14548
    iget v0, p0, Lcom/google/b/a/aw;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/aw;->g:I

    goto :goto_0

    .line 14552
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    if-nez v0, :cond_1

    .line 14553
    new-instance v0, Lcom/google/b/a/ba;

    invoke-direct {v0}, Lcom/google/b/a/ba;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    .line 14555
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14559
    :sswitch_4
    iget-object v0, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    if-nez v0, :cond_2

    .line 14560
    new-instance v0, Lcom/google/b/a/az;

    invoke-direct {v0}, Lcom/google/b/a/az;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    .line 14562
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14566
    :sswitch_5
    iget-object v0, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    if-nez v0, :cond_3

    .line 14567
    new-instance v0, Lcom/google/b/a/ay;

    invoke-direct {v0}, Lcom/google/b/a/ay;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    .line 14569
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14573
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    if-nez v0, :cond_4

    .line 14574
    new-instance v0, Lcom/google/b/a/ax;

    invoke-direct {v0}, Lcom/google/b/a/ax;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    .line 14576
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14580
    :sswitch_7
    iget-object v0, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    if-nez v0, :cond_5

    .line 14581
    new-instance v0, Lcom/google/b/a/bb;

    invoke-direct {v0}, Lcom/google/b/a/bb;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    .line 14583
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 14532
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
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/aw;
    .locals 2

    .prologue
    .line 14376
    sget-object v0, Lcom/google/b/a/aw;->f:[Lcom/google/b/a/aw;

    if-nez v0, :cond_1

    .line 14377
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 14379
    :try_start_0
    sget-object v0, Lcom/google/b/a/aw;->f:[Lcom/google/b/a/aw;

    if-nez v0, :cond_0

    .line 14380
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/aw;

    sput-object v0, Lcom/google/b/a/aw;->f:[Lcom/google/b/a/aw;

    .line 14382
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14384
    :cond_1
    sget-object v0, Lcom/google/b/a/aw;->f:[Lcom/google/b/a/aw;

    return-object v0

    .line 14382
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/aw;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/aw;->g:I

    .line 14454
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/b/a/aw;->h:[B

    .line 14455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/aw;->i:Ljava/lang/String;

    .line 14456
    iput-object v1, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    .line 14457
    iput-object v1, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    .line 14458
    iput-object v1, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    .line 14459
    iput-object v1, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    .line 14460
    iput-object v1, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    .line 14461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/aw;->cachedSize:I

    .line 14462
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 14493
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 14494
    iget v1, p0, Lcom/google/b/a/aw;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14495
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/aw;->h:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 14498
    :cond_0
    iget v1, p0, Lcom/google/b/a/aw;->g:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 14499
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/aw;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14502
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    if-eqz v1, :cond_2

    .line 14503
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14506
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    if-eqz v1, :cond_3

    .line 14507
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14510
    :cond_3
    iget-object v1, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    if-eqz v1, :cond_4

    .line 14511
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14514
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    if-eqz v1, :cond_5

    .line 14515
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14518
    :cond_5
    iget-object v1, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    if-eqz v1, :cond_6

    .line 14519
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14522
    :cond_6
    iput v0, p0, Lcom/google/b/a/aw;->cachedSize:I

    .line 14523
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 13191
    invoke-direct {p0, p1}, Lcom/google/b/a/aw;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 14468
    iget v0, p0, Lcom/google/b/a/aw;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 14469
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/aw;->h:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 14471
    :cond_0
    iget v0, p0, Lcom/google/b/a/aw;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 14472
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/aw;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14474
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    if-eqz v0, :cond_2

    .line 14475
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/aw;->a:Lcom/google/b/a/ba;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14477
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    if-eqz v0, :cond_3

    .line 14478
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/aw;->b:Lcom/google/b/a/az;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14480
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    if-eqz v0, :cond_4

    .line 14481
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/aw;->c:Lcom/google/b/a/ay;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14483
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    if-eqz v0, :cond_5

    .line 14484
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/aw;->d:Lcom/google/b/a/ax;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14486
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    if-eqz v0, :cond_6

    .line 14487
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/aw;->e:Lcom/google/b/a/bb;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14489
    :cond_6
    return-void
.end method
