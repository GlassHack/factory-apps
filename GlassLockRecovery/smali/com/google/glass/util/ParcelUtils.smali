.class public final Lcom/google/glass/util/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBitmapFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/glass/util/ParcelUtils;->readByteArrayFromParcel(Landroid/os/Parcel;)[B

    move-result-object v0

    .line 102
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static readBooleanFromParcel(Landroid/os/Parcel;)Z
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readByteArrayFromParcel(Landroid/os/Parcel;)[B
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "length":I
    if-lez v1, :cond_0

    .line 86
    new-array v0, v1, [B

    .line 87
    .local v0, "ba":[B
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 90
    .end local v0    # "ba":[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readStringArrayFromParcel(Landroid/os/Parcel;)[Ljava/lang/String;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 53
    new-array v1, v0, [Ljava/lang/String;

    .line 54
    .local v1, "value":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 57
    .end local v1    # "value":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readStringListFromParcel(Landroid/os/Parcel;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    .local v0, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 38
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static writeBitmapToParcel(Landroid/os/Parcel;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/glass/util/ParcelUtils;->writeByteArrayToParcel(Landroid/os/Parcel;[B)V

    .line 98
    return-void
.end method

.method public static writeBooleanToParcel(Landroid/os/Parcel;Z)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .prologue
    .line 20
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeByteArrayToParcel(Landroid/os/Parcel;[B)V
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "ba"    # [B

    .prologue
    const/4 v1, 0x0

    .line 75
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_0
.end method

.method public static writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "parcelable"    # Landroid/os/Parcelable;
    .param p2, "flags"    # I

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method

.method public static writeStringArrayToParcel(Landroid/os/Parcel;[Ljava/lang/String;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "value"    # [Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeStringListToParcel(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 0
    .param p0, "p"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public static writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
