.class public final Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddReminderAction"
.end annotation


# static fields
.field public static final TRIGGER_TYPE_LOCATION:I = 0x1

.field public static final TRIGGER_TYPE_REDACTED:I = 0x2

.field public static final TRIGGER_TYPE_SOMEDAY:I = 0x3

.field public static final TRIGGER_TYPE_TIME:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;


# instance fields
.field public absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

.field private bitField0_:I

.field private confirmationUrlPath_:Ljava/lang/String;

.field public embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

.field private fallbackLabel_:Ljava/lang/String;

.field public labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

.field private label_:Ljava/lang/String;

.field public locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

.field public recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

.field public recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

.field private taskId_:Ljava/lang/String;

.field private triggerType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9029
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9030
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->clear()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 9031
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 2

    .prologue
    .line 8891
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    if-nez v0, :cond_1

    .line 8892
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8894
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    if-nez v0, :cond_0

    .line 8895
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    .line 8897
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8899
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    return-object v0

    .line 8897
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9233
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9227
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9034
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 9035
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    .line 9036
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 9037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->fallbackLabel_:Ljava/lang/String;

    .line 9038
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 9039
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 9040
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 9041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    .line 9042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->taskId_:Ljava/lang/String;

    .line 9043
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 9044
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 9045
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->triggerType_:I

    .line 9046
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->cachedSize:I

    .line 9047
    return-object p0
.end method

.method public clearConfirmationUrlPath()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 8977
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    .line 8978
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 8979
    return-object p0
.end method

.method public clearFallbackLabel()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 8946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->fallbackLabel_:Ljava/lang/String;

    .line 8947
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 8948
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 8921
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    .line 8922
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 8923
    return-object p0
.end method

.method public clearTaskId()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 8999
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->taskId_:Ljava/lang/String;

    .line 9000
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 9001
    return-object p0
.end method

.method public clearTriggerType()Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1

    .prologue
    .line 9024
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->triggerType_:I

    .line 9025
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 9026
    return-object p0
.end method

.method public getConfirmationUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8963
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8932
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->fallbackLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8907
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9090
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9091
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9092
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9095
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v1, :cond_1

    .line 9096
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9099
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    if-eqz v1, :cond_2

    .line 9100
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9103
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    if-eqz v1, :cond_3

    .line 9104
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9107
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 9108
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9111
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v1, :cond_5

    .line 9112
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9115
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 9116
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->taskId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9119
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-eqz v1, :cond_7

    .line 9120
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9123
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 9124
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->fallbackLabel_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9127
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 9128
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->triggerType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9131
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-eqz v1, :cond_a

    .line 9132
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9135
    :cond_a
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->cachedSize:I

    .line 9136
    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8985
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->taskId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerType()I
    .locals 1

    .prologue
    .line 9013
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->triggerType_:I

    return v0
.end method

.method public hasConfirmationUrlPath()Z
    .locals 1

    .prologue
    .line 8974
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFallbackLabel()Z
    .locals 1

    .prologue
    .line 8943
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 8918
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTaskId()Z
    .locals 1

    .prologue
    .line 8996
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTriggerType()Z
    .locals 1

    .prologue
    .line 9021
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 8879
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9145
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9149
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9150
    :sswitch_0
    return-object p0

    .line 9155
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    .line 9156
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    goto :goto_0

    .line 9160
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v1, :cond_1

    .line 9161
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 9163
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9167
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    if-nez v1, :cond_2

    .line 9168
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    .line 9170
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9174
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    if-nez v1, :cond_3

    .line 9175
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 9177
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9181
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    .line 9182
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    goto :goto_0

    .line 9186
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v1, :cond_4

    .line 9187
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 9189
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9193
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->taskId_:Ljava/lang/String;

    .line 9194
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    goto :goto_0

    .line 9198
    :sswitch_8
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-nez v1, :cond_5

    .line 9199
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 9201
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9205
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->fallbackLabel_:Ljava/lang/String;

    .line 9206
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    goto/16 :goto_0

    .line 9210
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->triggerType_:I

    .line 9211
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    goto/16 :goto_0

    .line 9215
    :sswitch_b
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-nez v1, :cond_6

    .line 9216
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    .line 9218
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public setConfirmationUrlPath(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8966
    if-nez p1, :cond_0

    .line 8967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8969
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    .line 8970
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 8971
    return-object p0
.end method

.method public setFallbackLabel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8935
    if-nez p1, :cond_0

    .line 8936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8938
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->fallbackLabel_:Ljava/lang/String;

    .line 8939
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 8940
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8910
    if-nez p1, :cond_0

    .line 8911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8913
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    .line 8914
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 8915
    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8988
    if-nez p1, :cond_0

    .line 8989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8991
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->taskId_:Ljava/lang/String;

    .line 8992
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 8993
    return-object p0
.end method

.method public setTriggerType(I)Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9016
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->triggerType_:I

    .line 9017
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    .line 9018
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
    .line 9053
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9054
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9056
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v0, :cond_1

    .line 9057
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->labelSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9059
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    if-eqz v0, :cond_2

    .line 9060
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->absoluteTimeTrigger:Lcom/google/majel/proto/ActionV2Protos$AbsoluteTimeTrigger;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9062
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    if-eqz v0, :cond_3

    .line 9063
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->locationTrigger:Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9065
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 9066
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->confirmationUrlPath_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9068
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v0, :cond_5

    .line 9069
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->embeddedAction:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9071
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 9072
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->taskId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9074
    :cond_6
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-eqz v0, :cond_7

    .line 9075
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrence:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9077
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 9078
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->fallbackLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9080
    :cond_8
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 9081
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->triggerType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9083
    :cond_9
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    if-eqz v0, :cond_a

    .line 9084
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AddReminderAction;->recurrenceId:Lcom/google/caribou/tasks/RecurrenceProtos$RecurrenceId;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9086
    :cond_a
    return-void
.end method
