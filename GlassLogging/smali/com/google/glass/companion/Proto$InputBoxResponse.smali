.class public final Lcom/google/glass/companion/Proto$InputBoxResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxResponse;


# instance fields
.field private bitField0_:I

.field private handlerObject_:[B

.field private response_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6135
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$InputBoxResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6136
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 6163
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 6136
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6277
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6271
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-object v0
.end method


# virtual methods
.method public clearHandlerObject()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 6179
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 6180
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 6181
    return-object p0
.end method

.method public clearResponse()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 6157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 6158
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 6159
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6186
    if-ne p1, p0, :cond_1

    .line 6191
    :cond_0
    :goto_0
    return v1

    .line 6187
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 6188
    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 6189
    .local v0, "other":Lcom/google/glass/companion/Proto$InputBoxResponse;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 6190
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 6191
    goto :goto_0

    .line 6189
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 6190
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    .line 6191
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getHandlerObject()[B
    .locals 1

    .prologue
    .line 6165
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6143
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6221
    const/4 v0, 0x0

    .line 6222
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6223
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 6224
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6226
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6227
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 6228
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6230
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6231
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    .line 6232
    return v0
.end method

.method public hasHandlerObject()Z
    .locals 1

    .prologue
    .line 6176
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

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
    .line 6154
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 6195
    const/16 v1, 0x11

    .line 6196
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 6197
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 6203
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_3

    :goto_1
    add-int v1, v2, v3

    .line 6204
    return v1

    .line 6196
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 6199
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 6200
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 6199
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6203
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6240
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6241
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6245
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    .line 6249
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6251
    :sswitch_0
    return-object p0

    .line 6256
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 6257
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    goto :goto_0

    .line 6261
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 6262
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    goto :goto_0

    .line 6241
    nop

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
    .line 6132
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHandlerObject([B)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 6168
    if-nez p1, :cond_0

    .line 6169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6171
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 6172
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 6173
    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6146
    if-nez p1, :cond_0

    .line 6147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6149
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 6150
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 6151
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
    .line 6209
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6210
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6212
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6213
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 6215
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6217
    return-void
.end method
