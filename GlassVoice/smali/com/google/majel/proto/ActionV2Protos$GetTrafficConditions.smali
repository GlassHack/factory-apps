.class public final Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetTrafficConditions"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;


# instance fields
.field public destination:Lcom/google/majel/proto/ActionV2Protos$Location;

.field public origin:Lcom/google/majel/proto/ActionV2Protos$Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9530
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9531
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->clear()Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    .line 9532
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 2

    .prologue
    .line 9513
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    if-nez v0, :cond_1

    .line 9514
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9516
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    if-nez v0, :cond_0

    .line 9517
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    .line 9519
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9521
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    return-object v0

    .line 9519
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9608
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9602
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9535
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 9536
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 9537
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->cachedSize:I

    .line 9538
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9554
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9555
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v1, :cond_0

    .line 9556
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9559
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v1, :cond_1

    .line 9560
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9563
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->cachedSize:I

    .line 9564
    return v0
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
    .line 9507
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9573
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9577
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9578
    :sswitch_0
    return-object p0

    .line 9583
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v1, :cond_1

    .line 9584
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 9586
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9590
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-nez v1, :cond_2

    .line 9591
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 9593
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9573
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 9544
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_0

    .line 9545
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->origin:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9547
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    if-eqz v0, :cond_1

    .line 9548
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$GetTrafficConditions;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9550
    :cond_1
    return-void
.end method
