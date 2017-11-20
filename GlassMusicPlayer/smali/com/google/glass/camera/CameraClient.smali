.class public abstract Lcom/google/glass/camera/CameraClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final MAX_NUM_OPEN_RETRIES:I = 0x1

.field private static final NUM_PREVIEW_BUFFERS:I = 0x3

.field public static final PICTURE_ID_START:I

.field public static backgroundExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static decodeExecutor:Ljava/util/concurrent/Executor;

.field private static testSurfaceTexture:Landroid/graphics/SurfaceTexture;


# instance fields
.field volatile camera:Lcom/google/glass/android/hardware/Camera;

.field protected final cameraManager:Lcom/google/android/glass/media/CameraManager;

.field private volatile cameraUsingPreviewSurface:Z

.field protected final context:Landroid/content/Context;

.field protected final errorCallback:Landroid/hardware/Camera$ErrorCallback;

.field protected final fileSaver:Lcom/google/glass/util/FileSaver;

.field private hasFirstFrameArrived:Z

.field private keepPreviewSurface:Z

.field protected listener:Lcom/google/glass/camera/CameraListener;

.field protected final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field protected pictureId:I

.field protected final pictureRequestList:Ljava/util/List;

.field private postviewBuffer:[B

.field private final previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private previewCallbackBuffer:[[B

.field private previewSurfaceInUse:Landroid/graphics/SurfaceTexture;

.field private final previewSurfaceLock:Ljava/lang/Object;

.field private releasePreviewSurfaceRequested:Z

.field private volatile releaseRequested:Z

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private video:Lcom/google/glass/camera/VideoWrapper;

.field private videoRecorder:Landroid/media/MediaRecorder;

.field private viewfinder:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x8

    .line 56
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const-string v1, "cameraClient"

    invoke-direct {v0, v2, v1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 60
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const-string v1, "decodeExecutor"

    invoke-direct {v0, v2, v1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraClient;->decodeExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 2

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/google/glass/util/FileSaver;

    sget-object v1, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->fileSaver:Lcom/google/glass/util/FileSaver;

    .line 80
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 127
    new-instance v0, Lcom/google/glass/camera/CameraClient$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$1;-><init>(Lcom/google/glass/camera/CameraClient;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->errorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/camera/CameraClient;->pictureId:I

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->pictureRequestList:Ljava/util/List;

    .line 255
    new-instance v0, Lcom/google/glass/camera/CameraClient$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$2;-><init>(Lcom/google/glass/camera/CameraClient;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 293
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceLock:Ljava/lang/Object;

    .line 377
    new-instance v0, Lcom/google/glass/camera/CameraClient$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$3;-><init>(Lcom/google/glass/camera/CameraClient;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->context:Landroid/content/Context;

    .line 403
    iput-object p2, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    .line 404
    iput-object p3, p0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    .line 405
    iput-object p4, p0, Lcom/google/glass/camera/CameraClient;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 406
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/camera/CameraClient;->decodeExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/CameraClient;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->hasFirstFrameArrived:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/camera/CameraClient;->getViewfinderSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/camera/CameraClient;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/glass/camera/CameraClient;->hasFirstFrameArrived:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/camera/CameraClient;)[[B
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/camera/CameraClient;->getPreviewCallbackBuffer()[[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/camera/CameraClient;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/camera/CameraClient;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/glass/camera/CameraClient;->fadeViewfinder(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->videoRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient;->videoRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/camera/CameraClient;)Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->video:Lcom/google/glass/camera/VideoWrapper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/camera/CameraClient;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient;->video:Lcom/google/glass/camera/VideoWrapper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceInUse:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/camera/CameraClient;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceInUse:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/camera/CameraClient;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->keepPreviewSurface:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/camera/CameraClient;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/camera/CameraClient;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->cameraUsingPreviewSurface:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/camera/CameraClient;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/glass/camera/CameraClient;->cameraUsingPreviewSurface:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/glass/camera/CameraClient;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/glass/camera/CameraClient;->releasePreviewSurfaceRequested:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/camera/CameraClient;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->releaseRequested:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/glass/camera/CameraClient;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/glass/camera/CameraClient;->releaseRequested:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/camera/CameraClient;)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/camera/CameraClient;->openCamera()Z

    move-result v0

    return v0
.end method

.method private calculatePostviewBufferSize(Z)I
    .locals 3

    .prologue
    .line 119
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 121
    :goto_0
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v1, v1, Lcom/google/glass/camera/Size;->width:I

    sget-object v2, Lcom/google/glass/camera/CameraUtils;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v2, v2, Lcom/google/glass/camera/Size;->height:I

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 123
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 124
    return v0

    .line 119
    :cond_0
    const/16 v0, 0x11

    .line 120
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    goto :goto_0
.end method

.method private calculatePreviewBufferSize()I
    .locals 3

    .prologue
    .line 100
    const/16 v0, 0x11

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 101
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v1, v1, Lcom/google/glass/camera/Size;->width:I

    sget-object v2, Lcom/google/glass/camera/CameraUtils;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v2, v2, Lcom/google/glass/camera/Size;->height:I

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 103
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 104
    return v0
.end method

.method private fadeViewfinder(Z)V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    new-instance v1, Lcom/google/glass/camera/CameraClient$11;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/CameraClient$11;-><init>(Lcom/google/glass/camera/CameraClient;Z)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 948
    :cond_0
    return-void
.end method

.method private final getPreviewCallbackBuffer()[[B
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewCallbackBuffer:[[B

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/glass/camera/CameraClient;->calculatePreviewBufferSize()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewCallbackBuffer:[[B

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewCallbackBuffer:[[B

    return-object v0
.end method

.method private getViewfinderSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 622
    sget-object v0, Lcom/google/glass/camera/CameraClient;->testSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 623
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 624
    sget-object v0, Lcom/google/glass/camera/CameraClient;->testSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 649
    :goto_0
    return-object v0

    .line 627
    :cond_0
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 628
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    new-instance v4, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;

    invoke-direct {v4, p0, v3}, Lcom/google/glass/camera/CameraClient$TextureAvailabilityListener;-><init>(Lcom/google/glass/camera/CameraClient;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    move v0, v1

    .line 631
    :goto_1
    iget-object v4, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 632
    iget-boolean v4, p0, Lcom/google/glass/camera/CameraClient;->releaseRequested:Z

    if-eqz v4, :cond_1

    .line 633
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Stop waiting for viewfinder since release has been requested."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 634
    goto :goto_0

    .line 635
    :cond_1
    const/16 v4, 0xa

    if-le v0, v4, :cond_2

    .line 636
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Viewfinder is not available after 10 seconds."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 637
    goto :goto_0

    .line 641
    :cond_2
    const-wide/16 v4, 0x1

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 642
    iget-object v4, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Waiting for viewfinder surface. [seconds_waited=%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 644
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted waiting for viewfinder surface"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method private openCamera()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 699
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 700
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    if-eqz v2, :cond_1

    .line 701
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Camera is already opened!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    :cond_0
    :goto_0
    return v0

    .line 706
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/glass/android/hardware/CameraProvider;->getInstance()Lcom/google/glass/android/hardware/CameraProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/android/hardware/CameraProvider;->open()Lcom/google/glass/android/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    .line 707
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v2}, Lcom/google/glass/android/hardware/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 708
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    iget-object v3, p0, Lcom/google/glass/camera/CameraClient;->errorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-interface {v2, v3}, Lcom/google/glass/android/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 709
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Camera opened successfully!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 710
    goto :goto_0

    .line 713
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    .line 714
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to open camera!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v2

    .line 717
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to open camera! [message=$s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v3, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v1}, Lcom/google/glass/android/hardware/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v1}, Lcom/google/glass/android/hardware/Camera;->release()V

    .line 720
    iput-object v5, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    goto :goto_0
.end method

.method public static setTestSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 616
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 617
    sput-object p0, Lcom/google/glass/camera/CameraClient;->testSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 618
    return-void
.end method


# virtual methods
.method protected dispatchError(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 952
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching error. [message=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    const-string v0, "m"

    new-array v1, v3, [Ljava/lang/Object;

    .line 954
    invoke-static {v0, p1, v1}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CAMERA_ERROR_CALLBACK:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 957
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/CameraClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/CameraClient$12;-><init>(Lcom/google/glass/camera/CameraClient;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public getKeepPreviewSurface()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->keepPreviewSurface:Z

    return v0
.end method

.method protected getPostviewBuffer(Z)[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->postviewBuffer:[B

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/glass/camera/CameraClient;->calculatePostviewBufferSize(Z)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->postviewBuffer:[B

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->postviewBuffer:[B

    return-object v0
.end method

.method public getPreviewSurfaceInUse()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceInUse:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public recordMoment()V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/CameraClient;->takePicture(J)V

    .line 424
    return-void
.end method

.method public recyclePreviewFrame([B)V
    .locals 1

    .prologue
    .line 915
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 917
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v0, p1}, Lcom/google/glass/android/hardware/Camera;->addCallbackBuffer([B)V

    .line 920
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 529
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 530
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Release requested."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->releaseRequested:Z

    .line 533
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/glass/media/CameraManager;->release()V

    .line 537
    :cond_0
    sget-object v0, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/CameraClient$5;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraClient$5;-><init>(Lcom/google/glass/camera/CameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public final releaseDestroyedPreviewSurface()V
    .locals 4

    .prologue
    .line 362
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->cameraUsingPreviewSurface:Z

    .line 364
    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->releasePreviewSurfaceRequested:Z

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Releasing preview surface since it has been requested."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceInUse:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No preview surface to release!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    monitor-exit v1

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceInUse:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->previewSurfaceInUse:Landroid/graphics/SurfaceTexture;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->releasePreviewSurfaceRequested:Z

    .line 374
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releasePreviewSurfaceTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 658
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 659
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Release preview texture requested."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient;->keepPreviewSurface:Z

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Should not release explicitly."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :goto_0
    return-void

    .line 664
    :cond_0
    sget-object v0, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/CameraClient$7;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraClient$7;-><init>(Lcom/google/glass/camera/CameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setCameraListener(Lcom/google/glass/camera/CameraListener;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    .line 905
    return-void
.end method

.method public setKeepPreviewSurface(Z)V
    .locals 0

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/google/glass/camera/CameraClient;->keepPreviewSurface:Z

    .line 414
    return-void
.end method

.method public setViewfinder(Landroid/view/TextureView;)V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    if-eq v0, p1, :cond_0

    .line 898
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    .line 900
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 555
    const-string v0, "Cannot start scanning without a viewfinder."

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start preview requested."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    new-instance v0, Lcom/google/glass/camera/CameraClient$6;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$6;-><init>(Lcom/google/glass/camera/CameraClient;)V

    sget-object v1, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 612
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/CameraClient$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 613
    return-void
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 733
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/camera/CameraClient;->startRecording(IJ)V

    .line 734
    return-void
.end method

.method public startRecording(IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 748
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 749
    const-string v0, "Cannot start recording without a viewfinder."

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start recording requested."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    new-instance v0, Lcom/google/glass/camera/VideoWrapper;

    new-instance v1, Lcom/google/glass/camera/VideoWrapper$FileScanner;

    invoke-direct {v1}, Lcom/google/glass/camera/VideoWrapper$FileScanner;-><init>()V

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/VideoWrapper;-><init>(Lcom/google/glass/camera/VideoWrapper$FileScanner;Lcom/google/glass/util/FileSaver;)V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClient;->video:Lcom/google/glass/camera/VideoWrapper;

    .line 753
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->video:Lcom/google/glass/camera/VideoWrapper;

    invoke-virtual {v0}, Lcom/google/glass/camera/VideoWrapper;->start()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const-string v0, "Cannot start video"

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 826
    :goto_0
    return-void

    .line 758
    :cond_0
    new-instance v0, Lcom/google/glass/camera/CameraClient$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/camera/CameraClient$9;-><init>(Lcom/google/glass/camera/CameraClient;IJ)V

    sget-object v1, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 825
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/CameraClient$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    .line 677
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 678
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop preview requested."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    sget-object v0, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/CameraClient$8;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraClient$8;-><init>(Lcom/google/glass/camera/CameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 833
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 834
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop recording requested."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    new-instance v0, Lcom/google/glass/camera/CameraClient$10;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraClient$10;-><init>(Lcom/google/glass/camera/CameraClient;)V

    sget-object v1, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 887
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/CameraClient$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 888
    return-void
.end method

.method public abstract takePicture(J)V
.end method

.method protected takePictureInternal(JIZ)V
    .locals 7

    .prologue
    .line 451
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 452
    new-instance v0, Lcom/google/glass/camera/CameraClient$PictureRequest;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->fileSaver:Lcom/google/glass/util/FileSaver;

    iget v2, p0, Lcom/google/glass/camera/CameraClient;->pictureId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/camera/CameraClient$PictureRequest;-><init>(Lcom/google/glass/camera/CameraClient;Lcom/google/glass/util/FileSaver;I)V

    .line 453
    iget v1, p0, Lcom/google/glass/camera/CameraClient;->pictureId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/camera/CameraClient;->pictureId:I

    .line 454
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->pictureRequestList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v2, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->captureCallback:Lcom/google/android/glass/media/CameraManager$CaptureCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->setCaptureCallback(Lcom/google/android/glass/media/CameraManager$CaptureCallback;)Lcom/google/android/glass/media/CameraManager;

    .line 456
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v2, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->fallbackCaptureCallback:Lcom/google/android/glass/media/CameraManager$CaptureCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->setFallbackCaptureCallback(Lcom/google/android/glass/media/CameraManager$CaptureCallback;)Lcom/google/android/glass/media/CameraManager;

    .line 457
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v2, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->setShutterCallback(Landroid/hardware/Camera$ShutterCallback;)Lcom/google/android/glass/media/CameraManager;

    .line 458
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v2, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->postviewCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->setPostviewCallback(Landroid/hardware/Camera$PictureCallback;)Lcom/google/android/glass/media/CameraManager;

    .line 459
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v2, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->setJpegCallback(Landroid/hardware/Camera$PictureCallback;)Lcom/google/android/glass/media/CameraManager;

    .line 461
    iget-object v1, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/camera/Picture;->setRequestTime(J)V

    .line 463
    iget-object v1, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/camera/Picture;->setPrepareCameraSavings(J)V

    .line 465
    iget-object v0, v0, Lcom/google/glass/camera/CameraClient$PictureRequest;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0, p4}, Lcom/google/glass/camera/Picture;->setIsGcam(Z)V

    .line 476
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/media/CameraManager;->preload(I)V

    .line 478
    iget-object v6, p0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    new-instance v0, Lcom/google/glass/camera/CameraClient$4;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/camera/CameraClient$4;-><init>(Lcom/google/glass/camera/CameraClient;ZIJ)V

    invoke-virtual {v6, v0}, Lcom/google/android/glass/media/CameraManager;->open(Lcom/google/android/glass/media/CameraManager$OpenCallback;)V

    .line 521
    return-void
.end method

.method protected updateVideoRecorderOptions(Landroid/media/MediaRecorder;)V
    .locals 0

    .prologue
    .line 929
    return-void
.end method
