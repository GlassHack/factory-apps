.class public final Lcom/google/e/a/ct;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/e/a/ct;


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 591
    invoke-direct {p0}, Lcom/google/e/a/ct;->b()Lcom/google/e/a/ct;

    .line 592
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ct;
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
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/ct;->c:I

    .line 645
    iget v0, p0, Lcom/google/e/a/ct;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/ct;->b:I

    goto :goto_0

    .line 649
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/ct;->d:I

    .line 650
    iget v0, p0, Lcom/google/e/a/ct;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/ct;->b:I

    goto :goto_0

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/ct;
    .locals 2

    .prologue
    .line 539
    sget-object v0, Lcom/google/e/a/ct;->a:[Lcom/google/e/a/ct;

    if-nez v0, :cond_1

    .line 540
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    sget-object v0, Lcom/google/e/a/ct;->a:[Lcom/google/e/a/ct;

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/ct;

    sput-object v0, Lcom/google/e/a/ct;->a:[Lcom/google/e/a/ct;

    .line 545
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_1
    sget-object v0, Lcom/google/e/a/ct;->a:[Lcom/google/e/a/ct;

    return-object v0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/ct;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 595
    iput v0, p0, Lcom/google/e/a/ct;->b:I

    .line 596
    iput v0, p0, Lcom/google/e/a/ct;->c:I

    .line 597
    iput v0, p0, Lcom/google/e/a/ct;->d:I

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ct;->cachedSize:I

    .line 599
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 615
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 616
    iget v1, p0, Lcom/google/e/a/ct;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 617
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/ct;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_0
    iget v1, p0, Lcom/google/e/a/ct;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 621
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/e/a/ct;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_1
    iput v0, p0, Lcom/google/e/a/ct;->cachedSize:I

    .line 625
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/google/e/a/ct;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ct;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/google/e/a/ct;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/ct;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 608
    :cond_0
    iget v0, p0, Lcom/google/e/a/ct;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 609
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/e/a/ct;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 611
    :cond_1
    return-void
.end method
