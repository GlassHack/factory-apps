.class public final Lcom/google/e/a/er;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/e/a/er;


# instance fields
.field public a:[Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6457
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 6458
    invoke-direct {p0}, Lcom/google/e/a/er;->b()Lcom/google/e/a/er;

    .line 6459
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/er;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6524
    sparse-switch v0, :sswitch_data_0

    .line 6528
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6529
    :sswitch_0
    return-object p0

    .line 6534
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/er;->d:Ljava/lang/String;

    .line 6535
    iget v0, p0, Lcom/google/e/a/er;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/er;->c:I

    goto :goto_0

    .line 6539
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/er;->e:Ljava/lang/String;

    .line 6540
    iget v0, p0, Lcom/google/e/a/er;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/er;->c:I

    goto :goto_0

    .line 6544
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6546
    iget-object v0, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 6547
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 6548
    if-eqz v0, :cond_1

    .line 6549
    iget-object v3, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6551
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6552
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6553
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6551
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6546
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 6556
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6557
    iput-object v2, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    goto :goto_0

    .line 6524
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/er;
    .locals 2

    .prologue
    .line 6397
    sget-object v0, Lcom/google/e/a/er;->b:[Lcom/google/e/a/er;

    if-nez v0, :cond_1

    .line 6398
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6400
    :try_start_0
    sget-object v0, Lcom/google/e/a/er;->b:[Lcom/google/e/a/er;

    if-nez v0, :cond_0

    .line 6401
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/er;

    sput-object v0, Lcom/google/e/a/er;->b:[Lcom/google/e/a/er;

    .line 6403
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6405
    :cond_1
    sget-object v0, Lcom/google/e/a/er;->b:[Lcom/google/e/a/er;

    return-object v0

    .line 6403
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/er;
    .locals 1

    .prologue
    .line 6462
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/er;->c:I

    .line 6463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/er;->d:Ljava/lang/String;

    .line 6464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/er;->e:Ljava/lang/String;

    .line 6465
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    .line 6466
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/er;->cachedSize:I

    .line 6467
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6491
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 6492
    iget v2, p0, Lcom/google/e/a/er;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6493
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/e/a/er;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6496
    :cond_0
    iget v2, p0, Lcom/google/e/a/er;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 6497
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/e/a/er;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6500
    :cond_1
    iget-object v2, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 6503
    :goto_0
    iget-object v4, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 6504
    iget-object v4, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 6505
    if-eqz v4, :cond_2

    .line 6506
    add-int/lit8 v3, v3, 0x1

    .line 6507
    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6503
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6511
    :cond_3
    add-int/2addr v0, v2

    .line 6512
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 6514
    :cond_4
    iput v0, p0, Lcom/google/e/a/er;->cachedSize:I

    .line 6515
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6391
    invoke-direct {p0, p1}, Lcom/google/e/a/er;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/er;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 6473
    iget v0, p0, Lcom/google/e/a/er;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6474
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/er;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6476
    :cond_0
    iget v0, p0, Lcom/google/e/a/er;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6477
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/er;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6479
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 6480
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 6481
    iget-object v1, p0, Lcom/google/e/a/er;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 6482
    if-eqz v1, :cond_2

    .line 6483
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6480
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6487
    :cond_3
    return-void
.end method
