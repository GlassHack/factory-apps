.class public Lcom/google/android/apps/lightcycle/util/PanoMetadata;
.super Ljava/lang/Object;
.source "PanoMetadata.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final croppedAreaHeight:I

.field public final croppedAreaLeft:I

.field public final croppedAreaTop:I

.field public final croppedAreaWidth:I

.field public final firstPhotoTime:Ljava/util/Calendar;

.field public final fullPanoHeight:I

.field public final fullPanoWidth:I

.field public final imageHeight:I

.field public final imageWidth:I

.field public final largestValidInteriorRectHeight:I

.field public final largestValidInteriorRectLeft:I

.field public final largestValidInteriorRectTop:I

.field public final largestValidInteriorRectWidth:I

.field public final lastPhotoTime:Ljava/util/Calendar;

.field public final projectionType:Ljava/lang/String;

.field public final sourcePhotosCount:I

.field public final synthetic:Z

.field public final usePanoViewer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->imageWidth:I

    .line 128
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->imageHeight:I

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->firstPhotoTime:Ljava/util/Calendar;

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->lastPhotoTime:Ljava/util/Calendar;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->sourcePhotosCount:I

    .line 132
    const-string v0, "equirectangular"

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->projectionType:Ljava/lang/String;

    .line 133
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->usePanoViewer:Z

    .line 134
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    .line 135
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    .line 136
    iput v1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaLeft:I

    .line 137
    iput v1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaTop:I

    .line 138
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    .line 139
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    .line 140
    iput v1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectLeft:I

    .line 141
    iput v1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectTop:I

    .line 142
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectWidth:I

    .line 143
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectHeight:I

    .line 144
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    .line 145
    return-void
.end method

