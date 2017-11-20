.class public final Lcom/google/common/logging/Cw$CwEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwEvent"
.end annotation


# static fields
.field public static final CW_COMPONENT_COMPANION:I = 0x2

.field public static final CW_COMPONENT_GMS_CORE:I = 0x4

.field public static final CW_COMPONENT_HOME:I = 0x1

.field public static final CW_COMPONENT_LOCK_SCREEN:I = 0x3

.field public static final CW_COMPONENT_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwEvent;


# instance fields
.field public combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

.field public companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

.field public component:I

.field public connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

.field public otherAndroidId:J

.field public searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

.field public streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

.field public systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

.field public uxLog:Lcom/google/common/logging/Cw$CwUxLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwEvent;->clear()Lcom/google/common/logging/Cw$CwEvent;

    .line 61
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwEvent;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/common/logging/Cw$CwEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwEvent;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwEvent;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwEvent;

    sput-object v0, Lcom/google/common/logging/Cw$CwEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwEvent;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwEvent;->_emptyArray:[Lcom/google/common/logging/Cw$CwEvent;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lcom/google/common/logging/Cw$CwEvent;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/google/common/logging/Cw$CwEvent;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/Cw$CwEvent;->otherAndroidId:J

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/Cw$CwEvent;->component:I

    .line 66
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    .line 67
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    .line 68
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    .line 69
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    .line 70
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    .line 71
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    .line 72
    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwEvent;->cachedSize:I

    .line 74
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 113
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    iget v1, p0, Lcom/google/common/logging/Cw$CwEvent;->component:I

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/Cw$CwEvent;->component:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    if-eqz v1, :cond_2

    .line 122
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    if-eqz v1, :cond_3

    .line 126
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    if-eqz v1, :cond_4

    .line 130
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    if-eqz v1, :cond_5

    .line 134
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_5
    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwEvent;->otherAndroidId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 138
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/Cw$CwEvent;->otherAndroidId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    if-eqz v1, :cond_7

    .line 142
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    if-eqz v1, :cond_8

    .line 146
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 158
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 162
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    :sswitch_0
    return-object p0

    .line 168
    :sswitch_1
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    if-nez v2, :cond_1

    .line 169
    new-instance v2, Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwCombinedAndroidId;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 175
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 176
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    iput v1, p0, Lcom/google/common/logging/Cw$CwEvent;->component:I

    goto :goto_0

    .line 188
    .end local v1    # "value":I
    :sswitch_3
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    if-nez v2, :cond_2

    .line 189
    new-instance v2, Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwStreamletLog;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 195
    :sswitch_4
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    if-nez v2, :cond_3

    .line 196
    new-instance v2, Lcom/google/common/logging/Cw$CwSystemLog;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwSystemLog;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 202
    :sswitch_5
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    if-nez v2, :cond_4

    .line 203
    new-instance v2, Lcom/google/common/logging/Cw$CwSearchLog;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwSearchLog;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    .line 205
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 209
    :sswitch_6
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    if-nez v2, :cond_5

    .line 210
    new-instance v2, Lcom/google/common/logging/Cw$CwConnectionLog;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwConnectionLog;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    .line 212
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 216
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/Cw$CwEvent;->otherAndroidId:J

    goto :goto_0

    .line 220
    :sswitch_8
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    if-nez v2, :cond_6

    .line 221
    new-instance v2, Lcom/google/common/logging/Cw$CwCompanionUiLog;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwCompanionUiLog;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    .line 223
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 227
    :sswitch_9
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    if-nez v2, :cond_7

    .line 228
    new-instance v2, Lcom/google/common/logging/Cw$CwUxLog;

    invoke-direct {v2}, Lcom/google/common/logging/Cw$CwUxLog;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    .line 230
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->combinedAndroidId:Lcom/google/common/logging/Cw$CwCombinedAndroidId;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 83
    :cond_0
    iget v0, p0, Lcom/google/common/logging/Cw$CwEvent;->component:I

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/Cw$CwEvent;->component:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    if-eqz v0, :cond_2

    .line 87
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    if-eqz v0, :cond_3

    .line 90
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->systemLog:Lcom/google/common/logging/Cw$CwSystemLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    if-eqz v0, :cond_4

    .line 93
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->searchLog:Lcom/google/common/logging/Cw$CwSearchLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    if-eqz v0, :cond_5

    .line 96
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->connectionLog:Lcom/google/common/logging/Cw$CwConnectionLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 98
    :cond_5
    iget-wide v0, p0, Lcom/google/common/logging/Cw$CwEvent;->otherAndroidId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 99
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/common/logging/Cw$CwEvent;->otherAndroidId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    if-eqz v0, :cond_7

    .line 102
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->companionUiLog:Lcom/google/common/logging/Cw$CwCompanionUiLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    if-eqz v0, :cond_8

    .line 105
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwEvent;->uxLog:Lcom/google/common/logging/Cw$CwUxLog;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 107
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 108
    return-void
.end method
