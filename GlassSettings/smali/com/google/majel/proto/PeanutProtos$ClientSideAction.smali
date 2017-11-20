.class public final Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientSideAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;


# instance fields
.field public email:Lcom/google/majel/proto/ActionProtos$Email;

.field public identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

.field public navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

.field public phone:Lcom/google/majel/proto/ActionProtos$Phone;

.field public sms:Lcom/google/majel/proto/ActionProtos$Sms;

.field public tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1539
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->clear()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1540
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 2

    .prologue
    .line 1509
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    if-nez v0, :cond_1

    .line 1510
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1512
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    if-nez v0, :cond_0

    .line 1513
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    sput-object v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    .line 1515
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    :cond_1
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    return-object v0

    .line 1515
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1676
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1670
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1543
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    .line 1544
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    .line 1545
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 1546
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    .line 1547
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    .line 1548
    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 1549
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->cachedSize:I

    .line 1550
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1578
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1579
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    if-eqz v1, :cond_0

    .line 1580
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    if-eqz v1, :cond_1

    .line 1584
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1587
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    if-eqz v1, :cond_2

    .line 1588
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1591
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    if-eqz v1, :cond_3

    .line 1592
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1595
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    if-eqz v1, :cond_4

    .line 1596
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1599
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    if-eqz v1, :cond_5

    .line 1600
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->cachedSize:I

    .line 1604
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
    .line 1503
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$ClientSideAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1613
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1617
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1618
    :sswitch_0
    return-object p0

    .line 1623
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    if-nez v1, :cond_1

    .line 1624
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Phone;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    .line 1626
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1630
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    if-nez v1, :cond_2

    .line 1631
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Sms;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    .line 1633
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1637
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    if-nez v1, :cond_3

    .line 1638
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Navigate;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    .line 1640
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1644
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    if-nez v1, :cond_4

    .line 1645
    new-instance v1, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    .line 1647
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1651
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    if-nez v1, :cond_5

    .line 1652
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Email;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Email;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    .line 1654
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1658
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    if-nez v1, :cond_6

    .line 1659
    new-instance v1, Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$TvControl;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 1661
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1613
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 1556
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    if-eqz v0, :cond_0

    .line 1557
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->phone:Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    if-eqz v0, :cond_1

    .line 1560
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->sms:Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    if-eqz v0, :cond_2

    .line 1563
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->navigate:Lcom/google/majel/proto/ActionProtos$Navigate;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1565
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    if-eqz v0, :cond_3

    .line 1566
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->identifyAudio:Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1568
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    if-eqz v0, :cond_4

    .line 1569
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->email:Lcom/google/majel/proto/ActionProtos$Email;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1571
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    if-eqz v0, :cond_5

    .line 1572
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$ClientSideAction;->tvControl:Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1574
    :cond_5
    return-void
.end method
