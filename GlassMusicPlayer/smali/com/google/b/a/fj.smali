.class public final Lcom/google/b/a/fj;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/fj;


# instance fields
.field public a:Lcom/google/b/a/fg;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 559
    invoke-direct {p0}, Lcom/google/b/a/fj;->b()Lcom/google/b/a/fj;

    .line 560
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fj;
    .locals 1

    .prologue
    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 634
    sparse-switch v0, :sswitch_data_0

    .line 638
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    :sswitch_0
    return-object p0

    .line 644
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    if-nez v0, :cond_1

    .line 645
    new-instance v0, Lcom/google/b/a/fg;

    invoke-direct {v0}, Lcom/google/b/a/fg;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 651
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fj;->d:I

    .line 652
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fj;->c:I

    goto :goto_0

    .line 656
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fj;->e:I

    .line 657
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fj;->c:I

    goto :goto_0

    .line 661
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fj;->f:I

    .line 662
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/fj;->c:I

    goto :goto_0

    .line 666
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fj;->g:I

    .line 667
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/fj;->c:I

    goto :goto_0

    .line 671
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fj;->h:I

    .line 672
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/fj;->c:I

    goto :goto_0

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/fj;
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/google/b/a/fj;->b:[Lcom/google/b/a/fj;

    if-nez v0, :cond_1

    .line 448
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    sget-object v0, Lcom/google/b/a/fj;->b:[Lcom/google/b/a/fj;

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/fj;

    sput-object v0, Lcom/google/b/a/fj;->b:[Lcom/google/b/a/fj;

    .line 453
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_1
    sget-object v0, Lcom/google/b/a/fj;->b:[Lcom/google/b/a/fj;

    return-object v0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/fj;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 563
    iput v1, p0, Lcom/google/b/a/fj;->c:I

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    .line 565
    iput v1, p0, Lcom/google/b/a/fj;->d:I

    .line 566
    iput v1, p0, Lcom/google/b/a/fj;->e:I

    .line 567
    iput v1, p0, Lcom/google/b/a/fj;->f:I

    .line 568
    iput v1, p0, Lcom/google/b/a/fj;->g:I

    .line 569
    iput v1, p0, Lcom/google/b/a/fj;->h:I

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fj;->cachedSize:I

    .line 571
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 599
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 600
    iget-object v1, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    if-eqz v1, :cond_0

    .line 601
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_0
    iget v1, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 605
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/fj;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    :cond_1
    iget v1, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 609
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/fj;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_2
    iget v1, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 613
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/fj;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_3
    iget v1, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 617
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/b/a/fj;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_4
    iget v1, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 621
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/b/a/fj;->h:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_5
    iput v0, p0, Lcom/google/b/a/fj;->cachedSize:I

    .line 625
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/google/b/a/fj;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fj;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/fj;->a:Lcom/google/b/a/fg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 580
    :cond_0
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 581
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/fj;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 583
    :cond_1
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 584
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/fj;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 586
    :cond_2
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 587
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/fj;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 589
    :cond_3
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 590
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/fj;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 592
    :cond_4
    iget v0, p0, Lcom/google/b/a/fj;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 593
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/b/a/fj;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 595
    :cond_5
    return-void
.end method
