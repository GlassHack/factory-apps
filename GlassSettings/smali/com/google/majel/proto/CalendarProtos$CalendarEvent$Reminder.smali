.class public final Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reminder"
.end annotation


# static fields
.field public static final METHOD_ALARM:I = 0x4

.field public static final METHOD_ALERT:I = 0x1

.field public static final METHOD_DEFAULT:I = 0x0

.field public static final METHOD_EMAIL:I = 0x2

.field public static final METHOD_SMS:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;


# instance fields
.field private bitField0_:I

.field private method_:I

.field private minutes_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 591
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 592
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 2

    .prologue
    .line 539
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    if-nez v0, :cond_1

    .line 540
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    sput-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 545
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->_emptyArray:[Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    return-object v0

    .line 545
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 595
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    .line 596
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    .line 597
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->cachedSize:I

    .line 599
    return-object p0
.end method

.method public clearMethod()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    .line 586
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    .line 587
    return-object p0
.end method

.method public clearMinutes()Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    .line 567
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    .line 568
    return-object p0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 615
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 616
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 617
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 621
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->cachedSize:I

    .line 625
    return v0
.end method

.method public hasMethod()Z
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinutes()Z
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 526
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 634
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 638
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    :sswitch_0
    return-object p0

    .line 644
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    .line 645
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    goto :goto_0

    .line 649
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    .line 650
    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    goto :goto_0

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMethod(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    .line 578
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    .line 579
    return-object p0
.end method

.method public setMinutes(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 558
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    .line 559
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    .line 560
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
    .line 605
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->minutes_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 608
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 609
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;->method_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 611
    :cond_1
    return-void
.end method
