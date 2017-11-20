.class Lcom/google/glass/camera/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/google/glass/camera/exif/ExifData;

.field private final mInterface:Lcom/google/glass/camera/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/google/glass/camera/exif/ExifInterface;)V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mState:I

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    .line 82
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 87
    iput-object p2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    .line 88
    return-void
.end method

.method private calculateAllOffset()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 435
    const/16 v0, 0x8

    .line 436
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v2

    .line 437
    invoke-direct {p0, v2, v0}, Lcom/google/glass/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/google/glass/camera/exif/IfdData;I)I

    move-result v0

    .line 438
    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue(I)Z

    .line 440
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v3

    .line 441
    invoke-direct {p0, v3, v0}, Lcom/google/glass/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/google/glass/camera/exif/IfdData;I)I

    move-result v0

    .line 443
    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v4

    .line 444
    if-eqz v4, :cond_0

    .line 445
    sget v5, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v3

    .line 446
    invoke-virtual {v3, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue(I)Z

    .line 447
    invoke-direct {p0, v4, v0}, Lcom/google/glass/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/google/glass/camera/exif/IfdData;I)I

    move-result v0

    .line 450
    :cond_0
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v3

    .line 451
    if-eqz v3, :cond_1

    .line 452
    sget v4, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue(I)Z

    .line 453
    invoke-direct {p0, v3, v0}, Lcom/google/glass/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/google/glass/camera/exif/IfdData;I)I

    move-result v0

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v3

    .line 457
    if-eqz v3, :cond_2

    .line 458
    invoke-virtual {v2, v0}, Lcom/google/glass/camera/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 459
    invoke-direct {p0, v3, v0}, Lcom/google/glass/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/google/glass/camera/exif/IfdData;I)I

    move-result v0

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    .line 465
    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue(I)Z

    .line 466
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v0

    .line 477
    :goto_0
    return v1

    .line 467
    :cond_3
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 468
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/ExifData;->getStripCount()I

    move-result v2

    .line 469
    new-array v2, v2, [J

    move v6, v1

    move v1, v0

    move v0, v6

    .line 470
    :goto_1
    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 471
    int-to-long v4, v1

    aput-wide v4, v2, v0

    .line 472
    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v4, v0}, Lcom/google/glass/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_4
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/exif/ExifTag;->setValue([J)Z

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method private calculateOffsetOfIfd(Lcom/google/glass/camera/exif/IfdData;I)I
    .locals 8

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int v1, p2, v0

    .line 311
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getAllTags()[Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v2

    .line 312
    array-length v3, v2

    const/4 v0, 0x0

    move v7, v0

    move v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 313
    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifTag;->getDataSize()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 314
    invoke-virtual {v4, v0}, Lcom/google/glass/camera/exif/ExifTag;->setOffset(I)V

    .line 315
    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifTag;->getDataSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 312
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    return v0
.end method

.method private createRequiredIfdAndTag()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x2f

    .line 323
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    .line 324
    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/google/glass/camera/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/google/glass/camera/exif/IfdData;-><init>(I)V

    .line 326
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifData;->addIfdData(Lcom/google/glass/camera/exif/IfdData;)V

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v3}, Lcom/google/glass/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    .line 329
    if-nez v1, :cond_1

    .line 330
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 336
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1, v4}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v1

    .line 337
    if-nez v1, :cond_2

    .line 338
    new-instance v1, Lcom/google/glass/camera/exif/IfdData;

    invoke-direct {v1, v4}, Lcom/google/glass/camera/exif/IfdData;-><init>(I)V

    .line 339
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v3, v1}, Lcom/google/glass/camera/exif/ExifData;->addIfdData(Lcom/google/glass/camera/exif/IfdData;)V

    .line 343
    :cond_2
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v3

    .line 344
    if-eqz v3, :cond_4

    .line 345
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    sget v4, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v3

    .line 346
    if-nez v3, :cond_3

    .line 347
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_6

    .line 356
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 357
    invoke-virtual {v0, v3}, Lcom/google/glass/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 358
    if-nez v0, :cond_5

    .line 359
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_5
    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, v5}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 370
    if-nez v0, :cond_7

    .line 371
    new-instance v0, Lcom/google/glass/camera/exif/IfdData;

    invoke-direct {v0, v5}, Lcom/google/glass/camera/exif/IfdData;-><init>(I)V

    .line 372
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifData;->addIfdData(Lcom/google/glass/camera/exif/IfdData;)V

    .line 375
    :cond_7
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 376
    invoke-virtual {v1, v2}, Lcom/google/glass/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    .line 377
    if-nez v1, :cond_8

    .line 378
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_8
    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 383
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 384
    invoke-virtual {v1, v2}, Lcom/google/glass/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    .line 385
    if-nez v1, :cond_9

    .line 386
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_9
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/exif/ExifTag;->setValue(I)Z

    .line 391
    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 394
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    .line 395
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    .line 432
    :cond_a
    :goto_0
    return-void

    .line 396
    :cond_b
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 397
    if-nez v0, :cond_c

    .line 398
    new-instance v0, Lcom/google/glass/camera/exif/IfdData;

    invoke-direct {v0, v5}, Lcom/google/glass/camera/exif/IfdData;-><init>(I)V

    .line 399
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifData;->addIfdData(Lcom/google/glass/camera/exif/IfdData;)V

    .line 401
    :cond_c
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifData;->getStripCount()I

    move-result v1

    .line 402
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    sget v4, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v3

    .line 403
    if-nez v3, :cond_d

    .line 404
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_d
    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    sget v5, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 408
    invoke-virtual {v4, v5}, Lcom/google/glass/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v4

    .line 409
    if-nez v4, :cond_e

    .line 410
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No definition for crucial exif tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_e
    new-array v5, v1, [J

    move v1, v2

    .line 414
    :goto_1
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/ExifData;->getStripCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 415
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    aput-wide v6, v5, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_f
    invoke-virtual {v4, v5}, Lcom/google/glass/camera/exif/ExifTag;->setValue([J)Z

    .line 418
    invoke-virtual {v0, v3}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 419
    invoke-virtual {v0, v4}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 421
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    .line 422
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 423
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 422
    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0

    .line 424
    :cond_10
    if-eqz v0, :cond_a

    .line 426
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    .line 427
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    .line 428
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    .line 429
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 430
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 429
    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v0, p1, v0

    .line 108
    if-le p4, v0, :cond_0

    move p4, v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    return p4
.end method

.method private stripNullValueTags(Lcom/google/glass/camera/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifTag;

    .line 246
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/google/glass/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/glass/camera/exif/ExifData;->removeTag(SI)V

    .line 248
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    return-object v1
.end method

.method private writeAllTags(Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeIfd(Lcom/google/glass/camera/exif/IfdData;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 266
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeIfd(Lcom/google/glass/camera/exif/IfdData;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 267
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, v0, p1}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeIfd(Lcom/google/glass/camera/exif/IfdData;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeIfd(Lcom/google/glass/camera/exif/IfdData;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeIfd(Lcom/google/glass/camera/exif/IfdData;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 279
    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-direct {p0, v0}, Lcom/google/glass/camera/exif/ExifOutputStream;->stripNullValueTags(Lcom/google/glass/camera/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 218
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    .line 219
    add-int/lit8 v2, v1, 0x8

    const v3, 0xffff

    if-le v2, v3, :cond_2

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exif header is too large (>64Kb)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    new-instance v2, Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 223
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 224
    const/16 v3, -0x1f

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 225
    add-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 226
    const v1, 0x45786966

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 228
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v3, :cond_3

    .line 229
    const/16 v1, 0x4d4d

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 234
    const/16 v1, 0x2a

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 235
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 236
    invoke-direct {p0, v2}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeAllTags(Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 237
    invoke-direct {p0, v2}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeThumbnail(Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifTag;

    .line 239
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/google/glass/camera/exif/ExifData;->addTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    goto :goto_1

    .line 231
    :cond_3
    const/16 v1, 0x4949

    invoke-virtual {v2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    goto :goto_0
.end method

.method private writeIfd(Lcom/google/glass/camera/exif/IfdData;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getAllTags()[Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v3

    .line 284
    array-length v1, v3

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 285
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 286
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 287
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 288
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 292
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 293
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 285
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {v1, p2}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeTagValue(Lcom/google/glass/camera/exif/ExifTag;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 296
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifTag;->getDataSize()I

    move-result v1

    rsub-int/lit8 v5, v1, 0x4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_0

    .line 297
    invoke-virtual {p2, v0}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/IfdData;->getOffsetToNextIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 302
    array-length v1, v3

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, v3, v0

    .line 303
    invoke-virtual {v2}, Lcom/google/glass/camera/exif/ExifTag;->getDataSize()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 304
    invoke-static {v2, p2}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeTagValue(Lcom/google/glass/camera/exif/ExifTag;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V

    .line 302
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 307
    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/google/glass/camera/exif/ExifTag;Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 484
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifTag;->getStringByte()[B

    move-result-object v1

    .line 485
    array-length v2, v1

    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 486
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    .line 487
    invoke-virtual {p1, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 490
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 495
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    .line 496
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 501
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    .line 502
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifTag;->getRational(I)Lcom/google/glass/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeRational(Lcom/google/glass/camera/exif/Rational;)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 507
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifTag;->getBytes([B)V

    .line 509
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 512
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/google/glass/camera/exif/OrderedDataOutputStream;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/google/glass/camera/exif/OrderedDataOutputStream;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 262
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getExifData()Lcom/google/glass/camera/exif/ExifData;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    return-object v0
.end method

.method protected setExifData(Lcom/google/glass/camera/exif/ExifData;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mExifData:Lcom/google/glass/camera/exif/ExifData;

    .line 96
    return-void
.end method

.method public write(I)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifOutputStream;->write([B)V

    .line 199
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/camera/exif/ExifOutputStream;->write([BII)V

    .line 207
    return-void
.end method

.method public write([BII)V
    .locals 6

    .prologue
    const v5, 0xffff

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 119
    :goto_0
    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mState:I

    if-eq v0, v2, :cond_b

    :cond_0
    if-lez p3, :cond_b

    .line 121
    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v0, :cond_1

    .line 122
    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-le p3, v0, :cond_4

    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 123
    :goto_1
    sub-int/2addr p3, v0

    .line 124
    iget v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 125
    add-int/2addr p2, v0

    .line 127
    :cond_1
    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_2

    .line 128
    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-le p3, v0, :cond_5

    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToCopy:I

    .line 129
    :goto_2
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    sub-int/2addr p3, v0

    .line 131
    iget v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToCopy:I

    .line 132
    add-int/2addr p2, v0

    .line 134
    :cond_2
    if-nez p3, :cond_6

    .line 189
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, p3

    .line 122
    goto :goto_1

    :cond_5
    move v0, p3

    .line 128
    goto :goto_2

    .line 137
    :cond_6
    iget v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/glass/camera/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 140
    add-int/2addr p2, v0

    .line 141
    sub-int/2addr p3, v0

    .line 142
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 145
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_7

    .line 147
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 150
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mState:I

    .line 151
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifOutputStream;->writeExifData()V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/google/glass/camera/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 158
    add-int/2addr p2, v0

    .line 159
    sub-int/2addr p3, v0

    .line 161
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 162
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 163
    const/16 v1, -0x27

    if-ne v0, v1, :cond_8

    .line 164
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 171
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 173
    const/16 v1, -0x1f

    if-ne v0, v1, :cond_9

    .line 174
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 175
    iput v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mState:I

    .line 183
    :goto_4
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 176
    :cond_9
    invoke-static {v0}, Lcom/google/glass/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    if-nez v0, :cond_a

    .line 177
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_4

    .line 180
    :cond_a
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iput v2, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->mState:I

    goto :goto_4

    .line 186
    :cond_b
    if-lez p3, :cond_3

    .line 187
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
