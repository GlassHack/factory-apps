.class Lcom/google/glass/camera/exif/ExifParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/google/glass/camera/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/google/glass/camera/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/google/glass/camera/exif/ExifTag;

.field private mTag:Lcom/google/glass/camera/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 165
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 166
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 167
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_GPS_IFD:S

    .line 168
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 169
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 170
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 171
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 172
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 173
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 174
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 175
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 176
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 177
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    .line 176
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/google/glass/camera/exif/ExifInterface;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput v4, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 149
    iput v4, p0, Lcom/google/glass/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 157
    iput-boolean v4, p0, Lcom/google/glass/camera/exif/ExifParser;->mContainExifData:Z

    .line 159
    iput v4, p0, Lcom/google/glass/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 179
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null argument inputStream to ExifParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iput-object p3, p0, Lcom/google/glass/camera/exif/ExifParser;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    .line 210
    invoke-direct {p0, p1}, Lcom/google/glass/camera/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mContainExifData:Z

    .line 211
    new-instance v0, Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    .line 212
    iput p2, p0, Lcom/google/glass/camera/exif/ExifParser;->mOptions:I

    .line 213
    iget-boolean v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mContainExifData:Z

    if-nez v0, :cond_2

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->parseTiffHeader()V

    .line 218
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 219
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 220
    new-instance v2, Lcom/google/glass/camera/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/glass/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfd0Position:I

    .line 223
    iput v4, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    .line 224
    invoke-direct {p0, v4}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_4
    invoke-direct {p0, v4, v0, v1}, Lcom/google/glass/camera/exif/ExifParser;->registerIfd(IJ)V

    .line 226
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 227
    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mDataAboveIfd0:[B

    .line 228
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->read([B)I

    goto :goto_0
.end method

.method private checkAllowed(II)Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 639
    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    .line 642
    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v0

    goto :goto_0
.end method

.method private checkOffsetOrImageTag(Lcom/google/glass/camera/exif/ExifTag;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v1

    .line 591
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getIfd()I

    move-result v2

    .line 592
    sget-short v3, Lcom/google/glass/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    if-ne v1, v3, :cond_3

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    invoke-direct {p0, v5}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 594
    invoke-direct {p0, v4}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/google/glass/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 597
    :cond_3
    sget-short v3, Lcom/google/glass/camera/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v1, v3, :cond_4

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 598
    invoke-direct {p0, v6}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/google/glass/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 601
    :cond_4
    sget-short v3, Lcom/google/glass/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v1, v3, :cond_5

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 602
    invoke-direct {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 603
    invoke-direct {p0, v4}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/google/glass/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 606
    :cond_5
    sget-short v3, Lcom/google/glass/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v1, v3, :cond_6

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 607
    invoke-direct {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 608
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/camera/exif/ExifParser;->registerCompressedImage(J)V

    goto :goto_0

    .line 611
    :cond_6
    sget-short v3, Lcom/google/glass/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v1, v3, :cond_7

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 612
    invoke-direct {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 613
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifParser;->mJpegSizeTag:Lcom/google/glass/camera/exif/ExifTag;

    goto/16 :goto_0

    .line 616
    :cond_7
    sget-short v3, Lcom/google/glass/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v1, v3, :cond_a

    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 617
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 619
    :goto_1
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 620
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v1

    if-ne v1, v4, :cond_8

    .line 621
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 619
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_2

    .line 627
    :cond_9
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;

    invoke-direct {v3, p1, v0}, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/google/glass/camera/exif/ExifTag;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 630
    :cond_a
    sget-short v0, Lcom/google/glass/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v1, v0, :cond_0

    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 631
    invoke-direct {p0, v2, v0}, Lcom/google/glass/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifParser;->mStripSizeTag:Lcom/google/glass/camera/exif/ExifTag;

    goto/16 :goto_0
.end method

.method private isIfdRequested(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 184
    :pswitch_0
    iget v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 186
    :pswitch_1
    iget v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 188
    :pswitch_2
    iget v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 190
    :pswitch_3
    iget v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 192
    :pswitch_4
    iget v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 392
    iget v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    packed-switch v2, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 394
    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    invoke-direct {p0, v3}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    invoke-direct {p0, v1}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/google/glass/camera/exif/ExifInterface;)Lcom/google/glass/camera/exif/ExifParser;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/google/glass/camera/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/google/glass/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/google/glass/camera/exif/ExifInterface;)Lcom/google/glass/camera/exif/ExifParser;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/google/glass/camera/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/google/glass/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 739
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 747
    :goto_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    .line 748
    new-instance v0, Lcom/google/glass/camera/exif/ExifInvalidFormatException;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 744
    :cond_1
    new-instance v0, Lcom/google/glass/camera/exif/ExifInvalidFormatException;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_2
    return-void
.end method

.method private readTag()Lcom/google/glass/camera/exif/ExifTag;
    .locals 12

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 534
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 535
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 536
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v7

    .line 537
    cmp-long v0, v7, v10

    if-lez v0, :cond_0

    .line 538
    new-instance v0, Lcom/google/glass/camera/exif/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    invoke-static {v2}, Lcom/google/glass/camera/exif/ExifTag;->isValidType(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    const-string v0, "ExifParser"

    const-string v3, "Tag %04x: Invalid data type %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->skip(J)J

    .line 545
    const/4 v0, 0x0

    .line 578
    :goto_0
    return-object v0

    .line 548
    :cond_1
    new-instance v0, Lcom/google/glass/camera/exif/ExifTag;

    long-to-int v3, v7

    iget v4, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    long-to-int v9, v7

    if-eqz v9, :cond_2

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/google/glass/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 550
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getDataSize()I

    move-result v1

    .line 551
    const/4 v3, 0x4

    if-le v1, v3, :cond_5

    .line 552
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 553
    cmp-long v1, v3, v10

    if-lez v1, :cond_3

    .line 554
    new-instance v0, Lcom/google/glass/camera/exif/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v5, v6

    .line 548
    goto :goto_1

    .line 559
    :cond_3
    iget v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfd0Position:I

    int-to-long v9, v1

    cmp-long v1, v3, v9

    if-gez v1, :cond_4

    const/4 v1, 0x7

    if-ne v2, v1, :cond_4

    .line 560
    long-to-int v1, v7

    new-array v1, v1, [B

    .line 561
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v3, v3

    add-int/lit8 v3, v3, -0x8

    long-to-int v4, v7

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifTag;->setValue([B)Z

    goto :goto_0

    .line 565
    :cond_4
    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifTag;->setOffset(I)V

    goto :goto_0

    .line 568
    :cond_5
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->hasDefinedCount()Z

    move-result v2

    .line 570
    invoke-virtual {v0, v6}, Lcom/google/glass/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 572
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->readFullTagValue(Lcom/google/glass/camera/exif/ExifTag;)V

    .line 573
    invoke-virtual {v0, v2}, Lcom/google/glass/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 574
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/camera/exif/CountedDataInputStream;->skip(J)J

    .line 576
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifTag;->setOffset(I)V

    goto :goto_0
.end method

.method private registerCompressedImage(J)V
    .locals 4

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 754
    new-instance v3, Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-direct {v3, p1}, Lcom/google/glass/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 755
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, -0x28

    if-eq v1, v2, :cond_0

    .line 756
    new-instance v0, Lcom/google/glass/camera/exif/ExifInvalidFormatException;

    const-string v1, "Invalid JPEG format"

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    move v2, v1

    .line 760
    :goto_0
    const/16 v1, -0x27

    if-eq v2, v1, :cond_1

    .line 761
    invoke-static {v2}, Lcom/google/glass/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_1

    .line 762
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    .line 765
    const/16 v4, -0x1f

    if-ne v2, v4, :cond_2

    .line 766
    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 769
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readInt()I

    move-result v2

    .line 770
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v4

    .line 771
    add-int/lit8 v1, v1, -0x6

    .line 772
    const v5, 0x45786966

    if-ne v2, v5, :cond_2

    if-nez v4, :cond_2

    .line 773
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    iput v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStartPosition:I

    .line 774
    iput v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mApp1End:I

    .line 775
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStartPosition:I

    iget v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mApp1End:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 776
    const/4 v0, 0x1

    .line 786
    :cond_1
    :goto_1
    return v0

    .line 780
    :cond_2
    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    add-int/lit8 v2, v1, -0x2

    int-to-long v4, v2

    add-int/lit8 v1, v1, -0x2

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-eqz v1, :cond_4

    .line 781
    :cond_3
    const-string v1, "ExifParser"

    const-string v2, "Invalid JPEG format."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 784
    :cond_4
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v1

    move v2, v1

    .line 785
    goto :goto_0
.end method

.method private skipTo(I)V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->skipTo(J)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 490
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mJpegSizeTag:Lcom/google/glass/camera/exif/ExifTag;

    if-nez v1, :cond_0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mJpegSizeTag:Lcom/google/glass/camera/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mStripCount:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mImageEvent:Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mStripSizeTag:Lcom/google/glass/camera/exif/ExifTag;

    if-nez v1, :cond_0

    .line 482
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mStripSizeTag:Lcom/google/glass/camera/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getTag()Lcom/google/glass/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v0, 0x1

    .line 272
    iget-boolean v3, p0, Lcom/google/glass/camera/exif/ExifParser;->mContainExifData:Z

    if-nez v3, :cond_1

    move v0, v2

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    .line 276
    iget v4, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/glass/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    .line 277
    if-ge v3, v4, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->readTag()Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    .line 279
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    if-nez v1, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->next()I

    move-result v0

    goto :goto_0

    .line 282
    :cond_2
    iget-boolean v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    invoke-direct {p0, v1}, Lcom/google/glass/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/google/glass/camera/exif/ExifTag;)V

    goto :goto_0

    .line 286
    :cond_3
    if-ne v3, v4, :cond_5

    .line 288
    iget v3, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    if-nez v3, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    .line 290
    invoke-direct {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 291
    :cond_4
    cmp-long v1, v3, v6

    if-eqz v1, :cond_5

    .line 292
    invoke-direct {p0, v0, v3, v4}, Lcom/google/glass/camera/exif/ExifParser;->registerIfd(IJ)V

    .line 312
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 313
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 314
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 316
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    instance-of v0, v1, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 323
    check-cast v0, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;->ifd:I

    iput v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    .line 324
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 325
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 327
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v0, v0, 0xc

    iget v3, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/google/glass/camera/exif/ExifParser;->mApp1End:I

    if-le v0, v3, :cond_8

    .line 328
    const-string v0, "ExifParser"

    iget v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid size of IFD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 329
    goto/16 :goto_0

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 299
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    .line 300
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    sub-int/2addr v0, v3

    .line 302
    :goto_2
    if-ge v0, v1, :cond_7

    .line 303
    const-string v1, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid size of link to next IFD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 306
    cmp-long v3, v0, v6

    if-eqz v3, :cond_5

    .line 307
    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid link to next IFD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    :catch_0
    move-exception v0

    const-string v0, "ExifParser"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to skip to data at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", the file may be broken."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 332
    :cond_8
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 333
    check-cast v1, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;

    iget-boolean v0, v1, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_9

    .line 334
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 336
    :cond_9
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_1

    .line 338
    :cond_a
    instance-of v0, v1, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_b

    .line 339
    check-cast v1, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    iput-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mImageEvent:Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    .line 340
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mImageEvent:Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    .line 342
    :cond_b
    check-cast v1, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;

    .line 343
    iget-object v0, v1, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/google/glass/camera/exif/ExifTag;

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    .line 344
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_c

    .line 345
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->readFullTagValue(Lcom/google/glass/camera/exif/ExifTag;)V

    .line 346
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/google/glass/camera/exif/ExifTag;)V

    .line 348
    :cond_c
    iget-boolean v0, v1, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_5

    .line 349
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 353
    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_2
.end method

.method protected read([B)I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected read([BII)I
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/google/glass/camera/exif/ExifTag;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 647
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v0

    .line 648
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    .line 651
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 654
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 655
    instance-of v2, v0, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;

    if-eqz v2, :cond_3

    .line 657
    const-string v2, "ExifParser"

    const-string v3, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 659
    const-string v2, "ExifParser"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid thumbnail offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 734
    :goto_2
    :pswitch_0
    return-void

    .line 657
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_3
    instance-of v2, v0, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;

    if-eqz v2, :cond_5

    .line 663
    const-string v2, "ExifParser"

    check-cast v0, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;->ifd:I

    .line 664
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ifd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " overlaps value for tag: \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    .line 671
    invoke-virtual {v2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    sub-int/2addr v0, v2

    .line 672
    const-string v2, "ExifParser"

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x34

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid size of tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting count to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->forceSetComponentCount(I)V

    goto/16 :goto_1

    .line 665
    :cond_5
    instance-of v2, v0, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;

    if-eqz v2, :cond_4

    .line 666
    const-string v2, "ExifParser"

    check-cast v0, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/google/glass/camera/exif/ExifTag;

    .line 667
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Tag value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " overlaps value for tag: \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 682
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 683
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->read([B)I

    .line 684
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue([B)Z

    goto/16 :goto_2

    .line 688
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 691
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [J

    .line 692
    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_6

    .line 693
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 695
    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue([J)Z

    goto/16 :goto_2

    .line 699
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/glass/camera/exif/Rational;

    .line 700
    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_7

    .line 701
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedRational()Lcom/google/glass/camera/exif/Rational;

    move-result-object v3

    aput-object v3, v0, v1

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 703
    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue([Lcom/google/glass/camera/exif/Rational;)Z

    goto/16 :goto_2

    .line 707
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 708
    array-length v2, v0

    :goto_6
    if-ge v1, v2, :cond_8

    .line 709
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v1

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 711
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_2

    .line 715
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 716
    array-length v2, v0

    :goto_7
    if-ge v1, v2, :cond_9

    .line 717
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readLong()I

    move-result v3

    aput v3, v0, v1

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 719
    :cond_9
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_2

    .line 723
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/google/glass/camera/exif/Rational;

    .line 724
    array-length v3, v2

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_a

    .line 725
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readRational()Lcom/google/glass/camera/exif/Rational;

    move-result-object v1

    aput-object v1, v2, v0

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 727
    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/glass/camera/exif/ExifTag;->setValue([Lcom/google/glass/camera/exif/Rational;)Z

    goto/16 :goto_2

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/google/glass/camera/exif/Rational;
    .locals 5

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readLong()I

    move-result v0

    .line 871
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readLong()I

    move-result v1

    .line 872
    new-instance v2, Lcom/google/glass/camera/exif/Rational;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    sget-object v0, Lcom/google/glass/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    if-lez p1, :cond_0

    .line 827
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected readUnsignedLong()J
    .locals 4

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/google/glass/camera/exif/Rational;
    .locals 5

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 855
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 856
    new-instance v4, Lcom/google/glass/camera/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/google/glass/camera/exif/ExifTag;)V
    .locals 4

    .prologue
    .line 513
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/google/glass/camera/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 364
    iget v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/glass/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    .line 365
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifParser;->mTiffStream:Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 366
    if-le v0, v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_3

    .line 370
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_4

    .line 371
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->readTag()Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    .line 372
    add-int/lit8 v0, v0, 0xc

    .line 373
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    invoke-direct {p0, v2}, Lcom/google/glass/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/google/glass/camera/exif/ExifTag;)V

    goto :goto_1

    .line 379
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/glass/camera/exif/ExifParser;->skipTo(I)V

    .line 381
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 383
    iget v2, p0, Lcom/google/glass/camera/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_0

    .line 384
    invoke-direct {p0, v4}, Lcom/google/glass/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 386
    invoke-direct {p0, v4, v0, v1}, Lcom/google/glass/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method
