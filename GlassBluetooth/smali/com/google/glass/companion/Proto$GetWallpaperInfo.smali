.class public final Lcom/google/glass/companion/Proto$GetWallpaperInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetWallpaperInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GetWallpaperInfo;


# instance fields
.field private bitField0_:I

.field private sha1HashCode_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9119
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9120
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9125
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 9120
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9225
    new-instance v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9219
    new-instance v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    return-object v0
.end method


# virtual methods
.method public clearSha1HashCode()Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 9141
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 9142
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    .line 9143
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9148
    if-ne p1, p0, :cond_1

    .line 9152
    :cond_0
    :goto_0
    return v1

    .line 9149
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 9150
    check-cast v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 9151
    .local v0, "other":Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 9152
    goto :goto_0

    .line 9151
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 9152
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9178
    const/4 v0, 0x0

    .line 9179
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9180
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 9181
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 9183
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9184
    iput v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->cachedSize:I

    .line 9185
    return v0
.end method

.method public getSha1HashCode()[B
    .locals 1

    .prologue
    .line 9127
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    return-object v0
.end method

.method public hasSha1HashCode()Z
    .locals 1

    .prologue
    .line 9138
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

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
    .locals 4

    .prologue
    .line 9156
    const/16 v1, 0x11

    .line 9157
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 9163
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 9164
    return v1

    .line 9159
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 9160
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 9159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9163
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9194
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9198
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 9199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 9202
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9204
    :sswitch_0
    return-object p0

    .line 9209
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 9210
    iget v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    goto :goto_0

    .line 9194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 9116
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public setSha1HashCode([B)Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 9130
    if-nez p1, :cond_0

    .line 9131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9133
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    .line 9134
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    .line 9135
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
    .line 9169
    iget v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9170
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->sha1HashCode_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 9172
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9174
    return-void
.end method
