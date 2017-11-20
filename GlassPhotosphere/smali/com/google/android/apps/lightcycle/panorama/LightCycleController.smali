.class public Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DONE_ID:I = 0x1

.field private static final ENABLE_FLAT_MODE:Z = false

.field private static final FRAME_GRID_DIM:I = 0x2

.field private static final MANUAL_PHOTO_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String;

.field public static final UNDO_ID:I = 0x2


# instance fields
.field private final calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

.field private imageFileWriteHandler:Landroid/os/Handler;

.field private mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

.field private mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

.field private mCameraStopped:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPhoto:I

.field private mEnableTouchEvents:Z

.field private mFirstFrame:Z

.field private mLastZoom:Z

.field private mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

.field private mLocationProvider:Lcom/google/android/apps/lightcycle/util/LocationProvider;

.field private mMessageSender:Lcom/google/android/apps/lightcycle/panorama/MessageSender;

.field private mOrientationWriter:Ljava/io/FileWriter;

.field mPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mTakeNewPhoto:Z

.field private mTakingPhoto:Z

.field mTestCallback:Landroid/hardware/Camera$PictureCallback;

.field private mThumbnailTextureIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mZoomCurrentDistance:F

.field private mZoomStartingDistance:F

.field private mZooming:Z

.field private onPhotoTakenCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final photosTaken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private previewActive:Z

