.class public final Lcom/google/majel/proto/CalendarProtos$AgendaItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgendaItem"
.end annotation


# static fields
.field public static final EVENT_TYPE_MULTI_DAY_END:I = 0x3

.field public static final EVENT_TYPE_MULTI_DAY_MIDDLE:I = 0x2

.field public static final EVENT_TYPE_MULTI_DAY_START:I = 0x1

.field public static final EVENT_TYPE_REGULAR:I = 0x0

.field public static final ICON_BIRTHDAY:I = 0x8

.field public static final ICON_CALENDAR:I = 0x0

.field public static final ICON_CAR:I = 0x2

.field public static final ICON_FLIGHT:I = 0x1

.field public static final ICON_HOTEL:I = 0x3

.field public static final ICON_PLACE:I = 0x6

.field public static final ICON_RECEIPT:I = 0x5

.field public static final ICON_REMINDER:I = 0x9

.field public static final ICON_RESTAURANT:I = 0x4

.field public static final ICON_TICKET:I = 0x7

.field public static final STATUS_ALERT:I = 0x2

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_NORMAL:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;


# instance fields
.field private allDay_:Z

.field private bitField0_:I

.field public carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

.field public defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

.field public endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

.field public event:Lcom/google/majel/proto/CalendarProtos$Event;

.field private eventType_:I

.field public flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

.field private icon_:I

.field public inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

.field public reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

.field public startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

.field private status_:I

.field public subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

.field private title_:Ljava/lang/String;

.field private ttsMultipleItemDescription_:Ljava/lang/String;

.field private ttsSingleItemDescription_:Ljava/lang/String;

.field private ttsStandaloneItemDescription_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1567
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->clear()Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    .line 1568
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 2

    .prologue
    .line 1362
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    if-nez v0, :cond_1

    .line 1363
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1365
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    if-nez v0, :cond_0

    .line 1366
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    .line 1368
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    return-object v0

    .line 1368
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1854
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1848
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1571
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->title_:Ljava/lang/String;

    .line 1573
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 1574
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 1575
    iput-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->allDay_:Z

    .line 1576
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->eventType_:I

    .line 1577
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->status_:I

    .line 1578
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    .line 1579
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->icon_:I

    .line 1580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsSingleItemDescription_:Ljava/lang/String;

    .line 1581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsMultipleItemDescription_:Ljava/lang/String;

    .line 1582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsStandaloneItemDescription_:Ljava/lang/String;

    .line 1583
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    .line 1584
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    .line 1585
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    .line 1586
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    .line 1587
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    .line 1588
    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    .line 1589
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->cachedSize:I

    .line 1590
    return-object p0
.end method

.method public clearAllDay()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->allDay_:Z

    .line 1418
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1419
    return-object p0
.end method

.method public clearEventType()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->eventType_:I

    .line 1437
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1438
    return-object p0
.end method

.method public clearIcon()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1477
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->icon_:I

    .line 1478
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1479
    return-object p0
.end method

.method public clearStatus()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1455
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->status_:I

    .line 1456
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1457
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->title_:Ljava/lang/String;

    .line 1393
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1394
    return-object p0
.end method

.method public clearTtsMultipleItemDescription()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1521
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsMultipleItemDescription_:Ljava/lang/String;

    .line 1522
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1523
    return-object p0
.end method

.method public clearTtsSingleItemDescription()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsSingleItemDescription_:Ljava/lang/String;

    .line 1500
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1501
    return-object p0
.end method

.method public clearTtsStandaloneItemDescription()Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1

    .prologue
    .line 1543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsStandaloneItemDescription_:Ljava/lang/String;

    .line 1544
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1545
    return-object p0
.end method

