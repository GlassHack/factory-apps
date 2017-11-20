.class public final Lcom/google/common/logging/Cw$CwCompanionUiLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwCompanionUiLog"
.end annotation


# static fields
.field public static final BLACKLISTED_APP_NOTIFICATIONS:I = 0x2

.field public static final LAUNCHED_STATUS_ACTIVITY:I = 0x1

.field public static final UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwCompanionUiLog;


# instance fields
.field public blacklistedAppPackage:Ljava/lang/String;

.field public event:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1184
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwCompanionUiLog;->clear()Lcom/google/common/logging/Cw$CwCompanionUiLog;

    .line 1185
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwCompanionUiLog;
    .locals 2

    .prologue
    .line 1166
    sget-object v0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwCompanionUiLog;

    if-nez v0, :cond_1

    .line 1167
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1169
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwCompanionUiLog;

    if-nez v0, :cond_0

    .line 1170
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwCompanionUiLog;

    sput-object v0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwCompanionUiLog;

    .line 1172
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwCompanionUiLog;

    return-object v0

    .line 1172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCompanionUiLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    new-instance v0, Lcom/google/common/logging/Cw$CwCompanionUiLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwCompanionUiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwCompanionUiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCompanionUiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwCompanionUiLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1256
    new-instance v0, Lcom/google/common/logging/Cw$CwCompanionUiLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwCompanionUiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwCompanionUiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwCompanionUiLog;
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->event:I

    .line 1189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->blacklistedAppPackage:Ljava/lang/String;

    .line 1190
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->cachedSize:I

    .line 1191
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1208
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1209
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->event:I

    if-eqz v1, :cond_0

    .line 1210
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->event:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1213
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->blacklistedAppPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1214
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->blacklistedAppPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1217
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCompanionUiLog;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1225
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1226
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1230
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1231
    :sswitch_0
    return-object p0

    .line 1236
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1237
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1241
    :pswitch_0
    iput v1, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->event:I

    goto :goto_0

    .line 1247
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->blacklistedAppPackage:Ljava/lang/String;

    goto :goto_0

    .line 1226
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1237
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 1155
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwCompanionUiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwCompanionUiLog;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1197
    iget v0, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->event:I

    if-eqz v0, :cond_0

    .line 1198
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->event:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->blacklistedAppPackage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1201
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/Cw$CwCompanionUiLog;->blacklistedAppPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1203
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1204
    return-void
.end method
