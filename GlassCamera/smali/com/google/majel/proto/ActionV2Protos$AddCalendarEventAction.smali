.class public final Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddCalendarEventAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;


# instance fields
.field public calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3801
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3802
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->clear()Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    .line 3803
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 2

    .prologue
    .line 3787
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    if-nez v0, :cond_1

    .line 3788
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3790
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    if-nez v0, :cond_0

    .line 3791
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    .line 3793
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3795
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    return-object v0

    .line 3793
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3864
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3858
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 1

    .prologue
    .line 3806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 3807
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->cachedSize:I

    .line 3808
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3821
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3822
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-eqz v1, :cond_0

    .line 3823
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3826
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->cachedSize:I

    .line 3827
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
    .line 3781
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3836
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3840
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3841
    :sswitch_0
    return-object p0

    .line 3846
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-nez v1, :cond_1

    .line 3847
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 3849
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3836
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
    .line 3814
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    if-eqz v0, :cond_0

    .line 3815
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddCalendarEventAction;->calendarEvent:Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3817
    :cond_0
    return-void
.end method
