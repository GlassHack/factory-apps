.class public Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
.super Ljava/lang/Object;
.source "LightCycleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;
    }
.end annotation


# static fields
.field private static final ANIMATION_ALPHA:F = 0.17f

.field private static final ARROW_ALPHA:F = 0.5f

.field private static final ARROW_ELEVATION_DISPLAY_THRESHOLD_RAD:F = 0.34906584f

.field private static final ARROW_OFFSET_FACTOR:F = 0.85f

.field private static final CUBEMAP_SCALE:F = 32.0f

.field private static final HOLD_STILL_MESSAGE_DELAY_SEC:D = 0.25

.field private static final NUM_HEADING_ANIMATION_FRAMES:F = 45.0f

.field private static final PREVIEW_ALPHA:F = 0.7f

.field private static final PREVIEW_WIDTH_PCT:F = 0.45f

.field private static final ROTATION_LENGTH:I = 0x9

.field private static final SHOW_2D_PREVIEW:Z

.field private static final SHOW_CONFIDENTIAL_NOTICE:Z

.field private static final SHOW_WIRE_SPHERE:Z

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_HEADING_WITH_VISION:Z


# instance fields
.field private kFpsLoggingInterval:I

.field private mAddNextFrame:Z

.field private mAnimationFovTargetDegrees:F

.field private mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private mBlankFrames:I

.field private mBlankPending:Z

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

.field private mCurFieldOfViewDegrees:F

.field private mCurFieldOfViewDegreesScaled:F

.field private mCurrentFrameTexture:I

.field private mDeltaHeading:D

.field private mDeltaHeadingStack:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mDeltaHeadingStep:D

.field private mDeviceFieldOfViewDegrees:F

.field private mDisablePhotoTaking:Z

.field private mDisplayFrameImage:Z

.field private mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mFPSStartTime:J

.field private mFieldOfViewDegreesZoomStart:F

.field private mFinalizePhoto:Z

.field private mFlatDisplayMode:Z

.field private mFrameCount:I

.field private mFrameHeight:I

.field private final mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

.field private mFramePending:Z

