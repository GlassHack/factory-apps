.class public final Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineItemResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/String;

.field private syncStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6144
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6145
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->clear()Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    .line 6146
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 2

    .prologue
    .line 6088
    sget-object v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    if-nez v0, :cond_1

    .line 6089
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6091
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    if-nez v0, :cond_0

    .line 6092
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    .line 6094
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6096
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    return-object v0

    .line 6094
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6268
    new-instance v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6262
    new-instance v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6149
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    .line 6150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 6151
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    .line 6152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6153
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->cachedSize:I

    .line 6154
    return-object p0
.end method

.method public clearId()Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 6110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 6111
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    .line 6112
    return-object p0
.end method

.method public clearSyncStatus()Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 6137
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    .line 6138
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    .line 6139
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 6206
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6207
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6208
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 6209
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6211
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6212
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    .line 6213
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6215
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6159
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 6177
    :cond_0
    :goto_0
    return v1

    .line 6162
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 6165
    check-cast v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    .line 6166
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 6167
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6170
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    if-ne v3, v4, :cond_0

    .line 6174
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6175
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 6177
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6104
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncStatus()I
    .locals 1

    .prologue
    .line 6126
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 6107
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncStatus()Z
    .locals 1

    .prologue
    .line 6134
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 6182
    const/16 v0, 0x11

    .line 6183
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 6184
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 6185
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    add-int v0, v1, v2

    .line 6186
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6187
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 6188
    :goto_0
    add-int v0, v2, v1

    .line 6189
    return v0

    .line 6188
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6223
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 6224
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 6228
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6229
    :sswitch_0
    return-object p0

    .line 6234
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 6235
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    goto :goto_0

    .line 6239
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 6240
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 6241
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 6250
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6251
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 6246
    :pswitch_0
    iput v2, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    .line 6247
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    goto :goto_0

    .line 6224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 6241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6082
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6115
    if-nez p1, :cond_0

    .line 6116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6118
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    .line 6119
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    .line 6120
    return-object p0
.end method

.method public setSyncStatus(I)Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6129
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    .line 6130
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    .line 6131
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
    .line 6195
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6196
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6198
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6199
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->syncStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6201
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6202
    return-void
.end method
