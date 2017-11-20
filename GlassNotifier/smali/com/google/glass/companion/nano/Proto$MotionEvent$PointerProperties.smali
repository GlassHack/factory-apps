.class public final Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private toolType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1592
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->clear()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    .line 1593
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 2

    .prologue
    .line 1538
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    if-nez v0, :cond_1

    .line 1539
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1541
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    if-nez v0, :cond_0

    .line 1542
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    .line 1544
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    return-object v0

    .line 1544
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1702
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1696
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1596
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1597
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1598
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1600
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->cachedSize:I

    .line 1601
    return-object p0
.end method

.method public clearId()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 1560
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1561
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1562
    return-object p0
.end method

.method public clearToolType()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 1579
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1580
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1581
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1653
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1654
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1655
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1656
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1658
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1659
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1660
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1662
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1606
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 1624
    :cond_0
    :goto_0
    return v1

    .line 1609
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1612
    check-cast v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    .line 1613
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    if-ne v3, v4, :cond_0

    .line 1617
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    if-ne v3, v4, :cond_0

    .line 1621
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1622
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 1624
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1554
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    return v0
.end method

.method public getToolType()I
    .locals 1

    .prologue
    .line 1573
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1557
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolType()Z
    .locals 1

    .prologue
    .line 1576
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1629
    const/16 v0, 0x11

    .line 1630
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1631
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    add-int v0, v1, v2

    .line 1632
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    add-int v0, v1, v2

    .line 1633
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1634
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1635
    :goto_0
    add-int v0, v2, v1

    .line 1636
    return v0

    .line 1635
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1670
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1671
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1675
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1676
    :sswitch_0
    return-object p0

    .line 1681
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1682
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    goto :goto_0

    .line 1686
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1687
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    goto :goto_0

    .line 1671
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1565
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1566
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1567
    return-object p0
.end method

.method public setToolType(I)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1584
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1585
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1586
    return-object p0
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
    .line 1642
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1643
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1645
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1646
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerProperties;->toolType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1648
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1649
    return-void
.end method