.field private mFrameTransform:[F

.field private mFrameWidth:I

.field private mHoldStillStartTimeNs:J

.field private mHoldStillTargetHit:Z

.field private mHoldStillTimerStarted:Z

.field private mImageData:[B

.field private mInitialized:Z

.field private mIntroAnimating:Z

.field private mIntroFrameCount:I

.field private mMVPMatrix:[F

.field private mMaxFieldOfViewDegrees:I

.field private mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

.field private mMinFieldOfViewDegrees:I

.field private mModelView:[F

.field private mMovingTooFast:Z

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mOrthographic:[F

.field private mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

.field private mPanoUpdate:Z

.field private mPanoramaEmpty:Z

.field private mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

.field private mPerspective:[F

.field private mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

.field private mPhotoInProgress:Z

.field private mPhotoIndexInProgress:I

.field private mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

.field private mPreviousFrameTexture:I

.field private final mRealtimeAlignmentEnabled:Z

.field private mRenderBlankScreen:Z

.field private mRenderPending:Z

.field private mRenderTexturedPreview:Z

.field private final mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

.field private mRotate90:[F

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

.field private mTempMVPMatrix:[F

.field private mTempMatrix:[F

.field private mTestMatrix:[F

.field private mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

.field private mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

.field private mTexturesInitialized:Z

.field private mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

.field private mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

.field private mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mUpdateTextures:Z

.field private mUseBlendedPreview:Z

.field private mValidEstimate:Z

.field private mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

.field private mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

.field private mXOffset:I

.field private mYOffset:I

.field private mZooming:Z

.field private newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private renderingStopped:Z

.field private transformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/panorama/RenderedGui;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderedGui"    # Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .param p3, "realtimeAlignmentEnabled"    # Z

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 113
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    .line 114
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    .line 115
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    .line 116
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    .line 117
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    .line 118
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    .line 119
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    .line 120
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTestMatrix:[F

    .line 121
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    .line 123
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 124
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 127
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 128
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 129
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 130
    const/16 v0, 0x78

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    .line 131
    const/16 v0, 0x50

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    .line 132
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 135
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    .line 144
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 145
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    .line 146
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    .line 149
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    .line 150
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    .line 151
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    .line 152
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 153
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoIndexInProgress:I

    .line 154
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFlatDisplayMode:Z

    .line 155
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisplayFrameImage:Z

    .line 156
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 159
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    .line 160
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    .line 162
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    .line 165
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    .line 167
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    .line 171
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 174
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    .line 175
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    .line 179
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroAnimating:Z

    .line 180
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    .line 183
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 187
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->kFpsLoggingInterval:I

    .line 191
    iput-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    .line 192
    iput-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    .line 193
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    .line 198
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderBlankScreen:Z

    .line 199
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    .line 200
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankFrames:I

    .line 203
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUseBlendedPreview:Z

    .line 206
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    .line 1289
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->transformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    .line 213
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    .line 215
    iput-boolean p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRealtimeAlignmentEnabled:Z

    .line 216
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getOpenGlDefaultFieldOfViewDegrees()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 217
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 218
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getOpenGlMaxFieldOfViewDegrees()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    .line 220
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getOpenGlMinFieldOfViewDegrees()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    .line 222
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->transformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->setUpdatePhotoRenderingCallback(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;)V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRealtimeAlignmentEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # D

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # D

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    return-wide p1
.end method

.method static synthetic access$918(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D
    .locals 2
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # D

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    return-wide v0
.end method

.method private animateIntro()V
    .locals 18

    .prologue
    .line 583
    const/16 v16, 0x19

    .line 584
    .local v16, "kIntroMaxFrames":I
    const v17, 0x3f59999a    # 0.85f

    .line 587
    .local v17, "kTranslationScale":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getCameraPreview()Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->getReportedHorizontalFovDegrees()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getCameraFieldOfViewDegrees(F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    .line 592
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setView()V

    .line 593
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    if-nez v1, :cond_1

    .line 594
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAnimationFovTargetDegrees:F

    .line 595
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 596
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 600
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 605
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initFrame()V

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setView()V

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v5

    .line 608
    .local v5, "filterOutput":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 609
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->drawObject([F)V

    .line 614
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 615
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 616
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_GRAY:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 623
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->draw([F)V

    .line 626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 627
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v7, 0x0

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v2

    sub-float v8, v1, v2

    .line 631
    .local v8, "rotateDegrees":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 632
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v5    # "filterOutput":[F
    .end local v8    # "rotateDegrees":F
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    const v2, 0x3e2e147b    # 0.17f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAnimationFovTargetDegrees:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 644
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    .line 645
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    .line 646
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroAnimating:Z

    .line 647
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAnimationFovTargetDegrees:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 649
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestRender()V

    .line 651
    return-void

    .line 637
    :catch_0
    move-exception v15

    .line 638
    .local v15, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v15}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearBackground()V
    .locals 1

    .prologue
    .line 534
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 535
    return-void
.end method

.method private createTextures()V
    .locals 5

    .prologue
    .line 1126
    const-string v2, "Creating textures"

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v1

    .line 1131
    .local v1, "panoTexture":I
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitPanoTexture(I)V

    .line 1132
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->createTexture(I)V

    .line 1133
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->setTextureId(I)V

    .line 1136
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    .line 1137
    .local v0, "frameTexture":I
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    .line 1138
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->createTexture(I)V

    .line 1139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    .line 1142
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 1143
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    .line 1145
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    .line 1146
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    .line 1148
    const-string v2, "Finished creating textures."

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method private drawAlignArrows([F)V
    .locals 5
    .param p1, "transform"    # [F

    .prologue
    .line 1206
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v2

    .line 1207
    .local v2, "orientation":[F
    const/4 v3, 0x6

    aget v3, v2, v3

    neg-float v1, v3

    .line 1208
    .local v1, "elevation":F
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1210
    const v3, 0x3eb2b8c2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 1211
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 1212
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 1213
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V

    .line 1215
    :cond_0
    const v3, -0x414d473e

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 1216
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 1217
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 1218
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :cond_1
    :goto_0
    return-void

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private drawScene(I)V
    .locals 16
    .param p1, "frameTextureId"    # I

    .prologue
    .line 718
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 719
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 721
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setView()V

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateTextures()V

    .line 727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 731
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isProcessingAlignment()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonEnabled(Z)V

    .line 737
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initFrame()V

    .line 741
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->drawObject([F)V

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->drawObject([F)V

    .line 751
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_GRAY:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 757
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderBlankScreen:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-eqz v1, :cond_4

    .line 758
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    .line 761
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankFrames:I

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankFrames:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 762
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :cond_0
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    .line 874
    return-void

    .line 727
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 728
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 733
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 767
    :cond_4
    const/16 v1, 0xbe2

    :try_start_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 768
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUseBlendedPreview:Z

    if-eqz v1, :cond_e

    .line 769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->draw([F)V

    .line 778
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFlatDisplayMode:Z

    if-nez v1, :cond_7

    .line 779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v2

    sub-float v3, v1, v2

    .line 783
    .local v3, "rotateDegrees":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 786
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    if-eqz v1, :cond_f

    .line 787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->GREEN:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 791
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mValidEstimate:Z

    if-nez v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v1, :cond_7

    .line 792
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 793
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 799
    .end local v3    # "rotateDegrees":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCurrentOrientation([F)V

    .line 800
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawTargetsOrthographic([F[F)V

    .line 802
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 803
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 813
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 814
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 815
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 820
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    if-nez v1, :cond_8

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 821
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 822
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 825
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v1

    if-nez v1, :cond_9

    .line 826
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 827
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 828
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    .line 832
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    if-eqz v1, :cond_a

    .line 833
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 834
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    sub-long v1, v14, v1

    long-to-double v1, v1

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double v11, v1, v4

    .line 835
    .local v11, "elapsed":D
    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    cmpl-double v1, v11, v1

    if-lez v1, :cond_a

    .line 836
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 837
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    sget-object v2, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HOLDSTILL:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->activateMessage(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;D)V

    .line 841
    .end local v11    # "elapsed":D
    .end local v14    # "now":J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v1, :cond_b

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    sget-object v2, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HITTOSTART:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->activateMessage(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;D)V

    .line 843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawAlignArrows([F)V

    .line 845
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawMessages([F)V

    .line 848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->running()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->draw([FII)V

    .line 853
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->draw([F)V

    .line 856
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 861
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ValidInPlaneAngle()I

    move-result v13

    .line 862
    .local v13, "inPlane":I
    if-gez v13, :cond_10

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawRotateDevice([FZ)V

    .line 868
    :cond_d
    :goto_6
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V
    :try_end_1
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 870
    .end local v13    # "inPlane":I
    :catch_0
    move-exception v10

    .line 871
    .local v10, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v10}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto/16 :goto_3

    .line 772
    .end local v10    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    :cond_e
    const/16 v1, 0xb71

    :try_start_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 773
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->draw([F)V

    goto/16 :goto_4

    .line 789
    .restart local v3    # "rotateDegrees":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    goto/16 :goto_5

    .line 864
    .end local v3    # "rotateDegrees":F
    .restart local v13    # "inPlane":I
    :cond_10
    if-lez v13, :cond_d

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawRotateDevice([FZ)V
    :try_end_2
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6
.end method

.method private initArrows()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    .line 383
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    sget v10, Lcom/google/android/apps/lightcycle/R$drawable;->pano_reticule_default:I

    invoke-static {v9, v10}, Lcom/google/android/apps/lightcycle/util/UiUtil;->getDrawableDimensions(Landroid/content/Context;I)Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v4

    .line 385
    .local v4, "reticleSize":Lcom/google/android/apps/lightcycle/util/Size;
    iget v9, v4, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    int-to-float v9, v9

    const v10, 0x3f59999a    # 0.85f

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 386
    .local v0, "arrowOffset":I
    iget v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    div-int/lit8 v5, v9, 0x2

    .line 387
    .local v5, "surfaceHalfHeightPixels":I
    iget v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    div-int/lit8 v6, v9, 0x2

    .line 389
    .local v6, "surfaceHalfWidthPixels":I
    new-instance v8, Landroid/graphics/PointF;

    int-to-float v9, v6

    add-int v10, v5, v0

    int-to-float v10, v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 391
    .local v8, "upArrowPosPortrait":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v9, v6

    sub-int v10, v5, v0

    int-to-float v10, v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 393
    .local v2, "downArrowPosPortrait":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/PointF;

    add-int v9, v6, v0

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {v7, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 395
    .local v7, "upArrowPosLandscape":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    sub-int v9, v6, v0

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {v1, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 397
    .local v1, "downArrowPosLandscape":Landroid/graphics/PointF;
    new-instance v9, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 398
    new-instance v9, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 399
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    sget v11, Lcom/google/android/apps/lightcycle/R$drawable;->pano_alignhint_up:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 400
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    sget v11, Lcom/google/android/apps/lightcycle/R$drawable;->pano_alignhint_down:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 401
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v9, v7, v8, v10, v11}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 403
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v9, v1, v2, v10, v11}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 407
    :try_start_0
    new-instance v9, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v9}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 413
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 414
    return-void

    .line 408
    :catch_0
    move-exception v3

    .line 409
    .local v3, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 528
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 529
    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 530
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 531
    return-void
.end method

.method private initRendering()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    .line 423
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 424
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    .line 425
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_BLUE:[F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 429
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    .line 432
    const/16 v7, 0x20

    .line 433
    .local v7, "kLatitudes":I
    const/16 v9, 0x40

    .line 434
    .local v9, "kLongitudes":I
    const v11, 0x409ccccd    # 4.9f

    .line 435
    .local v11, "kRadius":F
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-direct {v0, v7, v9, v11}, Lcom/google/android/apps/lightcycle/opengl/Sphere;-><init>(IIF)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    .line 436
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 439
    const/16 v8, 0x18

    .line 440
    .local v8, "kLatitudesWire":I
    const/16 v10, 0x30

    .line 441
    .local v10, "kLongitudesWire":I
    const/high16 v12, 0x41000000    # 8.0f

    .line 442
    .local v12, "kRadiusWire":F
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-direct {v0, v8, v10, v12}, Lcom/google/android/apps/lightcycle/opengl/Sphere;-><init>(IIF)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setLineDrawing(Z)V

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 447
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    .line 450
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->init(Landroid/content/Context;Lcom/google/android/apps/lightcycle/opengl/Shader;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 457
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;-><init>(Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    .line 461
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 462
    .local v13, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/lightcycle/R$drawable;->cubemap:I

    invoke-static {v0, v1, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 465
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-direct {v0, v6, v1}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;-><init>(Landroid/graphics/Bitmap;F)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    .line 468
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setOutlineShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->setLineShader(Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 486
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 492
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    .line 494
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 498
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 501
    sget-object v0, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    .line 507
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    .line 510
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    .line 517
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTestMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 518
    return-void
.end method

.method private logFPS()V
    .locals 7

    .prologue
    .line 1190
    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-nez v5, :cond_0

    .line 1191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    .line 1193
    :cond_0
    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    iget v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->kFpsLoggingInterval:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_1

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-eqz v5, :cond_1

    .line 1194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1195
    .local v2, "endTime":J
    iget-wide v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    sub-long v0, v2, v5

    .line 1196
    .local v0, "diffTimeMs":J
    const/high16 v5, 0x447a0000    # 1000.0f

    iget v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->kFpsLoggingInterval:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    long-to-float v6, v0

    div-float v4, v5, v6

    .line 1198
    .local v4, "fps":F
    iput-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    .line 1200
    .end local v0    # "diffTimeMs":J
    .end local v2    # "endTime":J
    .end local v4    # "fps":F
    :cond_1
    return-void
.end method

.method private declared-synchronized processFrame()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1036
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v11}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->finished()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isPreviewActive()Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->processFrame([BIIZZ)V

    .line 1041
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->validEstimate()Z

    move-result v6

    .line 1042
    .local v6, "aligned":Z
    invoke-virtual {p0, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setValidEstimate(Z)V

    .line 1043
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->movingTooFast()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    .line 1048
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->takeNewPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setPanoUpdate()V

    .line 1054
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->getRotationEstimate()[F

    move-result-object v8

    .line 1055
    .local v8, "rotation":[F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->addNewPhoto([F)I

    move-result v10

    .line 1058
    .local v10, "thumbnailTextureId":I
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 1059
    .local v7, "photoIndex":I
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0, v8, v7, v10}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestPhoto([FII)V

    .line 1063
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->setPhotoVisibility(IZ)V

    .line 1064
    iput v7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoIndexInProgress:I

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 1070
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestRender()V

    .line 1071
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateButtonVisibility()V

    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 1079
    .end local v7    # "photoIndex":I
    .end local v8    # "rotation":[F
    .end local v10    # "thumbnailTextureId":I
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoIndexInProgress:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->setPhotoVisibility(IZ)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->updateTargets()V

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->targetHit()Z

    move-result v9

    .line 1094
    .local v9, "targetHit":Z
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->running()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v9, :cond_5

    .line 1095
    const-string v0, "Starting the countdown"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->startCountdown()V

    .line 1105
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    if-eqz v0, :cond_3

    .line 1106
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->stopCountdown()V

    .line 1110
    .end local v9    # "targetHit":Z
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    monitor-exit p0

    return-void

    .end local v6    # "aligned":Z
    :cond_4
    move v4, v5

    .line 1036
    goto/16 :goto_0

    .line 1097
    .restart local v6    # "aligned":Z
    .restart local v9    # "targetHit":Z
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->running()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1099
    if-eqz v9, :cond_6

    if-eqz v9, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    if-eqz v0, :cond_2

    .line 1100
    :cond_6
    const-string v0, "Stopping the countdown."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->stopCountdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1036
    .end local v6    # "aligned":Z
    .end local v9    # "targetHit":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scaleFov(F)F
    .locals 10
    .param p1, "origFovDegrees"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 705
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    if-ge v4, v5, :cond_0

    .line 706
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    div-double v0, v4, v6

    .line 708
    .local v0, "f":D
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-double v4, v4

    mul-double v6, v8, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v2, v8, v4

    .line 709
    .local v2, "newFov":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 710
    double-to-float p1, v2

    .line 712
    .end local v0    # "f":D
    .end local v2    # "newFov":D
    .end local p1    # "origFovDegrees":F
    :cond_0
    return p1
.end method

.method private setOrthographic(FFF)V
    .locals 10
    .param p1, "aspectRatio"    # F
    .param p2, "zMin"    # F
    .param p3, "zMax"    # F

    .prologue
    const/4 v2, 0x0

    .line 574
    const/high16 v9, 0x3f800000    # 1.0f

    .line 575
    .local v9, "width":F
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v8, v0, p1

    .line 576
    .local v8, "height":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v5, v4

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 578
    return-void
.end method

.method private setPerspective(FFFF)V
    .locals 8
    .param p1, "fieldOfViewY"    # F
    .param p2, "aspectRatio"    # F
    .param p3, "zMin"    # F
    .param p4, "zMax"    # F

    .prologue
    .line 563
    float-to-double v0, p1

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, v0, p3

    .line 564
    .local v5, "height":F
    mul-float v3, v5, p2

    .line 565
    .local v3, "width":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v1, 0x0

    neg-float v2, v3

    neg-float v4, v5

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 567
    return-void
.end method

.method private static setRotation([F[F)V
    .locals 6
    .param p0, "rotation"    # [F
    .param p1, "transform"    # [F

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1172
    aget v0, p0, v1

    aput v0, p1, v1

    .line 1173
    aget v0, p0, v2

    aput v0, p1, v2

    .line 1174
    aget v0, p0, v3

    aput v0, p1, v3

    .line 1175
    const/4 v0, 0x3

    aget v0, p0, v0

    aput v0, p1, v4

    .line 1176
    aget v0, p0, v4

    aput v0, p1, v5

    .line 1177
    const/4 v0, 0x6

    aget v1, p0, v5

    aput v1, p1, v0

    .line 1178
    const/16 v0, 0x8

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, p1, v0

    .line 1179
    const/16 v0, 0x9

    const/4 v1, 0x7

    aget v1, p0, v1

    aput v1, p1, v0

    .line 1180
    const/16 v0, 0xa

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p1, v0

    .line 1181
    return-void
.end method

.method private static setRotationTranspose([F[F)V
    .locals 6
    .param p0, "rotation"    # [F
    .param p1, "transform"    # [F

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1159
    aget v0, p0, v1

    aput v0, p1, v1

    .line 1160
    const/4 v0, 0x3

    aget v0, p0, v0

    aput v0, p1, v2

    .line 1161
    const/4 v0, 0x6

    aget v0, p0, v0

    aput v0, p1, v3

    .line 1162
    aget v0, p0, v2

    aput v0, p1, v4

    .line 1163
    aget v0, p0, v4

    aput v0, p1, v5

    .line 1164
    const/4 v0, 0x6

    const/4 v1, 0x7

    aget v1, p0, v1

    aput v1, p1, v0

    .line 1165
    const/16 v0, 0x8

    aget v1, p0, v3

    aput v1, p1, v0

    .line 1166
    const/16 v0, 0x9

    aget v1, p0, v5

    aput v1, p1, v0

    .line 1167
    const/16 v0, 0xa

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p1, v0

    .line 1168
    return-void
.end method

.method private setView()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 655
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float v10, v0, v4

    .line 658
    .local v10, "aspectRatio":F
    const v13, 0x3dcccccd    # 0.1f

    .line 659
    .local v13, "kMinZ":F
    const/high16 v11, 0x43480000    # 200.0f

    .line 661
    .local v11, "kMaxZ":F
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x43480000    # 200.0f

    invoke-direct {p0, v0, v10, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setPerspective(FFFF)V

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 665
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v4

    sub-float v2, v0, v4

    .line 668
    .local v2, "rotateDegrees":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 669
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    move v4, v1

    move v6, v1

    move v8, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 672
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v6, v0

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v7, v0

    const v8, 0x3ee66666    # 0.45f

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    move v5, v10

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->init(Landroid/content/Context;FFFFLcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 675
    const/high16 v14, -0x3db80000    # -50.0f

    .line 676
    .local v14, "kMinZOrtho":F
    const/high16 v12, 0x42480000    # 50.0f

    .line 677
    .local v12, "kMaxZOrtho":F
    const/high16 v0, -0x3db80000    # -50.0f

    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {p0, v10, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setOrthographic(FFF)V

    .line 680
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->init(Landroid/content/Context;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 684
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v3}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->init(II)V

    .line 685
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setDeviceOrientationDetector(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 686
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 689
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->init(IILcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 692
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initArrows()V

    .line 694
    .end local v12    # "kMaxZOrtho":F
    .end local v14    # "kMinZOrtho":F
    :cond_0
    return-void
.end method

.method private updateButtonVisibility()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1119
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setDoneButtonVisible(Z)V

    .line 1120
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v3

    if-lt v3, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisible(Z)V

    .line 1121
    return-void

    :cond_0
    move v0, v2

    .line 1119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1120
    goto :goto_1
.end method

.method private updateFieldOfViewDegrees(F)V
    .locals 2
    .param p1, "zoomRatio"    # F

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 371
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 373
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 376
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 377
    return-void
.end method

.method private updateTextures()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUseBlendedPreview:Z

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->getTextureId()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateTexture(I)I

    .line 541
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoUpdate:Z

    .line 544
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisplayFrameImage:Z

    if-eqz v0, :cond_1

    .line 547
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    goto :goto_0
.end method

.method private static yIsUp([F)Z
    .locals 3
    .param p0, "transform"    # [F

    .prologue
    const/4 v0, 0x1

    .line 1235
    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createFrameDisplay([FII)V
    .locals 2
    .param p1, "vertices"    # [F
    .param p2, "pointsX"    # I
    .param p3, "pointsY"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->generateGeometry([FIIF)V

    .line 362
    return-void
.end method

.method public drawFrame()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    .line 887
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-nez v1, :cond_1

    .line 973
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    if-nez v1, :cond_2

    .line 892
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->createTextures()V

    .line 896
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroAnimating:Z

    if-eqz v1, :cond_3

    .line 897
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->animateIntro()V

    .line 898
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    goto :goto_0

    .line 902
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    if-eqz v1, :cond_4

    .line 906
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    .line 907
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateNewTextures()V

    .line 911
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-nez v1, :cond_5

    .line 917
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->processFrame()V

    .line 920
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getEkfEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 922
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v1, :cond_a

    .line 923
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 936
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    .line 937
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetFilteredRotation([F)V

    .line 945
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v1, :cond_8

    .line 946
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateFrameTexture(I)I

    .line 950
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->update()V

    .line 953
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-lez v1, :cond_9

    .line 954
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawScene(I)V

    .line 958
    :cond_9
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 959
    .local v0, "tmp":I
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 960
    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    .line 962
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    .line 969
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestRender()V

    .line 972
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->logFPS()V

    goto :goto_0

    .line 924
    .end local v0    # "tmp":I
    :cond_a
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_6

    .line 926
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-wide v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_b

    .line 927
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getHeadingDegrees()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 929
    iput-wide v7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    goto :goto_1

    .line 931
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getHeadingDegrees()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 933
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    iget-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    goto :goto_1
.end method

.method public endPinchZoom(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateFieldOfViewDegrees(F)V

    .line 355
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 357
    return-void
.end method

.method public finalizePhoto()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 344
    return-void
.end method

.method public getDrawOrientation()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v0

    return v0
.end method

.method public getFlatDisplayMode()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFlatDisplayMode:Z

    return v0
.end method

.method public getPanoPreview2d()Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    return-object v0
.end method

.method public getRenderedGui()Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-nez v0, :cond_1

    .line 884
    :goto_0
    return-void

    .line 882
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->clearBackground()V

    .line 883
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawFrame()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 1011
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    if-ne p3, v0, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1014
    :cond_0
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    .line 1015
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    .line 1016
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewWidth:I

    .line 1017
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewHeight:I

    .line 1018
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mXOffset:I

    .line 1019
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mYOffset:I

    .line 1021
    const-string v0, "Rendering init completed."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    .line 1025
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->init(Landroid/content/Context;Lcom/google/android/apps/lightcycle/opengl/Shader;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 1027
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1001
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initRendering()V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 1006
    return-void

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method public pinchZoom(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateFieldOfViewDegrees(F)V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 351
    return-void
.end method

.method public renderPending()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    return v0
.end method

.method public resetOrientation()V
    .locals 3

    .prologue
    .line 983
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->setInitialOrientation()V

    .line 985
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float v0, v1, v2

    .line 986
    .local v0, "zoomRatio":F
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->endPinchZoom(F)V

    .line 987
    return-void
.end method

.method public setAddNextFrame()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    .line 285
    return-void
.end method

.method public setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0
    .param p1, "controller"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 254
    return-void
.end method

.method public setCurrentRotation([F)V
    .locals 2
    .param p1, "rotation3x3"    # [F

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1185
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    invoke-static {p1, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setRotation([F[F)V

    .line 1186
    return-void
.end method

.method public setDisablePhotoTaking(Z)V
    .locals 0
    .param p1, "disablePhotoTaking"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    .line 337
    return-void
.end method

.method public setFlatDisplayMode(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFlatDisplayMode:Z

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->setDisplayFlatMode(Z)V

    .line 306
    return-void
.end method

.method public setFrameDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    .line 263
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    .line 264
    return-void
.end method

.method public setImageData([B)V
    .locals 1
    .param p1, "image"    # [B

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 278
    return-void
.end method

.method public setLiveImageDisplay(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 315
    return-void
.end method

.method public setPanoUpdate()V
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoUpdate:Z

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 978
    return-void
.end method

.method public setPhotoFinished()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 300
    return-void
.end method

.method public setRenderBlankScreen(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderBlankScreen:Z

    .line 326
    if-eqz p1, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    .line 329
    :cond_0
    return-void
.end method

.method public setRenderPending()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    .line 258
    return-void
.end method

.method public setRenderingStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    .line 322
    return-void
.end method

.method public setSensorReader(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "reader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 288
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 289
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;-><init>(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 290
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-direct {v0, p2}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;-><init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    .line 291
    return-void
.end method

.method public setTexturedPreview(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 272
    return-void
.end method

.method public setValidEstimate(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mValidEstimate:Z

    .line 250
    return-void
.end method

.method public setViewport(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 990
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mXOffset:I

    .line 991
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mYOffset:I

    .line 992
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewWidth:I

    .line 993
    iput p4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewHeight:I

    .line 994
    return-void
.end method

.method public declared-synchronized undoLastCapturedPhoto()V
    .locals 8

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v1

    .line 1241
    .local v1, "numPhotos":I
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->undoAddPhoto()V

    .line 1249
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1250
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1240
    .end local v1    # "numPhotos":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1253
    .restart local v1    # "numPhotos":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1254
    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v3, v4, v6

    iput-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    .line 1255
    iget-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    const-wide v5, 0x4046800000000000L    # 45.0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    .line 1256
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1258
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateButtonVisibility()V

    .line 1262
    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    .line 1276
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1278
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1283
    :goto_1
    monitor-exit p0

    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
