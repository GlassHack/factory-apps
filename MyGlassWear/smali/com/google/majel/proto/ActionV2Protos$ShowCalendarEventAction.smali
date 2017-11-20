.class public final Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowCalendarEventAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;


# instance fields
.field public calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3888
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3889
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->clear()Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    .line 3890
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;
    .locals 2

    .prologue
    .line 3874
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    if-nez v0, :cond_1

    .line 3875
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3877
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    if-nez v0, :cond_0

    .line 3878
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    .line 3880
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3882
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    return-object v0

    .line 3880
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3951
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3945
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;
    .locals 1

    .prologue
    .line 3893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 3894
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->cachedSize:I

    .line 3895
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3908
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3909
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-eqz v1, :cond_0

    .line 3910
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3913
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->cachedSize:I

    .line 3914
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
    .line 3868
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3922
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3923
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3927
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3928
    :sswitch_0
    return-object p0

    .line 3933
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-nez v1, :cond_1

    .line 3934
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 3936
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3923
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 3901
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-eqz v0, :cond_0

    .line 3902
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3904
    :cond_0
    return-void
.end method
