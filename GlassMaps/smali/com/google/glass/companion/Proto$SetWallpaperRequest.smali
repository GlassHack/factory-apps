.class public final Lcom/google/glass/companion/Proto$SetWallpaperRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperRequest;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private wallpaper_:Lcom/google/glass/companion/Proto$Media;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8308
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8309
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8314
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8309
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8441
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8435
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    return-object v0
.end method


# virtual methods
.method public final clearId()Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8327
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8328
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    .line 8329
    return-object p0
.end method

.method public final clearWallpaper()Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8349
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8353
    if-ne p1, p0, :cond_1

    .line 8358
    :cond_0
    :goto_0
    return v0

    .line 8354
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 8355
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 8356
    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v2, :cond_3

    .line 8357
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 8358
    goto :goto_0

    .line 8356
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8357
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Media;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    .line 8358
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 8316
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8383
    const/4 v0, 0x0

    .line 8384
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8385
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8386
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8388
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v1, :cond_1

    .line 8389
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8390
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8392
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8393
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->cachedSize:I

    .line 8394
    return v0
.end method

.method public final getWallpaper()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 8335
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    return-object v0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 8324
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWallpaper()Z
    .locals 1

    .prologue
    .line 8345
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 8362
    .line 8363
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    add-int/lit16 v0, v0, 0x20f

    .line 8364
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 8365
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 8366
    return v0

    .line 8364
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Media;->hashCode()I

    move-result v0

    goto :goto_0

    .line 8365
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 2

    .prologue
    .line 8402
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8403
    sparse-switch v0, :sswitch_data_0

    .line 8407
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    .line 8411
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8413
    :sswitch_0
    return-object p0

    .line 8418
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8419
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    goto :goto_0

    .line 8423
    :sswitch_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v0, :cond_2

    .line 8424
    new-instance v0, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8426
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8403
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8305
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setId(I)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8319
    iput p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8320
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    .line 8321
    return-object p0
.end method

.method public final setWallpaper(Lcom/google/glass/companion/Proto$Media;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8338
    if-nez p1, :cond_0

    .line 8339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8341
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8342
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8371
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8372
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8374
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v0, :cond_1

    .line 8375
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8377
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8379
    return-void
.end method
