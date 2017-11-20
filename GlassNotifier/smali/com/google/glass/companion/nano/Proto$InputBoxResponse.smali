.class public final Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$InputBoxResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxResponse;


# instance fields
.field private bitField0_:I

.field private handlerObject_:[B

.field private response_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7153
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7154
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->clear()Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    .line 7155
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 2

    .prologue
    .line 7094
    sget-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-nez v0, :cond_1

    .line 7095
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7097
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-nez v0, :cond_0

    .line 7098
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    .line 7100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7102
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    return-object v0

    .line 7100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7264
    new-instance v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7258
    new-instance v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 7158
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    .line 7159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 7160
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    .line 7161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->cachedSize:I

    .line 7163
    return-object p0
.end method

.method public clearHandlerObject()Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 7138
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    .line 7139
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    .line 7140
    return-object p0
.end method

.method public clearResponse()Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 7116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 7117
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    .line 7118
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 7215
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7216
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7217
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 7218
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7220
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7221
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    .line 7222
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7224
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7168
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 7186
    :cond_0
    :goto_0
    return v1

    .line 7171
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 7174
    check-cast v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    .line 7175
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 7176
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7179
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    .line 7180
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7183
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7184
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 7186
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHandlerObject()[B
    .locals 1

    .prologue
    .line 7132
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7110
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    return-object v0
.end method

.method public hasHandlerObject()Z
    .locals 1

    .prologue
    .line 7135
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 7113
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

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
    .line 7191
    const/16 v0, 0x11

    .line 7192
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 7193
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 7194
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 7195
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7196
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 7197
    :goto_0
    add-int v0, v2, v1

    .line 7198
    return v0

    .line 7197
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7233
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7237
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7238
    :sswitch_0
    return-object p0

    .line 7243
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 7244
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    goto :goto_0

    .line 7248
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    .line 7249
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    goto :goto_0

    .line 7233
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 7088
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHandlerObject([B)Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 7143
    if-nez p1, :cond_0

    .line 7144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7146
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    .line 7147
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    .line 7148
    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$InputBoxResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7121
    if-nez p1, :cond_0

    .line 7122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7124
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 7125
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    .line 7126
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
    .line 7204
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7205
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7207
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7208
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->handlerObject_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 7210
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7211
    return-void
.end method
