.class public final Lcom/google/b/a/ab;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/ab;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2543
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2544
    invoke-direct {p0}, Lcom/google/b/a/ab;->b()Lcom/google/b/a/ab;

    .line 2545
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ab;
    .locals 1

    .prologue
    .line 2578
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2579
    sparse-switch v0, :sswitch_data_0

    .line 2583
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2584
    :sswitch_0
    return-object p0

    .line 2589
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ab;->c:Ljava/lang/String;

    .line 2590
    iget v0, p0, Lcom/google/b/a/ab;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ab;->b:I

    goto :goto_0

    .line 2579
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/ab;
    .locals 2

    .prologue
    .line 2508
    sget-object v0, Lcom/google/b/a/ab;->a:[Lcom/google/b/a/ab;

    if-nez v0, :cond_1

    .line 2509
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2511
    :try_start_0
    sget-object v0, Lcom/google/b/a/ab;->a:[Lcom/google/b/a/ab;

    if-nez v0, :cond_0

    .line 2512
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/ab;

    sput-object v0, Lcom/google/b/a/ab;->a:[Lcom/google/b/a/ab;

    .line 2514
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    :cond_1
    sget-object v0, Lcom/google/b/a/ab;->a:[Lcom/google/b/a/ab;

    return-object v0

    .line 2514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/ab;
    .locals 1

    .prologue
    .line 2548
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/ab;->b:I

    .line 2549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ab;->c:Ljava/lang/String;

    .line 2550
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ab;->cachedSize:I

    .line 2551
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 2564
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2565
    iget v1, p0, Lcom/google/b/a/ab;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2566
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ab;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2569
    :cond_0
    iput v0, p0, Lcom/google/b/a/ab;->cachedSize:I

    .line 2570
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2502
    invoke-direct {p0, p1}, Lcom/google/b/a/ab;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2557
    iget v0, p0, Lcom/google/b/a/ab;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2558
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ab;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2560
    :cond_0
    return-void
.end method
