.class public final Lcom/google/common/logging/Cw$CwConnectionLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwConnectionLog"
.end annotation


# static fields
.field public static final BT_CONNECT_FAILED:I = 0x4

.field public static final CONNECTED:I = 0x1

.field public static final CONNECTION_HANDSHAKE_FAILED:I = 0x3

.field public static final DISCONNECTED:I = 0x2

.field public static final UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwConnectionLog;


# instance fields
.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1083
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwConnectionLog;->clear()Lcom/google/common/logging/Cw$CwConnectionLog;

    .line 1084
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwConnectionLog;
    .locals 2

    .prologue
    .line 1068
    sget-object v0, Lcom/google/common/logging/Cw$CwConnectionLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwConnectionLog;

    if-nez v0, :cond_1

    .line 1069
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwConnectionLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwConnectionLog;

    if-nez v0, :cond_0

    .line 1072
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwConnectionLog;

    sput-object v0, Lcom/google/common/logging/Cw$CwConnectionLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwConnectionLog;

    .line 1074
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwConnectionLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwConnectionLog;

    return-object v0

    .line 1074
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwConnectionLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Lcom/google/common/logging/Cw$CwConnectionLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwConnectionLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwConnectionLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwConnectionLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwConnectionLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1145
    new-instance v0, Lcom/google/common/logging/Cw$CwConnectionLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwConnectionLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwConnectionLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwConnectionLog;
    .locals 1

    .prologue
    .line 1087
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/Cw$CwConnectionLog;->state:I

    .line 1088
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwConnectionLog;->cachedSize:I

    .line 1089
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1103
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1104
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/Cw$CwConnectionLog;->state:I

    if-eqz v1, :cond_0

    .line 1105
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/Cw$CwConnectionLog;->state:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1108
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwConnectionLog;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1116
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1117
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1121
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1122
    :sswitch_0
    return-object p0

    .line 1127
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1128
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1134
    :pswitch_0
    iput v1, p0, Lcom/google/common/logging/Cw$CwConnectionLog;->state:I

    goto :goto_0

    .line 1117
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1128
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
    .line 1055
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwConnectionLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwConnectionLog;

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
    .line 1095
    iget v0, p0, Lcom/google/common/logging/Cw$CwConnectionLog;->state:I

    if-eqz v0, :cond_0

    .line 1096
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/Cw$CwConnectionLog;->state:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1098
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1099
    return-void
.end method
