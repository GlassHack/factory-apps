.class public final Lcom/google/b/a/fz;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/fz;


# instance fields
.field public a:Lcom/google/b/a/gc;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2661
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2662
    invoke-direct {p0}, Lcom/google/b/a/fz;->b()Lcom/google/b/a/fz;

    .line 2663
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fz;
    .locals 1

    .prologue
    .line 2712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2713
    sparse-switch v0, :sswitch_data_0

    .line 2717
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2718
    :sswitch_0
    return-object p0

    .line 2723
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fz;->d:Ljava/lang/String;

    .line 2724
    iget v0, p0, Lcom/google/b/a/fz;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fz;->c:I

    goto :goto_0

    .line 2728
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/fz;->e:I

    .line 2729
    iget v0, p0, Lcom/google/b/a/fz;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fz;->c:I

    goto :goto_0

    .line 2733
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    if-nez v0, :cond_1

    .line 2734
    new-instance v0, Lcom/google/b/a/gc;

    invoke-direct {v0}, Lcom/google/b/a/gc;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    .line 2736
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2713
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/fz;
    .locals 2

    .prologue
    .line 2604
    sget-object v0, Lcom/google/b/a/fz;->b:[Lcom/google/b/a/fz;

    if-nez v0, :cond_1

    .line 2605
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2607
    :try_start_0
    sget-object v0, Lcom/google/b/a/fz;->b:[Lcom/google/b/a/fz;

    if-nez v0, :cond_0

    .line 2608
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/fz;

    sput-object v0, Lcom/google/b/a/fz;->b:[Lcom/google/b/a/fz;

    .line 2610
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2612
    :cond_1
    sget-object v0, Lcom/google/b/a/fz;->b:[Lcom/google/b/a/fz;

    return-object v0

    .line 2610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/fz;
    .locals 1

    .prologue
    .line 2666
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/fz;->c:I

    .line 2667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fz;->d:Ljava/lang/String;

    .line 2668
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/b/a/fz;->e:I

    .line 2669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    .line 2670
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fz;->cachedSize:I

    .line 2671
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 2690
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2691
    iget v1, p0, Lcom/google/b/a/fz;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2692
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/fz;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2695
    :cond_0
    iget v1, p0, Lcom/google/b/a/fz;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2696
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/fz;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2699
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    if-eqz v1, :cond_2

    .line 2700
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2703
    :cond_2
    iput v0, p0, Lcom/google/b/a/fz;->cachedSize:I

    .line 2704
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2590
    invoke-direct {p0, p1}, Lcom/google/b/a/fz;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fz;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2677
    iget v0, p0, Lcom/google/b/a/fz;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2678
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/fz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2680
    :cond_0
    iget v0, p0, Lcom/google/b/a/fz;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2681
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/fz;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2683
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    if-eqz v0, :cond_2

    .line 2684
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/fz;->a:Lcom/google/b/a/gc;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2686
    :cond_2
    return-void
.end method
