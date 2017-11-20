.class public final Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ImageDownloadResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;


# instance fields
.field private bitField0_:I

.field private image_:[B

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->clear()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    .line 76
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    .line 80
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    .line 81
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->cachedSize:I

    .line 84
    return-object p0
.end method

.method public clearImage()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    .line 41
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    .line 42
    return-object p0
.end method

.method public clearStatus()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    .line 69
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 137
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    .line 139
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    .line 143
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    .line 96
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    .line 97
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    if-ne v3, v4, :cond_0

    .line 104
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getImage()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

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
    .line 112
    const/16 v0, 0x11

    .line 113
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 114
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 115
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    add-int v0, v1, v2

    .line 116
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 117
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    add-int v0, v2, v1

    .line 119
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 154
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    :sswitch_0
    return-object p0

    .line 164
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    .line 165
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    goto :goto_0

    .line 169
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 170
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 171
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 178
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 179
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 174
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    .line 175
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 171
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public setImage([B)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    .line 49
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    .line 50
    return-object p0
.end method

.method public setStatus(I)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    .line 60
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    .line 61
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
    .line 125
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->image_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 128
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 129
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 131
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 132
    return-void
.end method
