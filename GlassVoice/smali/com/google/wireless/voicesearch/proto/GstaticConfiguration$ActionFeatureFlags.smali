.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionFeatureFlags"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;


# instance fields
.field private bitField0_:I

.field private enableCalendarEventAttendees_:Z

.field private enableCapabilityHomeControl_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5034
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5035
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 5036
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 2

    .prologue
    .line 4983
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    if-nez v0, :cond_1

    .line 4984
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4986
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    if-nez v0, :cond_0

    .line 4987
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 4989
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4991
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    return-object v0

    .line 4989
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5109
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5103
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5039
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    .line 5040
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    .line 5041
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    .line 5042
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->cachedSize:I

    .line 5043
    return-object p0
.end method

.method public clearEnableCalendarEventAttendees()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1

    .prologue
    .line 5010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    .line 5011
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    .line 5012
    return-object p0
.end method

.method public clearEnableCapabilityHomeControl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1

    .prologue
    .line 5029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    .line 5030
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    .line 5031
    return-object p0
.end method

.method public getEnableCalendarEventAttendees()Z
    .locals 1

    .prologue
    .line 4999
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    return v0
.end method

.method public getEnableCapabilityHomeControl()Z
    .locals 1

    .prologue
    .line 5018
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5059
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5060
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5061
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5064
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5065
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5068
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->cachedSize:I

    .line 5069
    return v0
.end method

.method public hasEnableCalendarEventAttendees()Z
    .locals 1

    .prologue
    .line 5007
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableCapabilityHomeControl()Z
    .locals 1

    .prologue
    .line 5026
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 4977
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5078
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5082
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5083
    :sswitch_0
    return-object p0

    .line 5088
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    .line 5089
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    goto :goto_0

    .line 5093
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    .line 5094
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    goto :goto_0

    .line 5078
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEnableCalendarEventAttendees(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5002
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    .line 5003
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    .line 5004
    return-object p0
.end method

.method public setEnableCapabilityHomeControl(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5021
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    .line 5022
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    .line 5023
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
    .line 5049
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5050
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5052
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5053
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5055
    :cond_1
    return-void
.end method
