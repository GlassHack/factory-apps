.class public final Lcom/google/common/logging/Cw$CwCombinedAndroidId;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwCombinedAndroidId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwCombinedAndroidId;


# instance fields
.field public companionAndroidId:J

.field public homeAndroidId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1559
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1560
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->clear()Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    .line 1561
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwCombinedAndroidId;
    .locals 2

    .prologue
    .line 1542
    sget-object v0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->_emptyArray:[Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    if-nez v0, :cond_1

    .line 1543
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1545
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->_emptyArray:[Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    if-nez v0, :cond_0

    .line 1546
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    sput-object v0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->_emptyArray:[Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    .line 1548
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->_emptyArray:[Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    return-object v0

    .line 1548
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCombinedAndroidId;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1631
    new-instance v0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwCombinedAndroidId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwCombinedAndroidId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1625
    new-instance v0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwCombinedAndroidId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwCombinedAndroidId;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1564
    iput-wide v0, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->homeAndroidId:J

    .line 1565
    iput-wide v0, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->companionAndroidId:J

    .line 1566
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->cachedSize:I

    .line 1567
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1584
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1585
    .local v0, "size":I
    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->homeAndroidId:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 1586
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->homeAndroidId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1589
    :cond_0
    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->companionAndroidId:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    .line 1590
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->companionAndroidId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1593
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCombinedAndroidId;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1601
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1602
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1606
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1607
    :sswitch_0
    return-object p0

    .line 1612
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->homeAndroidId:J

    goto :goto_0

    .line 1616
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->companionAndroidId:J

    goto :goto_0

    .line 1602
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 1536
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 1573
    iget-wide v0, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->homeAndroidId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 1574
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->homeAndroidId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1576
    :cond_0
    iget-wide v0, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->companionAndroidId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 1577
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwCombinedAndroidId;->companionAndroidId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1579
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1580
    return-void
.end method
