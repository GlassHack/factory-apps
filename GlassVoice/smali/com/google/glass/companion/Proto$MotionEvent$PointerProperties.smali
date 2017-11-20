.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private toolType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1520
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1525
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1544
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1520
    return-void
.end method


# virtual methods
.method public clearId()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 1538
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1539
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1540
    return-object p0
.end method

.method public clearToolType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 1557
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1558
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1559
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1564
    if-ne p1, p0, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return v1

    .line 1565
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1566
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1567
    .local v0, "other":Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1569
    goto :goto_0

    .line 1567
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    .line 1569
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1527
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1594
    const/4 v0, 0x0

    .line 1595
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1596
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1597
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1599
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1600
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1601
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    .line 1605
    return v0
.end method

.method public getToolType()I
    .locals 1

    .prologue
    .line 1546
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1535
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

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
    .line 1554
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

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
    .line 1573
    const/16 v0, 0x11

    .line 1574
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    add-int/lit16 v0, v1, 0x20f

    .line 1575
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    add-int v0, v1, v2

    .line 1576
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 1577
    return v0

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1613
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1614
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1618
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    .line 1622
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1624
    :sswitch_0
    return-object p0

    .line 1629
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1630
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    goto :goto_0

    .line 1634
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1635
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    goto :goto_0

    .line 1614
    nop

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
    .line 1516
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1650
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1644
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1530
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1531
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1532
    return-object p0
.end method

.method public setToolType(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1549
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1550
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1551
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
    .line 1582
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1583
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1585
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1586
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1590
    return-void
.end method
