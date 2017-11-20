.class public final Lcom/google/common/logging/Cw$CwSystemLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwSystemLog"
.end annotation


# static fields
.field public static final CW_CONNECTION_STATUS_CONNECTED:I = 0x1

.field public static final CW_CONNECTION_STATUS_CONNECTING:I = 0x4

.field public static final CW_CONNECTION_STATUS_CONNECT_FAIL:I = 0x3

.field public static final CW_CONNECTION_STATUS_DISCONNECTED:I = 0x2

.field public static final CW_CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final CW_SCREEN_STATUS_ACTIVE:I = 0x6

.field public static final CW_SCREEN_STATUS_AMBIENT:I = 0x5

.field public static final CW_SCREEN_STATUS_LOCKED:I = 0x4

.field public static final CW_SCREEN_STATUS_OFF:I = 0x1

.field public static final CW_SCREEN_STATUS_ON_LOCKED:I = 0x2

.field public static final CW_SCREEN_STATUS_ON_UNLOCKED:I = 0x3

.field public static final CW_SCREEN_STATUS_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwSystemLog;


# instance fields
.field public batteryPercentage:I

.field public connectionsStatus:I

.field public pairedDeviceBtRssi:I

.field public screenStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 783
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwSystemLog;->clear()Lcom/google/common/logging/Cw$CwSystemLog;

    .line 784
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwSystemLog;
    .locals 2

    .prologue
    .line 759
    sget-object v0, Lcom/google/common/logging/Cw$CwSystemLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSystemLog;

    if-nez v0, :cond_1

    .line 760
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwSystemLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSystemLog;

    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwSystemLog;

    sput-object v0, Lcom/google/common/logging/Cw$CwSystemLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSystemLog;

    .line 765
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwSystemLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSystemLog;

    return-object v0

    .line 765
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSystemLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    new-instance v0, Lcom/google/common/logging/Cw$CwSystemLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwSystemLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwSystemLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSystemLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwSystemLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 892
    new-instance v0, Lcom/google/common/logging/Cw$CwSystemLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwSystemLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwSystemLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwSystemLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 787
    iput v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->batteryPercentage:I

    .line 788
    iput v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->pairedDeviceBtRssi:I

    .line 789
    iput v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->screenStatus:I

    .line 790
    iput v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->connectionsStatus:I

    .line 791
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->cachedSize:I

    .line 792
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 815
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 816
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->batteryPercentage:I

    if-eqz v1, :cond_0

    .line 817
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/Cw$CwSystemLog;->batteryPercentage:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 820
    :cond_0
    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->pairedDeviceBtRssi:I

    if-eqz v1, :cond_1

    .line 821
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/Cw$CwSystemLog;->pairedDeviceBtRssi:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 824
    :cond_1
    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->screenStatus:I

    if-eqz v1, :cond_2

    .line 825
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/Cw$CwSystemLog;->screenStatus:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    :cond_2
    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->connectionsStatus:I

    if-eqz v1, :cond_3

    .line 829
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/Cw$CwSystemLog;->connectionsStatus:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSystemLog;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 841
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 845
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    :sswitch_0
    return-object p0

    .line 851
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/common/logging/Cw$CwSystemLog;->batteryPercentage:I

    goto :goto_0

    .line 855
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/common/logging/Cw$CwSystemLog;->pairedDeviceBtRssi:I

    goto :goto_0

    .line 859
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 860
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 868
    :pswitch_0
    iput v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->screenStatus:I

    goto :goto_0

    .line 874
    .end local v1    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 875
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 881
    :pswitch_1
    iput v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->connectionsStatus:I

    goto :goto_0

    .line 841
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 875
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 737
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwSystemLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSystemLog;

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
    .line 798
    iget v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->batteryPercentage:I

    if-eqz v0, :cond_0

    .line 799
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->batteryPercentage:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 801
    :cond_0
    iget v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->pairedDeviceBtRssi:I

    if-eqz v0, :cond_1

    .line 802
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->pairedDeviceBtRssi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 804
    :cond_1
    iget v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->screenStatus:I

    if-eqz v0, :cond_2

    .line 805
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->screenStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 807
    :cond_2
    iget v0, p0, Lcom/google/common/logging/Cw$CwSystemLog;->connectionsStatus:I

    if-eqz v0, :cond_3

    .line 808
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/Cw$CwSystemLog;->connectionsStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 810
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 811
    return-void
.end method