.field private final rotationQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/lightcycle/camera/CameraPreview;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Landroid/opengl/GLSurfaceView;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "cameraPreview"    # Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    .param p3, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .param p4, "localStorage"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .param p5, "incrementalAligner"    # Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
    .param p6, "renderer"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p7, "view"    # Landroid/opengl/GLSurfaceView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakeNewPhoto:Z

    .line 92
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mThumbnailTextureIds:Ljava/util/Vector;

    .line 93
    iput v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    .line 94
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    .line 96
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocationProvider:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    .line 98
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakingPhoto:Z

    .line 100
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mFirstFrame:Z

    .line 101
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraStopped:Z

    .line 102
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mEnableTouchEvents:Z

    .line 103
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    .line 107
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/MessageSender;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/panorama/MessageSender;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mMessageSender:Lcom/google/android/apps/lightcycle/panorama/MessageSender;

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->imageFileWriteHandler:Landroid/os/Handler;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->rotationQueue:Ljava/util/List;

    .line 121
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    .line 452
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$5;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 486
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$6;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTestCallback:Landroid/hardware/Camera$PictureCallback;

    .line 491
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 497
    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 176
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mContext:Landroid/content/Context;

    .line 177
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 178
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .line 179
    iput-object p5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    .line 180
    iput-object p7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mView:Landroid/opengl/GLSurfaceView;

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->initPhotoStorage(Landroid/content/Context;)V

    .line 186
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    invoke-interface {v1, p0}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    if-nez v1, :cond_0

    .line 189
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    const-string v2, "Error creating CameraPreview."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-object p6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 197
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setSensorReader(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 201
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getRenderedGui()Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V

    .line 212
    new-instance v2, Lcom/google/android/apps/lightcycle/util/LocationProvider;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v2, v1}, Lcom/google/android/apps/lightcycle/util/LocationProvider;-><init>(Landroid/location/LocationManager;)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocationProvider:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    .line 216
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setSensorVelocityCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MessageSender;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mMessageSender:Lcom/google/android/apps/lightcycle/panorama/MessageSender;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraStopped:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mFirstFrame:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mFirstFrame:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .param p1, "x1"    # [F

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writeOrientationString([F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .param p1, "x1"    # [B

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writePictureToFileAsync([B)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startPreview(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    return v0
.end method

.method static synthetic access$1704(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mThumbnailTextureIds:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->rotationQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/io/File;)D
    .locals 2
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->readExposureFromFile(Ljava/io/File;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/util/LocationProvider;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocationProvider:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/util/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onPhotoTakenCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakingPhoto:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakingPhoto:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakeNewPhoto:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakeNewPhoto:Z

    return p1
.end method

.method private getPinchDistance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 561
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 562
    .local v0, "dx":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 563
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private initPhotoStorage(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v2, v2, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create file writer for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readExposureFromFile(Ljava/io/File;)D
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 741
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v7, "ExposureTime"

    invoke-virtual {v6, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 747
    .local v5, "value":Ljava/lang/String;
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 748
    .local v0, "dValue":D
    if-eqz v5, :cond_0

    .line 750
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 757
    .end local v0    # "dValue":D
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v0

    .line 751
    .restart local v0    # "dValue":D
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 752
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    goto :goto_0

    .line 756
    .end local v0    # "dValue":D
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 757
    .local v2, "e":Ljava/io/IOException;
    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    goto :goto_0
.end method

.method private restartPreview(Ljava/lang/Object;)V
    .locals 1
    .param p1, "waiter"    # Ljava/lang/Object;

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakingPhoto:Z

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startPreview(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startPreview(Ljava/lang/Object;)V
    .locals 2
    .param p1, "waiter"    # Ljava/lang/Object;

    .prologue
    .line 388
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 405
    return-void
.end method

.method private takePhoto()V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 383
    return-void
.end method

.method private writeOrientationString([F)V
    .locals 6
    .param p1, "rotation"    # [F

    .prologue
    .line 417
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 418
    .local v2, "out":Ljava/lang/String;
    const/4 v3, 0x0

    .line 420
    .local v3, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    aget v4, p1, v1

    add-float/2addr v3, v4

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v4, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_1
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private writePictureToFileAsync([B)V
    .locals 2
    .param p1, "imageData"    # [B

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->imageFileWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method


# virtual methods
.method public clearRendering()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setRenderBlankScreen(Z)V

    .line 554
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestRender()V

    .line 555
    return-void
.end method

.method public getCameraPreview()Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    return-object v0
.end method

.method public getDrawOrientation()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getDrawOrientation()I

    move-result v0

    return v0
.end method

.method public getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method public getTotalPhotos()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isPreviewActive()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    return v0
.end method

.method public isProcessingAlignment()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isProcessingImages()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 724
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 567
    iget-boolean v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mEnableTouchEvents:Z

    if-nez v5, :cond_1

    move v0, v4

    .line 625
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 572
    :cond_1
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getRenderedGui()Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 573
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 622
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 582
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZoomStartingDistance:F

    .line 583
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZooming:Z

    goto :goto_0

    .line 588
    :pswitch_3
    iget-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZooming:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 589
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZoomCurrentDistance:F

    .line 590
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZoomCurrentDistance:F

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZoomStartingDistance:F

    div-float v3, v4, v5

    .line 591
    .local v3, "zoomRatio":F
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->pinchZoom(F)V

    goto :goto_0

    .line 597
    .end local v3    # "zoomRatio":F
    :pswitch_4
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZooming:Z

    .line 599
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZoomCurrentDistance:F

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mZoomStartingDistance:F

    div-float v3, v4, v5

    .line 600
    .restart local v3    # "zoomRatio":F
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->endPinchZoom(F)V

    .line 601
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLastZoom:Z

    goto :goto_0

    .line 606
    .end local v3    # "zoomRatio":F
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 607
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 608
    .local v2, "y":F
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getPanoPreview2d()Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 609
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getPanoPreview2d()Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->pointInside(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 619
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLastZoom:Z

    goto :goto_0

    .line 613
    :cond_3
    iget-boolean v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLastZoom:Z

    if-nez v5, :cond_2

    goto :goto_1

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public registerMessageSink(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V
    .locals 1
    .param p1, "sink"    # Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mMessageSender:Lcom/google/android/apps/lightcycle/panorama/MessageSender;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/MessageSender;->subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V

    .line 136
    return-void
.end method

.method public requestPhoto([FII)V
    .locals 3
    .param p1, "rotation"    # [F
    .param p2, "photoIndex"    # I
    .param p3, "thumbnailTextureId"    # I

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakingPhoto:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->takePhoto()V

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->rotationQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mThumbnailTextureIds:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mThumbnailTextureIds:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mThumbnailTextureIds:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakingPhoto:Z

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 239
    return-void
.end method

.method public resetVelocityLimit()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->calibrator:Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->reset()V

    .line 169
    return-void
.end method

.method public resizeFrameDisplay()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 297
    invoke-static {v2, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetFrameGeometry(II)[F

    move-result-object v0

    .line 301
    .local v0, "grid":[F
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->createFrameDisplay([FII)V

    .line 302
    return-void
.end method

.method public setAppVersion()V
    .locals 6

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 536
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 541
    :goto_0
    if-eqz v1, :cond_0

    .line 542
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 543
    .local v2, "version":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting version to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 544
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetAppVersion(Ljava/lang/String;)V

    .line 546
    .end local v2    # "version":Ljava/lang/String;
    :cond_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Unable to find the app package."

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableTouchEvents(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mEnableTouchEvents:Z

    .line 153
    return-void
.end method

.method public setFrameDimensions(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setFrameDimensions(II)V

    .line 227
    return-void
.end method

.method public setLiveImageDisplay(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setLiveImageDisplay(Z)V

    .line 145
    return-void
.end method

.method public setLocationProviderEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocationProvider:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->startProvider()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocationProvider:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->stopProvider()V

    goto :goto_0
.end method

.method public setOnPhotoTakenCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
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
    .line 731
    .local p1, "onPhotoTakenCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onPhotoTakenCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 732
    return-void
.end method

.method public startCamera(Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "useCalibrationMode"    # Z

    .prologue
    const/4 v6, 0x2

    .line 256
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    invoke-interface {v2}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->getCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/16 v3, 0x4b0

    const/16 v4, 0x640

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->computePictureSizes(Landroid/hardware/Camera$Parameters;II)Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;

    move-result-object v1

    .line 266
    .local v1, "sizes":Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;
    iget-object v2, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->small:Lcom/google/android/apps/lightcycle/util/Size;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget-object v3, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->small:Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget-object v4, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->large:Lcom/google/android/apps/lightcycle/util/Size;

    iget v4, v4, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    const/4 v5, 0x6

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetImageMatchAndStitchWidths(IIII)V

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCamera set match width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->small:Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 272
    .end local v1    # "sizes":Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;
    :cond_0
    invoke-static {p2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForCapture(Z)V

    .line 273
    const-string v2, "Reset native code for capture."

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setAppVersion()V

    .line 280
    invoke-static {v6, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetFrameGeometry(II)[F

    move-result-object v0

    .line 284
    .local v0, "grid":[F
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v2, v0, v6, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->createFrameDisplay([FII)V

    .line 287
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    if-nez v2, :cond_1

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraStopped:Z

    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->restartPreview(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->previewActive:Z

    .line 307
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setRenderingStopped(Z)V

    .line 308
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraStopped:Z

    .line 309
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->releaseCamera()V

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    .line 314
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocationProvider:Lcom/google/android/apps/lightcycle/util/LocationProvider;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->stopProvider()V

    .line 315
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->writeMetadataFile(Ljava/lang/String;Ljava/util/List;)Z

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized undoAddImage()I
    .locals 6

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 692
    const/4 v4, 0x0

    .line 720
    :goto_0
    monitor-exit p0

    return v4

    .line 695
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    .line 696
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 703
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 706
    .local v0, "buf":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v3, "out":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    if-ge v2, v4, :cond_1

    .line 708
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 711
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 713
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    .line 714
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 715
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mOrientationWriter:Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 716
    const-string v4, "undoAddImage: finished writing mOrientationWriter"

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "i":I
    .end local v3    # "out":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_3
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCurrentPhoto:I

    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->TAG:Ljava/lang/String;

    const-string v5, "undo image exception:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 691
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public undoLastCapturedPhoto()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getRenderedGui()Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->notifyUndo()V

    .line 235
    return-void
.end method
