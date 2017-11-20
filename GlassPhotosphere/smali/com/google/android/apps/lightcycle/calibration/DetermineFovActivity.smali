.class public Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;
.super Landroid/app/Activity;
.source "DetermineFovActivity.java"


# static fields
.field private static final DEFAULT_MARKER_DISTANCE:Ljava/lang/String; = "36.8"

.field private static final DEFAULT_TARGET_DISTANCE:Ljava/lang/String; = "99.7"

.field private static final FOV_ADJUSTMENT_RANGE:F = 20.0f

.field private static final SEEKBAR_MAX_VALUE:I = 0x64

.field private static final TEXT_PADDING:F = 0.2f

.field private static final TEXT_SIZE:F = 16.0f


# instance fields
.field private mFovDegrees:F

.field private mFovMaxDegrees:F

.field private mFovMinDegrees:F

.field private mMarkerDistanceCm:F

.field private mMeasuredText:Ljava/lang/String;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private mReportedFovDegrees:F

.field private mReportedText:Ljava/lang/String;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTargetDistanceCm:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->drawContents()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovDegrees:F

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;I)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->seekBarProgressToFovDegrees(I)F

    move-result v0

    return v0
.end method

.method private drawContents()V
    .locals 35

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v23

    .line 159
    .local v23, "holder":Landroid/view/SurfaceHolder;
    invoke-interface/range {v23 .. v23}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 160
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v17

    .line 165
    .local v17, "canvasWidth":I
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v16

    .line 166
    .local v16, "canvasHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    .line 167
    .local v28, "photoWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    .line 168
    .local v27, "photoHeight":I
    new-instance v18, Landroid/graphics/RectF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    .line 171
    .local v18, "drawRect":Landroid/graphics/RectF;
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 172
    .local v31, "scale":F
    move/from16 v0, v27

    int-to-float v4, v0

    mul-float v4, v4, v31

    float-to-int v0, v4

    move/from16 v32, v0

    .line 173
    .local v32, "scaledHeight":I
    move/from16 v0, v32

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 176
    sub-int v4, v16, v32

    div-int/lit8 v26, v4, 0x2

    .line 177
    .local v26, "pad":I
    const/4 v4, 0x0

    move/from16 v0, v26

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    add-int v8, v26, v32

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 187
    .end local v26    # "pad":I
    :goto_1
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 191
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 192
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v34, v4, v5

    .line 195
    .local v34, "textSize":F
    move/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mMeasuredText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovDegrees:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " degrees."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v34

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    move/from16 v0, v34

    invoke-virtual {v2, v4, v0, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mReportedText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mReportedFovDegrees:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " degrees."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x3f99999a    # 1.2f

    mul-float v5, v5, v34

    move/from16 v0, v34

    invoke-virtual {v2, v4, v0, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 202
    const/high16 v4, -0x1000000

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v20, v4, v5

    .line 206
    .local v20, "dstWidth":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v19, v4, v5

    .line 207
    .local v19, "dstHeight":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v20, v5

    add-float v3, v4, v5

    .line 208
    .local v3, "centerX":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mMarkerDistanceCm:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v24, v4, v5

    .line 212
    .local v24, "markerX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mTargetDistanceCm:F

    move/from16 v25, v0

    .line 213
    .local v25, "markerZ":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovDegrees:F

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->focalLengthPixels(FF)F

    move-result v22

    .line 214
    .local v22, "focalLength":F
    div-float v4, v24, v25

    mul-float v21, v4, v22

    .line 215
    .local v21, "dx":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v20, v4

    sub-float v29, v4, v21

    .line 216
    .local v29, "projectedMarkerLeft":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v20, v4

    add-float v30, v4, v21

    .line 219
    .local v30, "projectedMarkerRight":F
    const v4, -0xff0100

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 221
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v9, v29, v4

    .line 222
    .local v9, "markerImageLeft":F
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    move-object v8, v2

    move v11, v9

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 224
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v11, v30, v4

    .line 225
    .local v11, "markerImageRight":F
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    move-object v10, v2

    move v13, v11

    move-object v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 180
    .end local v3    # "centerX":F
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v9    # "markerImageLeft":F
    .end local v11    # "markerImageRight":F
    .end local v19    # "dstHeight":F
    .end local v20    # "dstWidth":F
    .end local v21    # "dx":F
    .end local v22    # "focalLength":F
    .end local v24    # "markerX":F
    .end local v25    # "markerZ":F
    .end local v29    # "projectedMarkerLeft":F
    .end local v30    # "projectedMarkerRight":F
    .end local v34    # "textSize":F
    :cond_2
    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 181
    move/from16 v0, v28

    int-to-float v4, v0

    mul-float v33, v31, v4

    .line 182
    .local v33, "scaledWidth":F
    move/from16 v0, v17

    int-to-float v4, v0

    sub-float v4, v4, v33

    const/high16 v5, 0x40000000    # 2.0f

    div-float v26, v4, v5

    .line 183
    .local v26, "pad":F
    const/4 v4, 0x0

    add-float v5, v26, v33

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    move/from16 v0, v16

    int-to-float v6, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1
.end method

.method private focalLengthPixels(FF)F
    .locals 8
    .param p1, "fovDegrees"    # F
    .param p2, "imageWidth"    # F

    .prologue
    .line 153
    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private fovToSeekBarProgress(F)I
    .locals 3
    .param p1, "fovDegrees"    # F

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMinDegrees:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMaxDegrees:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMinDegrees:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getMarkerDistance()F
    .locals 3

    .prologue
    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "markerDistance"

    const-string v2, "36.8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private getTargetDistance()F
    .locals 3

    .prologue
    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "targetDistanceCm"

    const-string v2, "99.7"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private seekBarProgressToFovDegrees(I)F
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 109
    iget v1, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMinDegrees:F

    int-to-float v2, p1

    div-float/2addr v2, v5

    iget v3, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMaxDegrees:F

    iget v4, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMinDegrees:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 112
    .local v0, "degrees":F
    mul-float v1, v0, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v2, Lcom/google/android/apps/lightcycle/R$layout;->calibration_determine_fov:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->getPictureFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 61
    .local v1, "pictureFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mPhotoBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->photo_surface:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 68
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 69
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v3, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$1;-><init>(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;)V

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 85
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->seekBar:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 87
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$2;-><init>(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->getMarkerDistance()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mMarkerDistanceCm:F

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->getTargetDistance()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mTargetDistanceCm:F

    .line 121
    invoke-static {}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->getReportedFovDegrees()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mReportedFovDegrees:F

    .line 123
    iget v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mReportedFovDegrees:F

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    :goto_0
    iput v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovDegrees:F

    .line 124
    iget v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovDegrees:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMaxDegrees:F

    .line 125
    iget v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovDegrees:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovMinDegrees:F

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->displayed_fov_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mMeasuredText:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->reported_fov_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mReportedText:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mFovDegrees:F

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->fovToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->drawContents()V

    .line 132
    return-void

    .line 123
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->mReportedFovDegrees:F

    goto :goto_0
.end method
