.class public final Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw$CwRankingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwRankedItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;


# instance fields
.field public rank:I

.field public streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 512
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->clear()Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    .line 513
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    .locals 2

    .prologue
    .line 494
    sget-object v0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    if-nez v0, :cond_1

    .line 495
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    sput-object v0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    .line 500
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->_emptyArray:[Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    return-object v0

    .line 500
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 517
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->rank:I

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->cachedSize:I

    .line 519
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 536
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 537
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-eqz v1, :cond_0

    .line 538
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_0
    iget v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->rank:I

    if-eqz v1, :cond_1

    .line 542
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->rank:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 554
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 558
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    :sswitch_0
    return-object p0

    .line 564
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-nez v1, :cond_1

    .line 565
    new-instance v1, Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-direct {v1}, Lcom/google/common/logging/Cw$CwStreamItemId;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 571
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->rank:I

    goto :goto_0

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 528
    :cond_0
    iget v0, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->rank:I

    if-eqz v0, :cond_1

    .line 529
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/Cw$CwRankingEvent$CwRankedItem;->rank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 531
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 532
    return-void
.end method
