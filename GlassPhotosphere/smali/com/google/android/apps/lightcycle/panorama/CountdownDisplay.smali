.class public Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;
.super Ljava/lang/Object;
.source "CountdownDisplay.java"


# static fields
.field private static final COUNTDOWN_TIME_MILLISECS:J = 0x320L

.field private static final LIGHT_HEIGHT_PERCENT:F = 0.75f

.field private static final LIGHT_OFF_ALPHA:F = 0.3f

.field private static final LIGHT_SPACING_PERCENT:F = 0.056875f

.field private static final LIGHT_WIDTH_PERCENT:F = 0.035625f

.field private static final NUM_LIGHTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LightCycle"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinished:Z

.field private mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

.field private mLightStates:[Z

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mPositionsLandscape:[Landroid/graphics/PointF;

.field private mPositionsPortrait:[Landroid/graphics/PointF;

.field private mRunning:Z

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mStartTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v0, v1, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    .line 48
    new-array v0, v1, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    .line 49
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    .line 53
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private turnOffLights()V
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method private updateLights()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    sub-long v1, v7, v9

    .line 193
    .local v1, "elapsed":J
    const-wide/16 v7, 0x320

    div-long v7, v1, v7

    long-to-int v7, v7

    add-int/lit8 v6, v7, 0x1

    .line 194
    .local v6, "numLit":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 195
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    aput-boolean v11, v7, v3

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_0
    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 198
    iput-boolean v12, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 199
    iput-boolean v11, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    sub-long v1, v7, v9

    .line 201
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getNumGyroSamples()I

    move-result v5

    .line 202
    .local v5, "numGyroSamples":I
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v4

    .line 203
    .local v4, "integratedGyro":[F
    invoke-static {v4, v5, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FIJ)[F

    move-result-object v0

    .line 205
    .local v0, "bias":[F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bias : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 206
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v7, v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setGyroBias([F)V

    .line 208
    .end local v0    # "bias":[F
    .end local v4    # "integratedGyro":[F
    .end local v5    # "numGyroSamples":I
    :cond_1
    return-void
.end method


# virtual methods
.method public draw([FII)V
    .locals 7
    .param p1, "orthographicTransform"    # [F
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I

    .prologue
    const/16 v6, 0x303

    const/16 v5, 0x302

    .line 219
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->updateLights()V

    .line 221
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 229
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V

    .line 224
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 234
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 235
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    .line 241
    .end local v0    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    :cond_1
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 242
    return-void
.end method

.method public finished()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    return v0
.end method

.method public init(IILcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 18
    .param p1, "surfaceWidthPixels"    # I
    .param p2, "surfaceHeightPixels"    # I
    .param p3, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .param p4, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 74
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 75
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 78
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    .local v7, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 80
    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/google/android/apps/lightcycle/R$drawable;->pano_target_activated:I

    invoke-static {v13, v14, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 87
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    move/from16 v0, p2

    int-to-float v13, v0

    move/from16 v0, p1

    int-to-float v14, v0

    div-float v12, v13, v14

    .line 91
    .local v12, "widthScale":F
    :goto_0
    const v13, 0x3d11eb85    # 0.035625f

    mul-float/2addr v13, v12

    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v13, v14

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v14, v14

    div-float v8, v13, v14

    .line 95
    .local v8, "scale":F
    new-instance v13, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v13, v14}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    sget v15, Lcom/google/android/apps/lightcycle/R$drawable;->pano_startanim_default:I

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v13 .. v17}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 98
    new-instance v13, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v13, v14}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    sget v15, Lcom/google/android/apps/lightcycle/R$drawable;->pano_startanim_activated:I

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v13 .. v17}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 103
    :try_start_0
    new-instance v13, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v13}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    .line 104
    new-instance v13, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-direct {v13}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    if-nez v13, :cond_1

    .line 110
    :cond_0
    const-string v13, "Failed to initialize - shader is null."

    invoke-static {v13}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v13, v14}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v13, v14}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 118
    move/from16 v0, p1

    int-to-float v13, v0

    const v14, 0x3d68f5c3

    mul-float/2addr v13, v14

    mul-float v9, v13, v12

    .line 120
    .local v9, "spacingPixels":F
    move/from16 v0, p1

    int-to-float v13, v0

    const v14, 0x3d11eb85    # 0.035625f

    mul-float/2addr v13, v14

    mul-float v6, v13, v12

    .line 122
    .local v6, "lightWidthPixels":F
    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v6

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v9

    add-float v11, v13, v14

    .line 126
    .local v11, "totalWidth":F
    move/from16 v0, p1

    int-to-float v13, v0

    sub-float/2addr v13, v11

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v6, v14

    add-float v5, v13, v14

    .line 127
    .local v5, "left":F
    move/from16 v0, p2

    int-to-float v13, v0

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float v10, v13, v14

    .line 128
    .local v10, "top":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v13, 0x3

    if-ge v4, v13, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v14, v13, v4

    .line 130
    add-float v13, v6, v9

    add-float/2addr v5, v13

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    const/4 v14, 0x0

    aput-boolean v14, v13, v4

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 87
    .end local v4    # "i":I
    .end local v5    # "left":F
    .end local v6    # "lightWidthPixels":F
    .end local v8    # "scale":F
    .end local v9    # "spacingPixels":F
    .end local v10    # "top":F
    .end local v11    # "totalWidth":F
    .end local v12    # "widthScale":F
    :cond_2
    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 105
    .restart local v8    # "scale":F
    .restart local v12    # "widthScale":F
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    const-string v13, "LightCycle"

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    .end local v3    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    .restart local v4    # "i":I
    .restart local v5    # "left":F
    .restart local v6    # "lightWidthPixels":F
    .restart local v9    # "spacingPixels":F
    .restart local v10    # "top":F
    .restart local v11    # "totalWidth":F
    :cond_3
    move/from16 v0, p1

    int-to-float v13, v0

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float v5, v13, v14

    .line 136
    move/from16 v0, p2

    int-to-float v13, v0

    add-float/2addr v13, v11

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v6, v14

    sub-float v10, v13, v14

    .line 137
    const/4 v4, 0x0

    :goto_3
    const/4 v13, 0x3

    if-ge v4, v13, :cond_4

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v14, v13, v4

    .line 139
    add-float v13, v6, v9

    sub-float/2addr v10, v13

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 141
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 168
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 169
    return-void
.end method

.method public running()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    return v0
.end method

.method public startCountdown()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->resetGyroBias()V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->StartGyroCalibration(F)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->turnOffLights()V

    .line 155
    return-void
.end method

.method public stopCountdown()V
    .locals 8

    .prologue
    .line 158
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getNumGyroSamples()I

    move-result v3

    .line 159
    .local v3, "numGyroSamples":I
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v2

    .line 160
    .local v2, "integratedGyro":[F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    sub-long v0, v4, v6

    .line 161
    .local v0, "elapsed":J
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FIJ)[F

    .line 163
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 164
    return-void
.end method
