.class public final Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactPostalAddress"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;


# instance fields
.field private bitField0_:I

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2543
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2544
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->clear()Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    .line 2545
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 2

    .prologue
    .line 2508
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    if-nez v0, :cond_1

    .line 2509
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2511
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    if-nez v0, :cond_0

    .line 2512
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    .line 2514
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    return-object v0

    .line 2514
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2605
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2599
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1

    .prologue
    .line 2548
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    .line 2549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    .line 2550
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->cachedSize:I

    .line 2551
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1

    .prologue
    .line 2538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    .line 2539
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    .line 2540
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2564
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2565
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2566
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2569
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->cachedSize:I

    .line 2570
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2535
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 2502
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2578
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2579
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2583
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2584
    :sswitch_0
    return-object p0

    .line 2589
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    .line 2590
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    goto :goto_0

    .line 2579
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2527
    if-nez p1, :cond_0

    .line 2528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2530
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    .line 2531
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    .line 2532
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2557
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2558
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2560
    :cond_0
    return-void
.end method
