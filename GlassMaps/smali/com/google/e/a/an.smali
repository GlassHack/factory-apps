.class public final Lcom/google/e/a/an;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/e/a/an;


# instance fields
.field public a:[Lcom/google/e/a/ec;

.field public b:Lcom/google/e/a/ck;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8588
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8589
    invoke-direct {p0}, Lcom/google/e/a/an;->b()Lcom/google/e/a/an;

    .line 8590
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/an;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8640
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8641
    sparse-switch v0, :sswitch_data_0

    .line 8645
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8646
    :sswitch_0
    return-object p0

    .line 8651
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 8653
    iget-object v0, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    if-nez v0, :cond_2

    move v0, v1

    .line 8654
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ec;

    .line 8656
    if-eqz v0, :cond_1

    .line 8657
    iget-object v3, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8659
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 8660
    new-instance v3, Lcom/google/e/a/ec;

    invoke-direct {v3}, Lcom/google/e/a/ec;-><init>()V

    aput-object v3, v2, v0

    .line 8661
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8662
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8659
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8653
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    array-length v0, v0

    goto :goto_1

    .line 8665
    :cond_3
    new-instance v3, Lcom/google/e/a/ec;

    invoke-direct {v3}, Lcom/google/e/a/ec;-><init>()V

    aput-object v3, v2, v0

    .line 8666
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8667
    iput-object v2, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    goto :goto_0

    .line 8671
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    if-nez v0, :cond_4

    .line 8672
    new-instance v0, Lcom/google/e/a/ck;

    invoke-direct {v0}, Lcom/google/e/a/ck;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    .line 8674
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8641
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/an;
    .locals 2

    .prologue
    .line 8571
    sget-object v0, Lcom/google/e/a/an;->c:[Lcom/google/e/a/an;

    if-nez v0, :cond_1

    .line 8572
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8574
    :try_start_0
    sget-object v0, Lcom/google/e/a/an;->c:[Lcom/google/e/a/an;

    if-nez v0, :cond_0

    .line 8575
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/an;

    sput-object v0, Lcom/google/e/a/an;->c:[Lcom/google/e/a/an;

    .line 8577
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8579
    :cond_1
    sget-object v0, Lcom/google/e/a/an;->c:[Lcom/google/e/a/an;

    return-object v0

    .line 8577
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/an;
    .locals 1

    .prologue
    .line 8593
    invoke-static {}, Lcom/google/e/a/ec;->a()[Lcom/google/e/a/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    .line 8594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    .line 8595
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/an;->cachedSize:I

    .line 8596
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 8617
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 8618
    iget-object v0, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 8619
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 8620
    iget-object v2, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    aget-object v2, v2, v0

    .line 8621
    if-eqz v2, :cond_0

    .line 8622
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8619
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8627
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    if-eqz v0, :cond_2

    .line 8628
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 8631
    :cond_2
    iput v1, p0, Lcom/google/e/a/an;->cachedSize:I

    .line 8632
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8565
    invoke-direct {p0, p1}, Lcom/google/e/a/an;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/an;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 8602
    iget-object v0, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 8603
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8604
    iget-object v1, p0, Lcom/google/e/a/an;->a:[Lcom/google/e/a/ec;

    aget-object v1, v1, v0

    .line 8605
    if-eqz v1, :cond_0

    .line 8606
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8610
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    if-eqz v0, :cond_2

    .line 8611
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/an;->b:Lcom/google/e/a/ck;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 8613
    :cond_2
    return-void
.end method
