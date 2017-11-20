.class Lcom/google/glass/camera/exif/ExifData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/camera/exif/ExifData;->USER_COMMENT_ASCII:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/glass/camera/exif/ExifData;->USER_COMMENT_JIS:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/glass/camera/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    .line 36
    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 42
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/camera/exif/IfdData;

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 53
    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/google/glass/camera/exif/IfdData;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 140
    return-void
.end method

.method protected addTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifData;->addTag(Lcom/google/glass/camera/exif/ExifTag;I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected addTag(Lcom/google/glass/camera/exif/ExifTag;I)Lcom/google/glass/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/google/glass/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifData;->getOrCreateIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 318
    if-ne p0, p1, :cond_1

    move v3, v4

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 321
    :cond_1
    if-eqz p1, :cond_0

    .line 324
    instance-of v0, p1, Lcom/google/glass/camera/exif/ExifData;

    if-eqz v0, :cond_0

    .line 325
    check-cast p1, Lcom/google/glass/camera/exif/ExifData;

    .line 326
    iget-object v0, p1, Lcom/google/glass/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/glass/camera/exif/ExifData;->mThumbnail:[B

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mThumbnail:[B

    .line 328
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 332
    iget-object v0, p1, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 336
    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 337
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v1

    .line 338
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v2

    .line 339
    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v3, v4

    .line 343
    goto :goto_0
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 258
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/IfdData;->getAllTags()[Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_0

    .line 261
    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    aget-object v8, v6, v1

    .line 262
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 268
    const/4 v0, 0x0

    .line 270
    :cond_2
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    aget-object v1, v1, p1

    .line 279
    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/IfdData;->getAllTags()[Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v3

    .line 283
    if-eqz v3, :cond_0

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 288
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 293
    goto :goto_0
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 5

    .prologue
    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 303
    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {v4, p1}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v4

    .line 305
    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 311
    const/4 v0, 0x0

    .line 313
    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/google/glass/camera/exif/IfdData;
    .locals 1

    .prologue
    .line 128
    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    aget-object v0, v0, p1

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOrCreateIfdData(I)Lcom/google/glass/camera/exif/IfdData;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    aget-object v0, v0, p1

    .line 148
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/google/glass/camera/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/exif/IfdData;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    aput-object v0, v1, p1

    .line 152
    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/google/glass/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    aget-object v0, v0, p2

    .line 161
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 217
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    aget-object v1, v1, v4

    .line 218
    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v2}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    new-array v2, v2, [B

    .line 230
    invoke-virtual {v1, v2}, Lcom/google/glass/camera/exif/ExifTag;->getBytes([B)V

    .line 232
    new-array v1, v3, [B

    .line 233
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :try_start_0
    sget-object v3, Lcom/google/glass/camera/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x8

    array-length v4, v2

    add-int/lit8 v4, v4, -0x8

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 238
    :cond_2
    sget-object v3, Lcom/google/glass/camera/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x8

    array-length v4, v2

    add-int/lit8 v4, v4, -0x8

    const-string v5, "EUC-JP"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 240
    :cond_3
    sget-object v3, Lcom/google/glass/camera/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/String;

    const/16 v3, 0x8

    array-length v4, v2

    add-int/lit8 v4, v4, -0x8

    const-string v5, "UTF-16"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    const-string v1, "ExifData"

    const-string v2, "Failed to decode the user comment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeTag(SI)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    aget-object v0, v0, p2

    .line 206
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    goto :goto_0
.end method

.method protected removeThumbnailData()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifData;->clearThumbnailAndStrips()V

    .line 198
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mIfdDatas:[Lcom/google/glass/camera/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 199
    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifData;->mThumbnail:[B

    .line 70
    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
