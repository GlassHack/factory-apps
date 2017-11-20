.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delete"
.end annotation


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
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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
.method public clearTimelineItemId()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1567
    if-ne p1, p0, :cond_1

    .line 1572
    :cond_0
    :goto_0
    return v1

    .line 1568
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1569
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 1570
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1571
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1572
    goto :goto_0

    .line 1570
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1571
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    .line 1572
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1606
    const/4 v1, 0x0

    .line 1607
    .local v1, "size":I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1608
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1609
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1611
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v2, :cond_2

    .line 1612
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 1613
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    if-eqz v0, :cond_1

    .line 1614
    const/4 v5, 0x2

    .line 1615
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1612
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1620
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->cachedSize:I

    .line 1621
    return v1
.end method

.method public getTimelineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTimelineItemId()Z
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

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1576
    const/16 v1, 0x11

    .line 1577
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1578
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1584
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_1
    add-int v1, v2, v3

    .line 1585
    return v1

    .line 1577
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1580
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1581
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

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
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1630
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1634
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1635
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    .line 1638
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1640
    :sswitch_0
    return-object p0

    .line 1645
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1646
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    goto :goto_0

    .line 1650
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1651
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v5, :cond_3

    move v1, v4

    .line 1652
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1653
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_2

    .line 1654
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1656
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1657
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 1658
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1659
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1660
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1657
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1651
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v1, v5

    goto :goto_1

    .line 1663
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1664
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1630
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

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

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1590
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1591
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1593
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v1, :cond_2

    .line 1594
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1595
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    if-eqz v0, :cond_1

    .line 1596
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1594
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1600
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1602
    return-void
.end method
