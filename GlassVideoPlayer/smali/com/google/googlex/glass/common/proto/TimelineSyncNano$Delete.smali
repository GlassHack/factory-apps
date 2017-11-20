.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;


# instance fields
.field private bitField0_:I

.field private timelineItemId_:Ljava/lang/String;

.field public userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1535
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1541
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1563
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1536
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    .locals 1

    .prologue
    .line 1679
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    .locals 1

    .prologue
    .line 1673
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    return-object v0
.end method


# virtual methods
.method public final clearTimelineItemId()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    .locals 1

    .prologue
    .line 1557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1558
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    .line 1559
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1567
    if-ne p1, p0, :cond_1

    .line 1572
    :cond_0
    :goto_0
    return v0

    .line 1568
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1569
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 1570
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1571
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1572
    goto :goto_0

    .line 1570
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1571
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    .line 1572
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1606
    .line 1607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1608
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1609
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1611
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v2, :cond_1

    .line 1612
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1613
    if-eqz v4, :cond_0

    .line 1614
    const/4 v5, 0x2

    .line 1615
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1612
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1619
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1620
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->cachedSize:I

    .line 1621
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getTimelineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasTimelineItemId()Z
    .locals 1

    .prologue
    .line 1554
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1576
    .line 1577
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1578
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 1584
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    :goto_1
    add-int/2addr v0, v1

    .line 1585
    return v0

    .line 1577
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    .line 1580
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1581
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v1

    :goto_3
    add-int/2addr v2, v3

    .line 1580
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1581
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_3

    .line 1584
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1630
    sparse-switch v0, :sswitch_data_0

    .line 1634
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1635
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    .line 1638
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    :sswitch_0
    return-object p0

    .line 1645
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1646
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    goto :goto_0

    .line 1650
    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1651
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v0, :cond_3

    move v0, v1

    .line 1652
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1653
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v3, :cond_2

    .line 1654
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1656
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1657
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 1658
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v3, v2, v0

    .line 1659
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1660
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1651
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v0, v0

    goto :goto_1

    .line 1663
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v3, v2, v0

    .line 1664
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1630
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1532
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    move-result-object v0

    return-object v0
.end method

.method public final setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    .locals 1

    .prologue
    .line 1546
    if-nez p1, :cond_0

    .line 1547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1549
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1550
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    .line 1551
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 1590
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1591
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v0, :cond_2

    .line 1594
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 1595
    if-eqz v3, :cond_1

    .line 1596
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1594
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1602
    return-void
.end method
