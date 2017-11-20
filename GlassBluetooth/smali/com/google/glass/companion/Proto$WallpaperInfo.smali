.class public final Lcom/google/glass/companion/Proto$WallpaperInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WallpaperInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WallpaperInfo;


# instance fields
.field private wallpaper_:Lcom/google/glass/companion/Proto$Media;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9233
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$WallpaperInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$WallpaperInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WallpaperInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9234
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9331
    new-instance v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WallpaperInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$WallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9325
    new-instance v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WallpaperInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    return-object v0
.end method


# virtual methods
.method public clearWallpaper()Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1

    .prologue
    .line 9252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 9253
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9257
    if-ne p1, p0, :cond_1

    .line 9261
    :cond_0
    :goto_0
    return v1

    .line 9258
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 9259
    check-cast v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 9260
    .local v0, "other":Lcom/google/glass/companion/Proto$WallpaperInfo;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 9261
    goto :goto_0

    .line 9260
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Media;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 9261
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9282
    const/4 v0, 0x0

    .line 9283
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v1, :cond_0

    .line 9284
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 9285
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9287
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9288
    iput v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->cachedSize:I

    .line 9289
    return v0
.end method

.method public getWallpaper()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 9239
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    return-object v0
.end method

.method public hasWallpaper()Z
    .locals 1

    .prologue
    .line 9249
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

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
    const/4 v2, 0x0

    .line 9265
    const/16 v0, 0x11

    .line 9266
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 9267
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 9268
    return v0

    .line 9266
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Media;->hashCode()I

    move-result v1

    goto :goto_0

    .line 9267
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9297
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9298
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9302
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 9303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 9306
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9308
    :sswitch_0
    return-object p0

    .line 9313
    :sswitch_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v1, :cond_2

    .line 9314
    new-instance v1, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 9316
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9298
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
    .line 9230
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$WallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaper(Lcom/google/glass/companion/Proto$Media;)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Media;

    .prologue
    .line 9242
    if-nez p1, :cond_0

    .line 9243
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9245
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 9246
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
    .line 9273
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v0, :cond_0

    .line 9274
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9276
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9278
    return-void
.end method
