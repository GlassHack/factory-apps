.class public final Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;


# instance fields
.field private bitField0_:I

.field private cellId_:J

.field private fprint_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1605
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1606
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->clear()Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    .line 1607
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 2

    .prologue
    .line 1554
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    if-nez v0, :cond_1

    .line 1555
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1557
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    if-nez v0, :cond_0

    .line 1558
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    .line 1560
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    return-object v0

    .line 1560
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1680
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1674
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1610
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    .line 1611
    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cellId_:J

    .line 1612
    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->fprint_:J

    .line 1613
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cachedSize:I

    .line 1614
    return-object p0
.end method

.method public clearCellId()Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 2

    .prologue
    .line 1581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cellId_:J

    .line 1582
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    .line 1583
    return-object p0
.end method

.method public clearFprint()Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 2

    .prologue
    .line 1600
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->fprint_:J

    .line 1601
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    .line 1602
    return-object p0
.end method

.method public getCellId()J
    .locals 2

    .prologue
    .line 1570
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cellId_:J

    return-wide v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 1589
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1630
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1631
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1632
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cellId_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1635
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1636
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->fprint_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1639
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cachedSize:I

    .line 1640
    return v0
.end method

.method public hasCellId()Z
    .locals 1

    .prologue
    .line 1578
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFprint()Z
    .locals 1

    .prologue
    .line 1597
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 1548
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1648
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1649
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1653
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1654
    :sswitch_0
    return-object p0

    .line 1659
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cellId_:J

    .line 1660
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    goto :goto_0

    .line 1664
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->fprint_:J

    .line 1665
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    goto :goto_0

    .line 1649
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCellId(J)Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1573
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cellId_:J

    .line 1574
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    .line 1575
    return-object p0
.end method

.method public setFprint(J)Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1592
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->fprint_:J

    .line 1593
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    .line 1594
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1620
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1621
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->cellId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 1623
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1624
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$Location$FeatureId;->fprint_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 1626
    :cond_1
    return-void
.end method
