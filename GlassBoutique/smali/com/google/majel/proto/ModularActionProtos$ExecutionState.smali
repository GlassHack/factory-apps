.class public final Lcom/google/majel/proto/ModularActionProtos$ExecutionState;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecutionState"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionState;


# instance fields
.field public primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

.field public prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2482
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2483
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->clear()Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 2484
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ExecutionState;
    .locals 2

    .prologue
    .line 2465
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-nez v0, :cond_1

    .line 2466
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2468
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-nez v0, :cond_0

    .line 2469
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 2471
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    return-object v0

    .line 2471
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionState;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2583
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ExecutionState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2577
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ExecutionState;
    .locals 1

    .prologue
    .line 2487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 2488
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 2489
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->cachedSize:I

    .line 2490
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2511
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2512
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 2513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2514
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    aget-object v0, v3, v1

    .line 2515
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v0, :cond_0

    .line 2516
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2521
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_2

    .line 2522
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2525
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->cachedSize:I

    .line 2526
    return v2
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2459
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ExecutionState;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2534
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2535
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2539
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2540
    :sswitch_0
    return-object p0

    .line 2545
    :sswitch_1
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2547
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-nez v5, :cond_2

    move v1, v4

    .line 2548
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 2550
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v1, :cond_1

    .line 2551
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2553
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2554
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    aput-object v5, v2, v1

    .line 2555
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2556
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2553
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2547
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v1, v5

    goto :goto_1

    .line 2559
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    aput-object v5, v2, v1

    .line 2560
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2561
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    goto :goto_0

    .line 2565
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :sswitch_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_4

    .line 2566
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 2568
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2535
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2496
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 2497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2498
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->primaryExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    aget-object v0, v2, v1

    .line 2499
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v0, :cond_0

    .line 2500
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2504
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_2

    .line 2505
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;->prompt:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2507
    :cond_2
    return-void
.end method
