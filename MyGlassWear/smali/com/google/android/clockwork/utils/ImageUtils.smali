.class public final Lcom/google/android/clockwork/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final BORING_TOLERANCE:I = 0x32

.field private static final MONOCHROME_TOLERANCE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final sMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSolidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/clockwork/utils/ImageUtils;->sSolidCache:Landroid/util/LruCache;

    .line 37
    invoke-static {}, Lcom/google/android/clockwork/utils/ImageUtils;->initMemoryCache()Landroid/util/LruCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/utils/ImageUtils;->sMemoryCache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "assetDigest"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 375
    invoke-static {p0}, Lcom/google/android/clockwork/utils/ImageUtils;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    sget-object v0, Lcom/google/android/clockwork/utils/ImageUtils;->sMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_0
    return-void
.end method

.method public static clearImageCache()V
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/google/android/clockwork/utils/ImageUtils;->sMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 386
    return-void
.end method

.method public static createBlurredBackground(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "scaledToHeight"    # I

    .prologue
    const/4 v9, 0x1

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 106
    .local v2, "ratio":F
    int-to-float v7, p3

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 113
    .local v4, "scaledToWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 114
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 120
    .local v6, "sizedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-lez p2, :cond_0

    .line 123
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 125
    .local v3, "rs":Landroid/renderscript/RenderScript;
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v3, v6, v7, v9}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 127
    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 129
    .local v1, "output":Landroid/renderscript/Allocation;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    .line 130
    .local v5, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 131
    int-to-float v7, p2

    invoke-virtual {v5, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 132
    invoke-virtual {v5, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 134
    invoke-virtual {v1, v6}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 135
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 137
    .end local v0    # "input":Landroid/renderscript/Allocation;
    .end local v1    # "output":Landroid/renderscript/Allocation;
    .end local v3    # "rs":Landroid/renderscript/RenderScript;
    .end local v5    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_0
    return-object v6

    .line 116
    .end local v6    # "sizedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p1, v4, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "sizedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static createSolidBackground(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "size"    # I
    .param p1, "color"    # I

    .prologue
    .line 356
    sget-object v2, Lcom/google/android/clockwork/utils/ImageUtils;->sSolidCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 357
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, p0, :cond_0

    move-object v1, v0

    .line 364
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 361
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 363
    sget-object v2, Lcom/google/android/clockwork/utils/ImageUtils;->sSolidCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 364
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static drawCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 81
    .local v3, "radius":I
    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v6, v3, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    .local v1, "circularBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 86
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 90
    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    int-to-float v5, v3

    int-to-float v6, v3

    int-to-float v7, v3

    invoke-virtual {v0, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    invoke-virtual {v0, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 94
    return-object v1
.end method

.method public static findDominantColor(Landroid/graphics/Bitmap;)I
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    invoke-static {}, Lcom/google/common/collect/HashMultiset;->create()Lcom/google/common/collect/HashMultiset;

    move-result-object v6

    .line 197
    .local v6, "colors":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 198
    .local v12, "rows":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 200
    .local v7, "cols":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 201
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v7, :cond_1

    .line 204
    invoke-virtual {p0, v11, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 206
    .local v5, "color":I
    shr-int/lit8 v13, v5, 0x18

    and-int/lit16 v0, v13, 0xff

    .line 207
    .local v0, "alpha":I
    if-nez v0, :cond_0

    .line 201
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 212
    :cond_0
    const/high16 v13, -0x1000000

    or-int/2addr v5, v13

    .line 213
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 200
    .end local v0    # "alpha":I
    .end local v5    # "color":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 221
    .end local v11    # "j":I
    :cond_2
    const/4 v3, -0x1

    .line 222
    .local v3, "bestColor":I
    const/4 v4, 0x0

    .line 223
    .local v4, "bestColorCount":I
    const/4 v1, -0x1

    .line 224
    .local v1, "bestBoringColor":I
    const/4 v2, 0x0

    .line 226
    .local v2, "bestBoringColorCount":I
    invoke-interface {v6}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 227
    .local v5, "color":Ljava/lang/Integer;
    invoke-interface {v6, v5}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v8

    .line 228
    .local v8, "count":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/clockwork/utils/ImageUtils;->isBoring(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 229
    if-le v8, v2, :cond_3

    .line 230
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 231
    move v2, v8

    goto :goto_3

    .line 234
    :cond_4
    if-le v8, v4, :cond_3

    .line 235
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 236
    move v4, v8

    goto :goto_3

    .line 241
    .end local v5    # "color":Ljava/lang/Integer;
    .end local v8    # "count":I
    :cond_5
    div-int/lit8 v13, v2, 0x4

    if-ge v4, v13, :cond_6

    .line 244
    .end local v1    # "bestBoringColor":I
    :goto_4
    return v1

    .restart local v1    # "bestBoringColor":I
    :cond_6
    move v1, v3

    goto :goto_4
.end method

.method public static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 27
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "samples"    # I

    .prologue
    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 254
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 255
    .local v21, "width":I
    mul-int v24, v8, v21

    div-int v24, v24, p1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v18, v0

    .line 256
    .local v18, "sampleStride":I
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 257
    const/16 v18, 0x1

    .line 259
    :cond_0
    const-string v24, "ImageUtils"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 260
    const-string v24, "ImageUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "stride: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v10, v0, [F

    .line 268
    .local v10, "hsv":[F
    const/16 v24, 0x168

    move/from16 v0, v24

    new-array v12, v0, [F

    .line 269
    .local v12, "hueScoreHistogram":[F
    const/high16 v9, -0x40800000    # -1.0f

    .line 270
    .local v9, "highScore":F
    const/4 v6, -0x1

    .line 272
    .local v6, "bestHue":I
    const/16 v23, 0x0

    .local v23, "y":I
    :goto_0
    move/from16 v0, v23

    if-ge v0, v8, :cond_5

    .line 273
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 274
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 275
    .local v4, "argb":I
    shr-int/lit8 v24, v4, 0x18

    move/from16 v0, v24

    and-int/lit16 v3, v0, 0xff

    .line 276
    .local v3, "alpha":I
    const/16 v24, 0x80

    move/from16 v0, v24

    if-ge v3, v0, :cond_3

    .line 273
    :cond_2
    :goto_2
    add-int v22, v22, v18

    goto :goto_1

    .line 281
    :cond_3
    const/high16 v24, -0x1000000

    or-int v15, v4, v24

    .line 282
    .local v15, "rgb":I
    invoke-static {v15, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 284
    const/16 v24, 0x0

    aget v24, v10, v24

    move/from16 v0, v24

    float-to-int v11, v0

    .line 285
    .local v11, "hue":I
    if-ltz v11, :cond_2

    array-length v0, v12

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_2

    .line 289
    const/16 v24, 0x1

    aget v24, v10, v24

    const/16 v25, 0x2

    aget v25, v10, v25

    mul-float v19, v24, v25

    .line 290
    .local v19, "score":F
    aget v24, v12, v11

    add-float v24, v24, v19

    aput v24, v12, v11

    .line 291
    aget v24, v12, v11

    cmpl-float v24, v24, v9

    if-lez v24, :cond_2

    .line 292
    aget v9, v12, v11

    .line 293
    move v6, v11

    goto :goto_2

    .line 272
    .end local v3    # "alpha":I
    .end local v4    # "argb":I
    .end local v11    # "hue":I
    .end local v15    # "rgb":I
    .end local v19    # "score":F
    :cond_4
    add-int v23, v23, v18

    goto :goto_0

    .line 298
    .end local v22    # "x":I
    :cond_5
    const-string v24, "ImageUtils"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 299
    const-string v24, "ImageUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "height*width: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    mul-int v26, v8, v21

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v11, 0x0

    .restart local v11    # "hue":I
    :goto_3
    array-length v0, v12

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 301
    aget v24, v12, v11

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_6

    .line 302
    const-string v24, "ImageUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "hue: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", score: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget v26, v12, v11

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 305
    :cond_7
    const-string v24, "ImageUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bestHue: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", highScore: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v11    # "hue":I
    :cond_8
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v16, "rgbScores":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/high16 v5, -0x1000000

    .line 310
    .local v5, "bestColor":I
    const/high16 v9, -0x40800000    # -1.0f

    .line 314
    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v0, v8, :cond_c

    .line 315
    const/16 v22, 0x0

    .restart local v22    # "x":I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 316
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v24

    const/high16 v25, -0x1000000

    or-int v15, v24, v25

    .line 317
    .restart local v15    # "rgb":I
    invoke-static {v15, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 318
    const/16 v24, 0x0

    aget v24, v10, v24

    move/from16 v0, v24

    float-to-int v11, v0

    .line 319
    .restart local v11    # "hue":I
    if-ne v11, v6, :cond_9

    .line 320
    const/16 v24, 0x1

    aget v17, v10, v24

    .line 321
    .local v17, "s":F
    const/16 v24, 0x2

    aget v20, v10, v24

    .line 322
    .local v20, "v":F
    const/high16 v24, 0x42c80000    # 100.0f

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const v25, 0x461c4000    # 10000.0f

    mul-float v25, v25, v20

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v7, v24, v25

    .line 324
    .local v7, "bucket":I
    mul-float v19, v17, v20

    .line 325
    .restart local v19    # "score":F
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 326
    .local v14, "oldTotal":Ljava/lang/Float;
    if-nez v14, :cond_a

    move/from16 v13, v19

    .line 327
    .local v13, "newTotal":F
    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    cmpl-float v24, v13, v9

    if-lez v24, :cond_9

    .line 329
    move v9, v13

    .line 331
    move v5, v15

    .line 315
    .end local v7    # "bucket":I
    .end local v13    # "newTotal":F
    .end local v14    # "oldTotal":Ljava/lang/Float;
    .end local v17    # "s":F
    .end local v19    # "score":F
    .end local v20    # "v":F
    :cond_9
    add-int v22, v22, v18

    goto :goto_5

    .line 326
    .restart local v7    # "bucket":I
    .restart local v14    # "oldTotal":Ljava/lang/Float;
    .restart local v17    # "s":F
    .restart local v19    # "score":F
    .restart local v20    # "v":F
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v24

    add-float v13, v24, v19

    goto :goto_6

    .line 314
    .end local v7    # "bucket":I
    .end local v11    # "hue":I
    .end local v14    # "oldTotal":Ljava/lang/Float;
    .end local v15    # "rgb":I
    .end local v17    # "s":F
    .end local v19    # "score":F
    .end local v20    # "v":F
    :cond_b
    add-int v23, v23, v18

    goto :goto_4

    .line 336
    .end local v22    # "x":I
    :cond_c
    const-string v24, "ImageUtils"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 337
    const-string v24, "ImageUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bestColor: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", highScore: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_d
    return v5
.end method

.method public static getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "assetDigest"    # Ljava/lang/String;

    .prologue
    .line 381
    sget-object v0, Lcom/google/android/clockwork/utils/ImageUtils;->sMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static initMemoryCache()Landroid/util/LruCache;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 44
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 45
    .local v0, "cacheSize":I
    new-instance v2, Lcom/google/android/clockwork/utils/ImageUtils$1;

    invoke-direct {v2, v0}, Lcom/google/android/clockwork/utils/ImageUtils$1;-><init>(I)V

    return-object v2
.end method

.method public static isBoring(I)Z
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 191
    const/16 v0, 0x32

    invoke-static {p0, v0}, Lcom/google/android/clockwork/utils/ImageUtils;->isMonochrome(II)Z

    move-result v0

    return v0
.end method

.method public static isMonochrome(I)Z
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 179
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/android/clockwork/utils/ImageUtils;->isMonochrome(II)Z

    move-result v0

    return v0
.end method

.method public static isMonochrome(II)Z
    .locals 6
    .param p0, "color"    # I
    .param p1, "tolerance"    # I

    .prologue
    const/4 v4, 0x1

    .line 158
    shr-int/lit8 v5, p0, 0x18

    and-int/lit16 v0, v5, 0xff

    .line 159
    .local v0, "alpha":I
    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v4

    .line 163
    :cond_1
    shr-int/lit8 v5, p0, 0x10

    and-int/lit16 v3, v5, 0xff

    .line 164
    .local v3, "r":I
    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v2, v5, 0xff

    .line 165
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 167
    .local v1, "b":I
    sub-int v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p1, :cond_2

    sub-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p1, :cond_2

    sub-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, p1, :cond_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isMonochrome(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 142
    .local v4, "rows":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 144
    .local v1, "cols":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 145
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 148
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 149
    .local v0, "color":I
    invoke-static {v0}, Lcom/google/android/clockwork/utils/ImageUtils;->isMonochrome(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    const/4 v5, 0x0

    .line 154
    .end local v0    # "color":I
    .end local v3    # "j":I
    :goto_2
    return v5

    .line 145
    .restart local v0    # "color":I
    .restart local v3    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "color":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "j":I
    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidthPx"    # I
    .param p2, "maxHeightPx"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 56
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 57
    .local v0, "originalHeight":I
    int-to-float v5, p1

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, p2

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 60
    .local v2, "ratio":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    .line 61
    int-to-float v5, v1

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 62
    .local v4, "scaledToWidth":I
    int-to-float v5, v0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 63
    .local v3, "scaledToHeight":I
    const/4 v5, 0x1

    invoke-static {p0, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 65
    .end local v3    # "scaledToHeight":I
    .end local v4    # "scaledToWidth":I
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object p0
.end method

.method public static scaleColor(IF)I
    .locals 4
    .param p0, "argb"    # I
    .param p1, "scale"    # F

    .prologue
    .line 347
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static setVisibilityIfExists(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public static toBitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 70
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
