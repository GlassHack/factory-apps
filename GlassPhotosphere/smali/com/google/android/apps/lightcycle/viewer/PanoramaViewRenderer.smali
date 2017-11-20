.class public Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;
.super Ljava/lang/Object;
.source "PanoramaViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final AUTOSPIN_RATE_DEGREES_AT_FOV_90:F = 0.35f

.field private static final FINAL_PANORAMA_OPACITY:F = 1.0f

.field private static final INTRO_SPIN_ANGLE_DEG:F = 30.0f

.field public static final MAXFIELDOFVIEWDEGREES:I = 0x5a

.field private static final MINFIELDOFVIEWDEGREES:I = 0x14

.field private static final ORIENTATION_CHANGE_ALPHA:F = 0.08f

.field private static final PANORAMA_FADE_IN_ALPHA:F = 0.05f

.field private static final SHOW_WIRE_SPHERE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private initializationRequired:Z

.field private mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoSpin:Z

.field private mAutoSpinFadeFactor:F

.field private mAutospinRateDegrees:F

.field private mCompassMode:Z

.field private mCurFieldOfViewDegrees:F

.field private mFieldOfViewDegreesZoomStart:F

.field private mFrameTransform:[F

.field private mGroundPlane:Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;

.field private mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

.field private mIntroSpinAngleLeftDegrees:F

.field private mMVPMatrix:[F

.field private mModelView:[F

.field private mObjectsInitialized:Z

.field private mOffsetMatrix:[F

.field private mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationAngleDegrees:F

.field private mOrientationAngleDegreesTarget:F

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mOrientationInitialized:Z

.field private mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

.field private mPanoramaOpacity:F

.field private mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

.field private mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

.field private mPerspective:[F

.field private mPitchAngleDegrees:F

.field private mRotate90:[F

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTempMatrix:[F

.field private mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

.field private mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

.field private mYawAngleDegrees:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V
    .locals 5
    .param p1, "panoramaView"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaView;
    .param p2, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    .line 53
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 58
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 59
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    .line 62
    iput v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 63
    iput v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    .line 64
    iput v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegreesTarget:F

    .line 65
    iput v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    .line 67
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationInitialized:Z

    .line 68
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    .line 69
    iput v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    .line 70
    iput v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    .line 82
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    .line 83
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFrameTransform:[F

    .line 84
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mRotate90:[F

    .line 85
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    .line 86
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    .line 87
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    .line 88
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    .line 92
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 94
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCompassMode:Z

    .line 95
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 96
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .line 97
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 99
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    .line 107
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .line 108
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 110
    return-void
.end method

.method private checkOrientation()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->update()V

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    move-result-object v0

    iget v0, v0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegreesTarget:F

    .line 423
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationInitialized:Z

    if-nez v0, :cond_0

    .line 424
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegreesTarget:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationInitialized:Z

    goto :goto_0
.end method

.method private drawScene()V
    .locals 8

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setView()V

    .line 360
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initFrame()V

    .line 363
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCompassMode:Z

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v0

    .line 365
    .local v0, "ekfOrientation":[F
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 366
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 367
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 368
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 369
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 379
    .end local v0    # "ekfOrientation":[F
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 380
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_GRAY:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mGroundPlane:Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->draw([F)V

    .line 384
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 385
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 386
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 387
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_GRAY:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 393
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 394
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    iget v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 395
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->draw([F)V

    .line 400
    :goto_1
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    neg-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 373
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 374
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 375
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v7

    .line 398
    .local v7, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_1
.end method

.method private getMaxTextureSize()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 584
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 585
    .local v0, "result":[I
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 586
    aget v1, v0, v2

    return v1
.end method

.method private initFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 300
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 301
    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 302
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 303
    return-void
.end method

.method private initRendering()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v12, 0x0

    .line 521
    iput-boolean v12, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    .line 524
    new-instance v9, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-direct {v9}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;-><init>()V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 525
    new-instance v9, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v9}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 526
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v10, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_BLUE:[F

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 529
    const/16 v0, 0x20

    .line 530
    .local v0, "kLatitudes":I
    const/16 v2, 0x40

    .line 531
    .local v2, "kLongitudes":I
    const v7, 0x409ccccd    # 4.9f

    .line 532
    .local v7, "kRadius":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileProvider()Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v9

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getMaxTextureSize()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->setMaximumTextureSize(I)V

    .line 533
    new-instance v9, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    invoke-direct {v9, v7}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;-><init>(F)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    .line 534
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    .line 535
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 538
    const/16 v1, 0x18

    .line 539
    .local v1, "kLatitudesWire":I
    const/16 v3, 0x30

    .line 540
    .local v3, "kLongitudesWire":I
    const/high16 v8, 0x41000000    # 8.0f

    .line 541
    .local v8, "kRadiusWire":F
    new-instance v9, Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-direct {v9, v1, v3, v8}, Lcom/google/android/apps/lightcycle/opengl/Sphere;-><init>(IIF)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    .line 542
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-virtual {v9, v14}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setLineDrawing(Z)V

    .line 543
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 546
    new-instance v9, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;

    invoke-direct {v9}, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;-><init>()V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mGroundPlane:Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;

    .line 547
    const/16 v4, 0x18

    .line 548
    .local v4, "kPlaneDivisions":I
    const/4 v5, -0x5

    .line 549
    .local v5, "kPlaneHeight":I
    const/high16 v6, 0x42200000    # 40.0f

    .line 550
    .local v6, "kPlaneScale":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mGroundPlane:Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;

    invoke-virtual {v9, v4, v4, v5, v6}, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->generateGeometry(IIIF)V

    .line 552
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mGroundPlane:Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 555
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mRotate90:[F

    invoke-static {v9, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 556
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mRotate90:[F

    aput v13, v9, v12

    .line 557
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mRotate90:[F

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v9, v14

    .line 558
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mRotate90:[F

    const/4 v10, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    .line 559
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mRotate90:[F

    const/4 v10, 0x5

    aput v13, v9, v10

    .line 562
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFrameTransform:[F

    invoke-static {v9, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 565
    sget-object v9, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    aget v9, v9, v12

    sget-object v10, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    aget v10, v10, v14

    sget-object v11, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    sget-object v12, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v13, 0x3

    aget v12, v12, v13

    invoke-static {v9, v10, v11, v12}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 568
    const-string v9, "Rendering objects are intialized."

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 569
    iput-boolean v14, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    .line 571
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v9, :cond_0

    .line 572
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 574
    :cond_0
    return-void
.end method

.method private onAutoRotationStateChanged()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 593
    :cond_0
    return-void
.end method

.method private setView()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 330
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float v9, v0, v4

    .line 333
    .local v9, "aspectRatio":F
    const/high16 v11, 0x3f000000    # 0.5f

    .line 334
    .local v11, "kMinZ":F
    const/high16 v10, 0x43480000    # 200.0f

    .line 335
    .local v10, "kMaxZ":F
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {p0, v0, v9, v4, v5}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPerspective(FFFF)V

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 341
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegreesTarget:F

    iget v5, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    sub-float/2addr v4, v5

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    .line 345
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCompassMode:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v4

    sub-float v2, v0, v4

    .line 349
    .local v2, "rotateDegrees":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 351
    .end local v2    # "rotateDegrees":F
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    move v4, v1

    move v6, v1

    move v8, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 352
    return-void
.end method

.method private updateFieldOfViewDegrees(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setFieldOfViewDegrees(F)V

    .line 262
    return-void
.end method


# virtual methods
.method public endPinchZoom(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateFieldOfViewDegrees(F)V

    .line 280
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 281
    return-void
.end method

.method public getAutoSpin()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    return v0
.end method

.method public getCurrentFieldOfViewDegrees()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    return v0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegreesTarget:F

    return v0
.end method

.method public getTargetPitchDegrees()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    return v0
.end method

.method public getTargetYawDegrees()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 434
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileProvider()Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getMaxTextureSize()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->setMaximumTextureSize(I)V

    .line 440
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    .line 441
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->loadTextures()Z

    .line 442
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->onDrawFrame()V

    .line 449
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    if-eqz v0, :cond_5

    .line 450
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 451
    iput v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    .line 454
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 455
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    .line 459
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 460
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 461
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 470
    :cond_4
    :goto_1
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    sub-float v1, v3, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    .line 474
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->checkOrientation()V

    .line 477
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->drawScene()V

    goto :goto_0

    .line 464
    :cond_5
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    const v1, 0x3951b717    # 2.0E-4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 465
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 466
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    const v1, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 495
    iput p2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    .line 496
    iput p3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    .line 498
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    if-nez v1, :cond_0

    .line 499
    sget-object v1, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Image file not set. Cannot initialize rendering."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-void

    .line 505
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initRendering()V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_1
    const-string v1, "Rendering init completed."

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 513
    return-void
.end method

.method public pinchZoom(F)V
    .locals 0
    .param p1, "zoomRatio"    # F

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateFieldOfViewDegrees(F)V

    .line 271
    return-void
.end method

.method public setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "autoRotationCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 197
    return-void
.end method

.method public setAutoSpin(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 158
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 159
    return-void
.end method

.method public setCompassMode(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCompassMode:Z

    .line 189
    return-void
.end method

.method public setCompassModePitchOffsetDegrees(F)V
    .locals 6
    .param p1, "pitchOffsetDegrees"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    const/high16 v3, 0x3f800000    # 1.0f

    move v2, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 410
    return-void
.end method

.method public setFieldOfViewDegrees(F)V
    .locals 3
    .param p1, "fovDegrees"    # F

    .prologue
    const/high16 v2, 0x42b40000    # 90.0f

    .line 249
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    .line 250
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    .line 252
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    .line 256
    const v0, 0x3eb33333    # 0.35f

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewDegrees:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    .line 258
    return-void
.end method

.method public setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V
    .locals 1
    .param p1, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    .line 488
    return-void
.end method

.method public setOnInitializedCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 204
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setPerspective(FFFF)V
    .locals 8
    .param p1, "fieldOfViewY"    # F
    .param p2, "aspectRatio"    # F
    .param p3, "zMin"    # F
    .param p4, "zMax"    # F

    .prologue
    .line 316
    float-to-double v0, p1

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, v0, p3

    .line 317
    .local v5, "height":F
    mul-float v3, v5, p2

    .line 318
    .local v3, "width":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    const/4 v1, 0x0

    neg-float v2, v3

    neg-float v4, v5

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 326
    return-void
.end method

.method public setPitchAngleRadians(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 148
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 149
    return-void
.end method

.method public setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 0
    .param p1, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    .param p2, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 178
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 179
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 180
    return-void
.end method

.method public setYawAngleRadians(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 137
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 138
    return-void
.end method

.method public startIntroAnimation()V
    .locals 1

    .prologue
    .line 120
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    .line 121
    const/high16 v0, -0x3e100000    # -30.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 125
    return-void
.end method

.method public toggleAutoSpin()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 166
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 167
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
