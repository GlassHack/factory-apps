.class Lcom/google/glass/camera/exif/IfdData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/camera/exif/IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/camera/exif/IfdData;->mOffsetToNextIfd:I

    .line 47
    iput p1, p0, Lcom/google/glass/camera/exif/IfdData;->mIfdId:I

    .line 48
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/camera/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method protected checkCollision(S)Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 150
    :goto_0
    return v0

    .line 131
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 132
    goto :goto_0

    .line 134
    :cond_1
    instance-of v0, p1, Lcom/google/glass/camera/exif/IfdData;

    if-eqz v0, :cond_5

    .line 135
    check-cast p1, Lcom/google/glass/camera/exif/IfdData;

    .line 136
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getId()I

    move-result v0

    iget v3, p0, Lcom/google/glass/camera/exif/IfdData;->mIfdId:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getTagCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/camera/exif/IfdData;->getTagCount()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 137
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getAllTags()[Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v4

    .line 138
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    .line 139
    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v0

    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifTag;

    .line 143
    invoke-virtual {v6, v0}, Lcom/google/glass/camera/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 144
    goto :goto_0

    :cond_4
    move v0, v1

    .line 147
    goto :goto_0

    :cond_5
    move v0, v2

    .line 150
    goto :goto_0
.end method

.method protected getAllTags()[Lcom/google/glass/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/camera/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/camera/exif/ExifTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/glass/camera/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/glass/camera/exif/IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/google/glass/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/google/glass/camera/exif/IfdData;->mOffsetToNextIfd:I

    .line 113
    return-void
.end method

.method protected setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/google/glass/camera/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setIfd(I)V

    .line 87
    iget-object v0, p0, Lcom/google/glass/camera/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifTag;

    return-object v0
.end method
