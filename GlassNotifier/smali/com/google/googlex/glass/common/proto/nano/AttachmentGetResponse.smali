.class public final Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AttachmentGetResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse$ResponseCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;


# instance fields
.field private bitField0_:I

.field private content_:[B

.field private mimeType_:Ljava/lang/String;

.field private responseCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    .line 98
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    .line 102
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->cachedSize:I

    .line 107
    return-object p0
.end method

.method public clearContent()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    .line 82
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    .line 83
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1

    .prologue
    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 60
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    .line 61
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    .line 47
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 168
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    .line 170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 173
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 177
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    .line 178
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 118
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    .line 119
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    if-ne v3, v4, :cond_0

    .line 123
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    .line 128
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseCode()Z
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

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
    .line 139
    const/16 v0, 0x11

    .line 140
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 141
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    add-int v0, v1, v2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 145
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 146
    :goto_0
    add-int v0, v2, v1

    .line 147
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 189
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 193
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    :sswitch_0
    return-object p0

    .line 199
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 200
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 201
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 208
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 209
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 204
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    .line 205
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 215
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 216
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 220
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    .line 221
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setContent([B)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    .line 90
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    .line 91
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 68
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    .line 69
    return-object p0
.end method

.method public setResponseCode(I)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    .line 38
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    .line 39
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
    .line 153
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 156
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 159
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetResponse;->content_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 162
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 163
    return-void
.end method
