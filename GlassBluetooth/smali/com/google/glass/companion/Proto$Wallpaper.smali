.class public final Lcom/google/glass/companion/Proto$Wallpaper;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wallpaper"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Wallpaper;


# instance fields
.field private bitField0_:I

.field private wallpaperBytes_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8008
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Wallpaper;

    sput-object v0, Lcom/google/glass/companion/Proto$Wallpaper;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Wallpaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8009
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8014
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    .line 8009
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Wallpaper;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8114
    new-instance v0, Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Wallpaper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Wallpaper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Wallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Wallpaper;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8108
    new-instance v0, Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Wallpaper;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Wallpaper;

    return-object v0
.end method


# virtual methods
.method public clearWallpaperBytes()Lcom/google/glass/companion/Proto$Wallpaper;
    .locals 1

    .prologue
    .line 8030
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    .line 8031
    iget v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    .line 8032
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8037
    if-ne p1, p0, :cond_1

    .line 8041
    :cond_0
    :goto_0
    return v1

    .line 8038
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 8039
    check-cast v0, Lcom/google/glass/companion/Proto$Wallpaper;

    .line 8040
    .local v0, "other":Lcom/google/glass/companion/Proto$Wallpaper;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 8041
    goto :goto_0

    .line 8040
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    .line 8041
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8067
    const/4 v0, 0x0

    .line 8068
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8069
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    .line 8070
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 8072
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8073
    iput v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->cachedSize:I

    .line 8074
    return v0
.end method

.method public getWallpaperBytes()[B
    .locals 1

    .prologue
    .line 8016
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    return-object v0
.end method

.method public hasWallpaperBytes()Z
    .locals 1

    .prologue
    .line 8027
    iget v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

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
    .line 8045
    const/16 v1, 0x11

    .line 8046
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 8052
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 8053
    return v1

    .line 8048
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 8049
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 8048
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8052
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Wallpaper;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8082
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8083
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8087
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8088
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    .line 8091
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8093
    :sswitch_0
    return-object p0

    .line 8098
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    .line 8099
    iget v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    goto :goto_0

    .line 8083
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
    .line 8005
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Wallpaper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Wallpaper;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperBytes([B)Lcom/google/glass/companion/Proto$Wallpaper;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 8019
    if-nez p1, :cond_0

    .line 8020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8022
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    .line 8023
    iget v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    .line 8024
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
    .line 8058
    iget v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8059
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Wallpaper;->wallpaperBytes_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 8061
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Wallpaper;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8063
    return-void
.end method