.method public getAllDay()Z
    .locals 1

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->allDay_:Z

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 1425
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->eventType_:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 1466
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->icon_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1651
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1652
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1653
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1656
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v1, :cond_1

    .line 1657
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1660
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v1, :cond_2

    .line 1661
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1664
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 1665
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->allDay_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1668
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 1669
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->status_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1672
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    if-eqz v1, :cond_5

    .line 1673
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1676
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 1677
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->icon_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1680
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    if-eqz v1, :cond_7

    .line 1681
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1684
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    if-eqz v1, :cond_8

    .line 1685
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1688
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    if-eqz v1, :cond_9

    .line 1689
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1692
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    if-eqz v1, :cond_a

    .line 1693
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1696
    :cond_a
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    if-eqz v1, :cond_b

    .line 1697
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1700
    :cond_b
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    .line 1701
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->eventType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1704
    :cond_c
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_d

    .line 1705
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsSingleItemDescription_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1708
    :cond_d
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_e

    .line 1709
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsMultipleItemDescription_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1712
    :cond_e
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    if-eqz v1, :cond_f

    .line 1713
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1716
    :cond_f
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_10

    .line 1717
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsStandaloneItemDescription_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1720
    :cond_10
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->cachedSize:I

    .line 1721
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->status_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsMultipleItemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsMultipleItemDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsSingleItemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsSingleItemDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsStandaloneItemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsStandaloneItemDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAllDay()Z
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 1433
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1474
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1452
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 1389
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTtsMultipleItemDescription()Z
    .locals 1

    .prologue
    .line 1518
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTtsSingleItemDescription()Z
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTtsStandaloneItemDescription()Z
    .locals 1

    .prologue
    .line 1540
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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
    .line 1333
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1729
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1730
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1734
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1735
    :sswitch_0
    return-object p0

    .line 1740
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->title_:Ljava/lang/String;

    .line 1741
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto :goto_0

    .line 1745
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-nez v1, :cond_1

    .line 1746
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 1748
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1752
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-nez v1, :cond_2

    .line 1753
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 1755
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1759
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->allDay_:Z

    .line 1760
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto :goto_0

    .line 1764
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->status_:I

    .line 1765
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto :goto_0

    .line 1769
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    if-nez v1, :cond_3

    .line 1770
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    .line 1772
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1776
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->icon_:I

    .line 1777
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto :goto_0

    .line 1781
    :sswitch_8
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    if-nez v1, :cond_4

    .line 1782
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    .line 1784
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1788
    :sswitch_9
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    if-nez v1, :cond_5

    .line 1789
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$Event;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$Event;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    .line 1791
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1795
    :sswitch_a
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    if-nez v1, :cond_6

    .line 1796
    new-instance v1, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    invoke-direct {v1}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    .line 1798
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1802
    :sswitch_b
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    if-nez v1, :cond_7

    .line 1803
    new-instance v1, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    invoke-direct {v1}, Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    .line 1805
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1809
    :sswitch_c
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    if-nez v1, :cond_8

    .line 1810
    new-instance v1, Lcom/google/majel/proto/ReservationProtos$Reservation;

    invoke-direct {v1}, Lcom/google/majel/proto/ReservationProtos$Reservation;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    .line 1812
    :cond_8
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1816
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->eventType_:I

    .line 1817
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto/16 :goto_0

    .line 1821
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsSingleItemDescription_:Ljava/lang/String;

    .line 1822
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto/16 :goto_0

    .line 1826
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsMultipleItemDescription_:Ljava/lang/String;

    .line 1827
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto/16 :goto_0

    .line 1831
    :sswitch_10
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    if-nez v1, :cond_9

    .line 1832
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$InferredEvent;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    .line 1834
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1838
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsStandaloneItemDescription_:Ljava/lang/String;

    .line 1839
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    goto/16 :goto_0

    .line 1730
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
    .end sparse-switch
.end method

.method public setAllDay(Z)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1409
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->allDay_:Z

    .line 1410
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1411
    return-object p0
.end method

.method public setEventType(I)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1428
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->eventType_:I

    .line 1429
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1430
    return-object p0
.end method

.method public setIcon(I)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1469
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->icon_:I

    .line 1470
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1471
    return-object p0
.end method

.method public setStatus(I)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1447
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->status_:I

    .line 1448
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1449
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1381
    if-nez p1, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1384
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->title_:Ljava/lang/String;

    .line 1385
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1386
    return-object p0
.end method

.method public setTtsMultipleItemDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1510
    if-nez p1, :cond_0

    .line 1511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1513
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsMultipleItemDescription_:Ljava/lang/String;

    .line 1514
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1515
    return-object p0
.end method

.method public setTtsSingleItemDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1488
    if-nez p1, :cond_0

    .line 1489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1491
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsSingleItemDescription_:Ljava/lang/String;

    .line 1492
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1493
    return-object p0
.end method

.method public setTtsStandaloneItemDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$AgendaItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1532
    if-nez p1, :cond_0

    .line 1533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1535
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsStandaloneItemDescription_:Ljava/lang/String;

    .line 1536
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    .line 1537
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
    .line 1596
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1597
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v0, :cond_1

    .line 1600
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->startTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1602
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    if-eqz v0, :cond_2

    .line 1603
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->endTime:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1605
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1606
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->allDay_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1608
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 1609
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1611
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    if-eqz v0, :cond_5

    .line 1612
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->subtitle:Lcom/google/majel/proto/CalendarProtos$AgendaItemSubtitle;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1614
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 1615
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->icon_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1617
    :cond_6
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    if-eqz v0, :cond_7

    .line 1618
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->defaultExpansion:Lcom/google/majel/proto/CalendarProtos$DefaultExpansion;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1620
    :cond_7
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    if-eqz v0, :cond_8

    .line 1621
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->event:Lcom/google/majel/proto/CalendarProtos$Event;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1623
    :cond_8
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    if-eqz v0, :cond_9

    .line 1624
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->flight:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1626
    :cond_9
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    if-eqz v0, :cond_a

    .line 1627
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->carRental:Lcom/google/majel/proto/CarRentalProtos$CarRentalEntry;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1629
    :cond_a
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    if-eqz v0, :cond_b

    .line 1630
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->reservation:Lcom/google/majel/proto/ReservationProtos$Reservation;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1632
    :cond_b
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 1633
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->eventType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1635
    :cond_c
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    .line 1636
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsSingleItemDescription_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1638
    :cond_d
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 1639
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsMultipleItemDescription_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1641
    :cond_e
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    if-eqz v0, :cond_f

    .line 1642
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->inferredEvent:Lcom/google/majel/proto/CalendarProtos$InferredEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1644
    :cond_f
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_10

    .line 1645
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/majel/proto/CalendarProtos$AgendaItem;->ttsStandaloneItemDescription_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1647
    :cond_10
    return-void
.end method
