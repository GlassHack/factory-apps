.class public final Lcom/google/glass/companion/Proto$WallpaperInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WallpaperInfo;


# instance fields
.field private wallpaper_:Lcom/google/glass/companion/Proto$Media;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8717
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$WallpaperInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$WallpaperInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WallpaperInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8718
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1

    .prologue
    .line 8815
    new-instance v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WallpaperInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$WallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1

    .prologue
    .line 8809
    new-instance v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WallpaperInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    return-object v0
.end method


# virtual methods
.method public final clearWallpaper()Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1

    .prologue
    .line 8736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8737
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8741
    if-ne p1, p0, :cond_1

    .line 8745
    :cond_0
    :goto_0
    return v0

    .line 8742
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 8743
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 8744
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 8745
    goto :goto_0

    .line 8744
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Media;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 8745
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 8766
    const/4 v0, 0x0

    .line 8767
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v1, :cond_0

    .line 8768
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8769
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8771
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8772
    iput v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->cachedSize:I

    .line 8773
    return v0
.end method

.method public final getWallpaper()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 8723
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    return-object v0
.end method

.method public final hasWallpaper()Z
    .locals 1

    .prologue
    .line 8733
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

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

    .line 8749
    .line 8750
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 8751
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 8752
    return v0

    .line 8750
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Media;->hashCode()I

    move-result v0

    goto :goto_0

    .line 8751
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 2

    .prologue
    .line 8781
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8782
    sparse-switch v0, :sswitch_data_0

    .line 8786
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8787
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    .line 8790
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8792
    :sswitch_0
    return-object p0

    .line 8797
    :sswitch_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v0, :cond_2

    .line 8798
    new-instance v0, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8800
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8782
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8714
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$WallpaperInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setWallpaper(Lcom/google/glass/companion/Proto$Media;)Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1

    .prologue
    .line 8726
    if-nez p1, :cond_0

    .line 8727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8729
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8730
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 8757
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v0, :cond_0

    .line 8758
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8760
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$WallpaperInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8762
    return-void
.end method
