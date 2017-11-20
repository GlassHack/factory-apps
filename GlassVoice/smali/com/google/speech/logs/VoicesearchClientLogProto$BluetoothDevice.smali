.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothDevice"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;


# instance fields
.field private bitField0_:I

.field private deviceNameHash_:Ljava/lang/String;

.field private deviceName_:Ljava/lang/String;

.field private orgIdentifier_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5904
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5905
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    .line 5906
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 2

    .prologue
    .line 5825
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    if-nez v0, :cond_1

    .line 5826
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5828
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    if-nez v0, :cond_0

    .line 5829
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    .line 5831
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5833
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    return-object v0

    .line 5831
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5992
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5986
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1

    .prologue
    .line 5909
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    .line 5910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceName_:Ljava/lang/String;

    .line 5911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceNameHash_:Ljava/lang/String;

    .line 5912
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->orgIdentifier_:Ljava/lang/String;

    .line 5913
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->cachedSize:I

    .line 5914
    return-object p0
.end method

.method public clearDeviceName()Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1

    .prologue
    .line 5855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceName_:Ljava/lang/String;

    .line 5856
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    .line 5857
    return-object p0
.end method

.method public clearDeviceNameHash()Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1

    .prologue
    .line 5877
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceNameHash_:Ljava/lang/String;

    .line 5878
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    .line 5879
    return-object p0
.end method

.method public clearOrgIdentifier()Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1

    .prologue
    .line 5899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->orgIdentifier_:Ljava/lang/String;

    .line 5900
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    .line 5901
    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5841
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNameHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5863
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceNameHash_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5885
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->orgIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5933
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5934
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5935
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5938
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5939
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceNameHash_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5942
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5943
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->orgIdentifier_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5946
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->cachedSize:I

    .line 5947
    return v0
.end method

.method public hasDeviceName()Z
    .locals 1

    .prologue
    .line 5852
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceNameHash()Z
    .locals 1

    .prologue
    .line 5874
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOrgIdentifier()Z
    .locals 1

    .prologue
    .line 5896
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 5819
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5955
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5956
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5960
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5961
    :sswitch_0
    return-object p0

    .line 5966
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceName_:Ljava/lang/String;

    .line 5967
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    goto :goto_0

    .line 5971
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceNameHash_:Ljava/lang/String;

    .line 5972
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    goto :goto_0

    .line 5976
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->orgIdentifier_:Ljava/lang/String;

    .line 5977
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    goto :goto_0

    .line 5956
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5844
    if-nez p1, :cond_0

    .line 5845
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5847
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceName_:Ljava/lang/String;

    .line 5848
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    .line 5849
    return-object p0
.end method

.method public setDeviceNameHash(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5866
    if-nez p1, :cond_0

    .line 5867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5869
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceNameHash_:Ljava/lang/String;

    .line 5870
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    .line 5871
    return-object p0
.end method

.method public setOrgIdentifier(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5888
    if-nez p1, :cond_0

    .line 5889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5891
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->orgIdentifier_:Ljava/lang/String;

    .line 5892
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    .line 5893
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
    .line 5920
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5921
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5923
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5924
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->deviceNameHash_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5926
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5927
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$BluetoothDevice;->orgIdentifier_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5929
    :cond_2
    return-void
.end method
