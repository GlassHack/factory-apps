.class final Lcom/android/providers/contacts/PhotoProcessor;
.super Ljava/lang/Object;
.source "PhotoProcessor.java"


# static fields
.field private static final WHITE_PAINT:Landroid/graphics/Paint;

.field private static sMaxDisplayPhotoDim:I

.field private static sMaxThumbnailDim:I


# instance fields
.field private mDisplayPhoto:Landroid/graphics/Bitmap;

.field private final mForceCropToSquare:Z

.field private final mMaxDisplayPhotoDim:I

.field private final mMaxThumbnailPhotoDim:I

.field private final mOriginal:Landroid/graphics/Bitmap;

.field private mThumbnailPhoto:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/providers/contacts/PhotoProcessor;->WHITE_PAINT:Landroid/graphics/Paint;

    .line 54
    sget-object v1, Lcom/android/providers/contacts/PhotoProcessor;->WHITE_PAINT:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-static {}, Lcom/android/providers/contacts/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v1

    const-wide/32 v3, 0x28000000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 64
    .local v0, "isExpensiveDevice":Z
    :goto_0
    const-string v1, "contacts.thumbnail_size"

    const/16 v2, 0x60

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/providers/contacts/PhotoProcessor;->sMaxThumbnailDim:I

    .line 67
    const-string v2, "contacts.display_photo_size"

    if-eqz v0, :cond_1

    const/16 v1, 0x2d0

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/providers/contacts/PhotoProcessor;->sMaxDisplayPhotoDim:I

    .line 72
    return-void

    .line 61
    .end local v0    # "isExpensiveDevice":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    .restart local v0    # "isExpensiveDevice":Z
    :cond_1
    const/16 v1, 0x1e0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIZ)V
    .locals 0
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .param p4, "forceCropToSquare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 152
    iput p2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    .line 153
    iput p3, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    .line 154
    iput-boolean p4, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    .line 155
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoProcessor;->process()V

    .line 156
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "originalBytes"    # [B
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 136
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "originalBytes"    # [B
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .param p4, "forceCropToSquare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 173
    return-void
.end method

.method private getCompressedBytes(Landroid/graphics/Bitmap;I)[B
    .locals 5
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v3, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 250
    .local v1, "compressed":Z
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 252
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 254
    .local v2, "result":[B
    if-nez v1, :cond_0

    .line 255
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to compress image"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_0
    return-object v2
.end method

.method public static getMaxDisplayPhotoSize()I
    .locals 1

    .prologue
    .line 321
    sget v0, Lcom/android/providers/contacts/PhotoProcessor;->sMaxDisplayPhotoDim:I

    return v0
.end method

.method public static getMaxThumbnailSize()I
    .locals 1

    .prologue
    .line 313
    sget v0, Lcom/android/providers/contacts/PhotoProcessor;->sMaxThumbnailDim:I

    return v0
.end method

.method static getNormalizedBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "maxDim"    # I
    .param p2, "forceCropToSquare"    # Z

    .prologue
    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v15

    .line 205
    .local v15, "originalHasAlpha":Z
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 206
    .local v11, "cropWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 207
    .local v8, "cropHeight":I
    const/4 v9, 0x0

    .line 208
    .local v9, "cropLeft":I
    const/4 v10, 0x0

    .line 209
    .local v10, "cropTop":I
    if-eqz p2, :cond_0

    if-eq v11, v8, :cond_0

    .line 211
    if-le v8, v11, :cond_4

    .line 212
    sub-int v3, v8, v11

    div-int/lit8 v10, v3, 0x2

    .line 213
    move v8, v11

    .line 220
    :cond_0
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v4, v0

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 222
    .local v16, "scaleFactor":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v16, v3

    if-ltz v3, :cond_1

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-eqz v15, :cond_3

    .line 223
    :cond_1
    int-to-float v3, v11

    mul-float v3, v3, v16

    float-to-int v14, v3

    .line 224
    .local v14, "newWidth":I
    int-to-float v3, v8

    mul-float v3, v3, v16

    float-to-int v13, v3

    .line 225
    .local v13, "newHeight":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v13, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 227
    .local v17, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    .local v2, "c":Landroid/graphics/Canvas;
    if-eqz v15, :cond_2

    .line 230
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lcom/android/providers/contacts/PhotoProcessor;->WHITE_PAINT:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    :cond_2
    new-instance v18, Landroid/graphics/Rect;

    add-int v3, v9, v11

    add-int v4, v10, v8

    move-object/from16 v0, v18

    invoke-direct {v0, v9, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 235
    .local v18, "src":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v12, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 237
    .local v12, "dst":Landroid/graphics/RectF;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 p0, v17

    .line 240
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v12    # "dst":Landroid/graphics/RectF;
    .end local v13    # "newHeight":I
    .end local v14    # "newWidth":I
    .end local v17    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "src":Landroid/graphics/Rect;
    .end local p0    # "original":Landroid/graphics/Bitmap;
    :cond_3
    return-object p0

    .line 215
    .end local v16    # "scaleFactor":F
    .restart local p0    # "original":Landroid/graphics/Bitmap;
    :cond_4
    sub-int v3, v11, v8

    div-int/lit8 v9, v3, 0x2

    .line 216
    move v11, v8

    goto :goto_0
.end method

.method private process()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid image file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    iget-boolean v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/PhotoProcessor;->getNormalizedBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    iget-boolean v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/PhotoProcessor;->getNormalizedBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    .line 185
    return-void
.end method


# virtual methods
.method public getDisplayPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayPhotoBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    const/16 v1, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxThumbnailPhotoDim()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    return v0
.end method

.method public getThumbnailPhotoBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 290
    .local v0, "hasDisplayPhoto":Z
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const/16 v1, 0x5a

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    return-object v1

    .line 287
    .end local v0    # "hasDisplayPhoto":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    .restart local v0    # "hasDisplayPhoto":Z
    :cond_2
    const/16 v1, 0x5f

    goto :goto_1
.end method