.method private constructor <init>(IILjava/util/Calendar;Ljava/util/Calendar;ILjava/lang/String;ZIIIIIIIIIIZ)V
    .locals 1
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "firstPhotoTime"    # Ljava/util/Calendar;
    .param p4, "lastPhotoTime"    # Ljava/util/Calendar;
    .param p5, "sourcePhotosCount"    # I
    .param p6, "projectionType"    # Ljava/lang/String;
    .param p7, "usePanoViewer"    # Z
    .param p8, "croppedAreaWidth"    # I
    .param p9, "croppedAreaHeight"    # I
    .param p10, "fullPanoWidth"    # I
    .param p11, "fullPanoHeight"    # I
    .param p12, "croppedAreaLeft"    # I
    .param p13, "croppedAreaTop"    # I
    .param p14, "largestValidInteriorRectLeft"    # I
    .param p15, "largestValidInteriorRectTop"    # I
    .param p16, "largestValidInteriorRectWidth"    # I
    .param p17, "largestValidInteriorRectHeight"    # I
    .param p18, "synthetic"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->imageWidth:I

    .line 95
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->imageHeight:I

    .line 96
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->firstPhotoTime:Ljava/util/Calendar;

    .line 97
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->lastPhotoTime:Ljava/util/Calendar;

    .line 98
    iput p5, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->sourcePhotosCount:I

    .line 99
    iput-object p6, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->projectionType:Ljava/lang/String;

    .line 100
    iput-boolean p7, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->usePanoViewer:Z

    .line 101
    iput p8, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    .line 102
    iput p9, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    .line 103
    iput p10, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    .line 104
    iput p11, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    .line 105
    iput p12, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaLeft:I

    .line 106
    iput p13, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaTop:I

    .line 107
    iput p14, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectLeft:I

    .line 108
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectTop:I

    .line 109
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectWidth:I

    .line 110
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->largestValidInteriorRectHeight:I

    .line 111
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    .line 112
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getBoolean(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Z
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 317
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 292
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getString(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "xmp"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 300
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNear(DDD)Z
    .locals 2
    .param p0, "first"    # D
    .param p2, "second"    # D
    .param p4, "tolerance"    # D

    .prologue
    .line 325
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Lcom/google/android/apps/lightcycle/util/InputStreamFactory;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    .locals 36
    .param p0, "isf"    # Lcom/google/android/apps/lightcycle/util/InputStreamFactory;

    .prologue
    .line 174
    invoke-interface/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/util/InputStreamFactory;->create()Ljava/io/InputStream;

    move-result-object v29

    .line 175
    .local v29, "is":Ljava/io/InputStream;
    if-nez v29, :cond_0

    .line 176
    const/4 v6, 0x0

    .line 277
    :goto_0
    return-object v6

    .line 179
    :cond_0
    const/16 v26, 0x0

    .line 180
    .local v26, "firstPhotoTime":Ljava/util/Calendar;
    const/16 v30, 0x0

    .line 181
    .local v30, "lastPhotoTime":Ljava/util/Calendar;
    const/16 v32, 0x0

    .line 182
    .local v32, "sourcePhotosCount":I
    const/4 v12, 0x0

    .line 183
    .local v12, "projectionType":Ljava/lang/String;
    const/4 v13, 0x0

    .line 184
    .local v13, "usePanoViewer":Z
    const/4 v14, 0x0

    .line 185
    .local v14, "croppedAreaWidth":I
    const/4 v15, 0x0

    .line 186
    .local v15, "croppedAreaHeight":I
    const/16 v16, 0x0

    .line 187
    .local v16, "fullPanoWidth":I
    const/16 v17, 0x0

    .line 188
    .local v17, "fullPanoHeight":I
    const/16 v18, 0x0

    .line 189
    .local v18, "croppedAreaLeft":I
    const/16 v19, 0x0

    .line 190
    .local v19, "croppedAreaTop":I
    const/16 v20, 0x0

    .line 191
    .local v20, "largestValidInteriorRectLeft":I
    const/16 v21, 0x0

    .line 192
    .local v21, "largestValidInteriorRectTop":I
    const/16 v22, 0x0

    .line 193
    .local v22, "largestValidInteriorRectWidth":I
    const/16 v23, 0x0

    .line 194
    .local v23, "largestValidInteriorRectHeight":I
    const/16 v24, 0x0

    .line 196
    .local v24, "synthetic":Z
    const/16 v34, 0x0

    .line 197
    .local v34, "validMetaData":Z
    invoke-static/range {v29 .. v29}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v35

    .line 198
    .local v35, "xmp":Lcom/adobe/xmp/XMPMeta;
    if-eqz v35, :cond_1

    .line 200
    :try_start_0
    const-string v6, "FirstPhotoDate"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v26

    .line 201
    const-string v6, "LastPhotoDate"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v30

    .line 202
    const-string v6, "SourcePhotosCount"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v32

    .line 203
    const-string v6, "ProjectionType"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getString(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 204
    const-string v6, "UsePanoramaViewer"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getBoolean(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Z

    move-result v13

    .line 206
    const-string v6, "CroppedAreaImageWidthPixels"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v14

    .line 208
    const-string v6, "CroppedAreaImageHeightPixels"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v15

    .line 210
    const-string v6, "FullPanoWidthPixels"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v16

    .line 212
    const-string v6, "FullPanoHeightPixels"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v17

    .line 214
    const-string v6, "CroppedAreaLeftPixels"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v18

    .line 215
    const-string v6, "CroppedAreaTopPixels"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v19

    .line 217
    const-string v6, "LargestValidInteriorRectLeft"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v20

    .line 219
    const-string v6, "LargestValidInteriorRectTop"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v21

    .line 221
    const-string v6, "LargestValidInteriorRectWidth"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v22

    .line 223
    const-string v6, "LargestValidInteriorRectHeight"

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 225
    const/16 v24, 0x0

    .line 227
    if-lez v14, :cond_3

    if-lez v15, :cond_3

    if-lez v16, :cond_3

    if-lez v17, :cond_3

    const/16 v34, 0x1

    .line 235
    :cond_1
    :goto_1
    new-instance v31, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 236
    .local v31, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    move-object/from16 v0, v31

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 237
    invoke-interface/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/util/InputStreamFactory;->create()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-static {v6, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 238
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v28, v0

    .line 239
    .local v28, "imageWidth":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v0

    .line 240
    .local v27, "imageHeight":I
    mul-int/lit8 v6, v27, 0x2

    move/from16 v0, v28

    if-ne v6, v0, :cond_4

    const/16 v33, 0x1

    .line 241
    .local v33, "twoToOneRatio":Z
    :goto_2
    const/16 v25, 0x0

    .line 245
    .local v25, "fallback":Z
    if-nez v34, :cond_2

    .line 246
    if-eqz v33, :cond_5

    .line 247
    sget-object v6, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    const-string v7, "Could not parse meta data for file. Filling in 360 defaults."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v25, 0x1

    .line 259
    :cond_2
    move/from16 v0, v28

    int-to-double v6, v0

    move/from16 v0, v27

    int-to-double v8, v0

    div-double v2, v6, v8

    .line 260
    .local v2, "imageAspectRatio":D
    int-to-double v6, v14

    int-to-double v8, v15

    div-double v4, v6, v8

    .line 261
    .local v4, "croppedMetaRatio":D
    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->isNear(DDD)Z

    move-result v6

    if-nez v6, :cond_6

    .line 262
    sget-object v6, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    const-string v7, "Pano metadata does not match file dimensions."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 227
    .end local v2    # "imageAspectRatio":D
    .end local v4    # "croppedMetaRatio":D
    .end local v25    # "fallback":Z
    .end local v27    # "imageHeight":I
    .end local v28    # "imageWidth":I
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v33    # "twoToOneRatio":Z
    :cond_3
    const/16 v34, 0x0

    goto :goto_1

    .line 240
    .restart local v27    # "imageHeight":I
    .restart local v28    # "imageWidth":I
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const/16 v33, 0x0

    goto :goto_2

    .line 251
    .restart local v25    # "fallback":Z
    .restart local v33    # "twoToOneRatio":Z
    :cond_5
    sget-object v6, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    const-string v7, "Image has no metadata and no 2:1 aspect ratio. Not a pano!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 267
    .restart local v2    # "imageAspectRatio":D
    .restart local v4    # "croppedMetaRatio":D
    :cond_6
    move/from16 v0, v16

    int-to-double v6, v0

    move/from16 v0, v17

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static/range {v6 .. v11}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->isNear(DDD)Z

    move-result v6

    if-nez v6, :cond_7

    .line 268
    sget-object v6, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    const-string v7, "Pano metadata invalid: Full pano dimension not 2:1."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 272
    :cond_7
    if-eqz v25, :cond_8

    .line 274
    new-instance v6, Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-direct {v6, v0, v1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;-><init>(II)V

    goto/16 :goto_0

    .line 277
    :cond_8
    new-instance v6, Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move/from16 v7, v28

    move/from16 v8, v27

    move-object/from16 v9, v26

    move-object/from16 v10, v30

    move/from16 v11, v32

    invoke-direct/range {v6 .. v24}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;-><init>(IILjava/util/Calendar;Ljava/util/Calendar;ILjava/lang/String;ZIIIIIIIIIIZ)V

    goto/16 :goto_0

    .line 229
    .end local v2    # "imageAspectRatio":D
    .end local v4    # "croppedMetaRatio":D
    .end local v25    # "fallback":Z
    .end local v27    # "imageHeight":I
    .end local v28    # "imageWidth":I
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v33    # "twoToOneRatio":Z
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/util/PanoMetadata$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Lcom/google/android/apps/lightcycle/util/InputStreamFactory;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isScaled()Z
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->imageWidth:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->imageHeight:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
