.class public final Lcom/google/glass/companion/Proto$Media;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Media;


# instance fields
.field private bitField0_:I

.field private bytes_:[B

.field private mimeType_:Ljava/lang/String;

.field private sha1HashCode_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8122
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Media;

    sput-object v0, Lcom/google/glass/companion/Proto$Media;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Media;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8123
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8128
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 8150
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 8172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 8123
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8305
    new-instance v0, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Media;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8299
    new-instance v0, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Media;

    return-object v0
.end method


# virtual methods
.method public clearBytes()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 8144
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 8145
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 8146
    return-object p0
.end method

.method public clearMimeType()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 8188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 8189
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 8190
    return-object p0
.end method

.method public clearSha1HashCode()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 8166
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 8167
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 8168
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8195
    if-ne p1, p0, :cond_1

    .line 8201
    :cond_0
    :goto_0
    return v1

    .line 8196
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Media;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 8197
    check-cast v0, Lcom/google/glass/companion/Proto$Media;

    .line 8198
    .local v0, "other":Lcom/google/glass/companion/Proto$Media;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 8199
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 8200
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 8201
    goto :goto_0

    .line 8199
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 8200
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    .line 8201
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 8130
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8174
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8240
    const/4 v0, 0x0

    .line 8241
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8242
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 8243
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 8245
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8246
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 8247
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 8249
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8250
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 8251
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8253
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8254
    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->cachedSize:I

    .line 8255
    return v0
.end method

.method public getSha1HashCode()[B
    .locals 1

    .prologue
    .line 8152
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    return-object v0
.end method

.method public hasBytes()Z
    .locals 1

    .prologue
    .line 8141
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 8185
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSha1HashCode()Z
    .locals 1

    .prologue
    .line 8163
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 8205
    const/16 v1, 0x11

    .line 8206
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 8212
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 8218
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 8219
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_5

    :goto_1
    add-int v1, v2, v3

    .line 8220
    return v1

    .line 8208
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 8209
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 8208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8214
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 8215
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 8214
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 8218
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 8219
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8264
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8268
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    .line 8272
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8274
    :sswitch_0
    return-object p0

    .line 8279
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 8280
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 8284
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 8285
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 8289
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 8290
    iget v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    goto :goto_0

    .line 8264
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 8119
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Media;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Media;

    move-result-object v0

    return-object v0
.end method

.method public setBytes([B)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 8133
    if-nez p1, :cond_0

    .line 8134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8136
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    .line 8137
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 8138
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8177
    if-nez p1, :cond_0

    .line 8178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8180
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    .line 8181
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 8182
    return-object p0
.end method

.method public setSha1HashCode([B)Lcom/google/glass/companion/Proto$Media;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 8155
    if-nez p1, :cond_0

    .line 8156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8158
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    .line 8159
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    .line 8160
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
    .line 8225
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8226
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->bytes_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 8228
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8229
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->sha1HashCode_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 8231
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Media;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8232
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Media;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8234
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Media;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8236
    return-void
.end method
