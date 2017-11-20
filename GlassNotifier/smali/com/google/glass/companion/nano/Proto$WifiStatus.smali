.class public final Lcom/google/glass/companion/nano/Proto$WifiStatus;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$WifiStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiStatus;


# instance fields
.field private bitField0_:I

.field private isConnected_:Z

.field private ssid_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8134
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8135
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$WifiStatus;->clear()Lcom/google/glass/companion/nano/Proto$WifiStatus;

    .line 8136
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 2

    .prologue
    .line 8078
    sget-object v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-nez v0, :cond_1

    .line 8079
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8081
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-nez v0, :cond_0

    .line 8082
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$WifiStatus;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiStatus;

    .line 8084
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8086
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$WifiStatus;

    return-object v0

    .line 8084
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8245
    new-instance v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$WifiStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$WifiStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8239
    new-instance v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$WifiStatus;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8139
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    .line 8140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 8141
    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    .line 8142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8143
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->cachedSize:I

    .line 8144
    return-object p0
.end method

.method public clearIsConnected()Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 1

    .prologue
    .line 8122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    .line 8123
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    .line 8124
    return-object p0
.end method

.method public clearSsid()Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 1

    .prologue
    .line 8100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 8101
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    .line 8102
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 8196
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8197
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8198
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 8199
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8201
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8202
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    .line 8203
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8205
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8149
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 8167
    :cond_0
    :goto_0
    return v1

    .line 8152
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 8155
    check-cast v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;

    .line 8156
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$WifiStatus;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 8157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8160
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    if-ne v3, v4, :cond_0

    .line 8164
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8165
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 8167
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIsConnected()Z
    .locals 1

    .prologue
    .line 8116
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8094
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIsConnected()Z
    .locals 1

    .prologue
    .line 8119
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSsid()Z
    .locals 1

    .prologue
    .line 8097
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 8172
    const/16 v0, 0x11

    .line 8173
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 8174
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 8175
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 8176
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8177
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 8178
    :goto_1
    add-int v0, v2, v1

    .line 8179
    return v0

    .line 8175
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 8178
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8213
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8214
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8218
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8219
    :sswitch_0
    return-object p0

    .line 8224
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 8225
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    goto :goto_0

    .line 8229
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    .line 8230
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    goto :goto_0

    .line 8214
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8072
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$WifiStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$WifiStatus;

    move-result-object v0

    return-object v0
.end method

.method public setIsConnected(Z)Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8127
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    .line 8128
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    .line 8129
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$WifiStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8105
    if-nez p1, :cond_0

    .line 8106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8108
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    .line 8109
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    .line 8110
    return-object p0
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
    .line 8185
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8186
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->ssid_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8188
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8189
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$WifiStatus;->isConnected_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8191
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8192
    return-void
.end method
