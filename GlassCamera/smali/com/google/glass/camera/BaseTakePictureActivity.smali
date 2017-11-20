.class public abstract Lcom/google/glass/camera/BaseTakePictureActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "BaseTakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;,
        Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;,
        Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;,
        Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;
    }
.end annotation


# static fields
.field private static final DIM_OVERLAY_ALPHA:F = 0.8f

.field private static final JPEG_COMPRESSION_RATIO_ESTIMATE:I = 0xa

.field private static final OVERLAY_ANIMATION_MS:J = 0x12cL

.field private static final POSTVIEW_TIMEOUT_MS:J = 0x1388L

.field private static final THUMBNAIL_CARD_FADE_ALPHA:F = 0.5f

.field private static final THUMBNAIL_SLIDE_DURATION_MS:J = 0x12cL

.field private static final THUMBNAIL_SLIDE_OFF_DELAY_MS:J = 0x12cL

.field private static final VIEWFINDER_CLASS_NAME:Ljava/lang/String; = "com.google.glass.camera.ViewfinderActivity"

.field private static final VIEWFINDER_TIMEOUT_MS:J = 0xea60L

.field private static final WHITE_OVERLAY_ALPHA:F = 0.3f


# instance fields
.field private blackOverlay:Landroid/view/View;

.field cameraClient:Lcom/google/glass/camera/CameraClient;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected cameraHelper:Lcom/google/glass/camera/CameraHelper;

.field final cameraListener:Lcom/google/glass/camera/CameraListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

.field protected firstPictureTaken:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private freezeFrame:Landroid/widget/ImageView;

.field private hideFreezeFrameOnFirstPreviewFrame:Z

.field private lastImageBytes:[B

.field protected lastPictureFromWink:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field protected loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

.field private final mainHandler:Landroid/os/Handler;

.field private final postviewTimeoutRunnable:Ljava/lang/Runnable;

.field private requestTimeMillis:J

.field protected shouldPreview:Z

.field private slideOffThumbnailOnFirstPreviewFrame:Z

.field protected state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private storageHelper:Lcom/google/glass/util/StorageHelper;

.field protected thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

.field protected thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

.field protected thumbnailSlideOffListener:Lcom/google/glass/util/SimpleAnimationListener;

.field protected thumbnailView:Landroid/widget/ImageView;

.field protected thumbnailsInSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/camera/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field viewfinder:Landroid/view/TextureView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private viewfinderTimedOut:Z

.field private final viewfinderTimeoutRunnable:Ljava/lang/Runnable;

.field private viewfinderTriggeredByTouch:Z

.field private whiteOverlay:Landroid/view/View;

.field private final winkBroadcastReceiver:Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 96
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 97
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 100
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$1;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->postviewTimeoutRunnable:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$2;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTimeoutRunnable:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    .line 162
    sget-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 165
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .line 199
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$3;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->winkBroadcastReceiver:Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;

    .line 819
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;Lcom/google/glass/camera/BaseTakePictureActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraListener:Lcom/google/glass/camera/CameraListener;

    .line 821
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->freezeFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->blackOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/camera/BaseTakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->slideOffThumbnailOnFirstPreviewFrame:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->slideOffThumbnailOnFirstPreviewFrame:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/glass/camera/BaseTakePictureActivity;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p1, "x1"    # [B

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->lastImageBytes:[B

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->postviewTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->whiteOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/camera/BaseTakePictureActivity;Lcom/google/glass/camera/Picture;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p1, "x1"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->setTriggerType(Lcom/google/glass/camera/Picture;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/camera/BaseTakePictureActivity;F[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/glass/camera/BaseTakePictureActivity;->scaleViewsWithScroller(F[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTimedOut:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onDisallowedInput()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->updateAndShowFreezeFrameView()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/camera/BaseTakePictureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->hideFreezeFrameOnFirstPreviewFrame:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->hideFreezeFrameOnFirstPreviewFrame:Z

    return p1
.end method

.method private cancelWhiteOverlayFadeIn()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->whiteOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 685
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->whiteOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 686
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->setPictureTimings(Landroid/content/Intent;)V

    .line 391
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->logViewfinderStats(Landroid/content/Intent;)V

    .line 394
    :cond_0
    return-void
.end method

.method private logViewfinderStats(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 334
    const-string v1, "should_preview"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTriggeredByTouch:Z

    .line 335
    const-string v1, "t"

    iget-boolean v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTriggeredByTouch:Z

    .line 336
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 335
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "triggerEvent":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VIEWFINDER_START:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Logged user event on viewfinder start "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$402(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;J)J

    .line 341
    return-void

    .line 338
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private varargs scaleViewsWithScroller(F[Landroid/view/View;)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1172
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1173
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    return-void
.end method

.method private setPictureTimings(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 345
    const-string v0, "request_time"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using provided request time."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    const-string v0, "request_time"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->requestTimeMillis:J

    .line 358
    :goto_0
    return-void

    .line 349
    :cond_0
    const-string v0, "trigger_time"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using voice trigger time as request time."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    const-string v0, "trigger_time"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->requestTimeMillis:J

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->requestTimeMillis:J

    .line 356
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using current time because no request time was provided."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setTriggerType(Lcom/google/glass/camera/Picture;)V
    .locals 4
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    const/4 v3, 0x0

    .line 998
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->firstPictureTaken:Z

    if-nez v2, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1001
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "trigger_method"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1003
    .local v1, "triggerMethodExtra":I
    packed-switch v1, :pswitch_data_0

    .line 1012
    const-string v2, "is_from_wink"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    sget-object v2, Lcom/google/glass/camera/Picture$TriggerType;->WINK:Lcom/google/glass/camera/Picture$TriggerType;

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/Picture;->setTriggerType(Lcom/google/glass/camera/Picture$TriggerType;)V

    .line 1028
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "triggerMethodExtra":I
    :goto_0
    return-void

    .line 1005
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "triggerMethodExtra":I
    :pswitch_0
    sget-object v2, Lcom/google/glass/camera/Picture$TriggerType;->VOICE:Lcom/google/glass/camera/Picture$TriggerType;

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/Picture;->setTriggerType(Lcom/google/glass/camera/Picture$TriggerType;)V

    goto :goto_0

    .line 1008
    :pswitch_1
    sget-object v2, Lcom/google/glass/camera/Picture$TriggerType;->TOUCH:Lcom/google/glass/camera/Picture$TriggerType;

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/Picture;->setTriggerType(Lcom/google/glass/camera/Picture$TriggerType;)V

    goto :goto_0

    .line 1015
    :cond_0
    sget-object v2, Lcom/google/glass/camera/Picture$TriggerType;->BUTTON:Lcom/google/glass/camera/Picture$TriggerType;

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/Picture;->setTriggerType(Lcom/google/glass/camera/Picture$TriggerType;)V

    goto :goto_0

    .line 1022
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "triggerMethodExtra":I
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->lastPictureFromWink:Z

    if-eqz v2, :cond_2

    .line 1023
    sget-object v2, Lcom/google/glass/camera/Picture$TriggerType;->WINK:Lcom/google/glass/camera/Picture$TriggerType;

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/Picture;->setTriggerType(Lcom/google/glass/camera/Picture$TriggerType;)V

    goto :goto_0

    .line 1025
    :cond_2
    sget-object v2, Lcom/google/glass/camera/Picture$TriggerType;->BUTTON:Lcom/google/glass/camera/Picture$TriggerType;

    invoke-virtual {p1, v2}, Lcom/google/glass/camera/Picture;->setTriggerType(Lcom/google/glass/camera/Picture$TriggerType;)V

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setUpThumbnailScrollView()V
    .locals 4

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinder:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    invoke-virtual {v1}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->getViewfinder()Landroid/view/TextureView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1101
    :cond_0
    new-instance v0, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinder:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/TextureView;Lcom/google/glass/camera/CameraClient;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 1105
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1107
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/camera/BaseTakePictureActivity$4;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$4;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->addTransformListener(Lcom/google/android/glass/widget/CardScrollView$TransformListener;)V

    .line 1158
    :cond_2
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/camera/BaseTakePictureActivity$5;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$5;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1164
    return-void
.end method

.method private updateAndShowFreezeFrameView()V
    .locals 12

    .prologue
    const/16 v2, 0x11

    const/4 v11, 0x0

    .line 700
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->lastImageBytes:[B

    if-nez v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No preview frame to freeze!"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-interface {v1, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    :goto_0
    return-void

    .line 703
    :cond_0
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v3, v1, Lcom/google/glass/camera/Size;->width:I

    .line 704
    .local v3, "previewWidth":I
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v4, v1, Lcom/google/glass/camera/Size;->height:I

    .line 705
    .local v4, "previewHeight":I
    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    .line 706
    .local v7, "bitsPerPixel":I
    mul-int v1, v3, v4

    mul-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x8

    div-int/lit8 v9, v1, 0xa

    .line 708
    .local v9, "estimatedJpegSize":I
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 709
    .local v10, "jpegStream":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->lastImageBytes:[B

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 711
    .local v0, "yuv":Landroid/graphics/YuvImage;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 712
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 713
    .local v8, "bytes":[B
    array-length v1, v8

    invoke-static {v8, v11, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 715
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->freezeFrame:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 717
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->freezeFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 718
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->freezeFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected activateThumbnailScrollView()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 752
    :cond_0
    return-void
.end method

.method protected deactivateThumbnailScrollView()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 746
    :cond_0
    return-void
.end method

.method fadeInThumbnail(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 729
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 730
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 732
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 733
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 734
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/camera/R$integer;->take_picture_show_thumbnail_fade_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 737
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnPreviewCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->blackOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 740
    :cond_0
    return-void
.end method

.method protected getSlideOffTranslationX(I)F
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v1, v1

    int-to-float v0, v1

    .line 1070
    .local v0, "translationX":F
    iget-boolean v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 1071
    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 1073
    :cond_0
    return v0
.end method

.method protected isOnFirstThumbnailCard(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1195
    iget-boolean v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 1196
    .local v0, "positionOfFirstCard":I
    :goto_0
    if-ne p1, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "positionOfFirstCard":I
    :cond_0
    move v0, v2

    .line 1195
    goto :goto_0

    .restart local v0    # "positionOfFirstCard":I
    :cond_1
    move v1, v2

    .line 1196
    goto :goto_1
.end method

.method protected isOnOlderThumbnailCard(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1185
    iget-boolean v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 1186
    .local v0, "positionOfFirstCard":I
    :goto_0
    if-le p1, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "positionOfFirstCard":I
    :cond_0
    move v0, v2

    .line 1185
    goto :goto_0

    .restart local v0    # "positionOfFirstCard":I
    :cond_1
    move v1, v2

    .line 1186
    goto :goto_1
.end method

.method protected isOnPreviewCard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-boolean v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 694
    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getScrollPosition()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCameraButtonPressed(Z)Z
    .locals 5
    .param p1, "isLongPress"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 521
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Handling camera button."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldAllowCameraButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onDisallowedInput()V

    .line 526
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->cancelWhiteOverlayFadeIn()V

    .line 554
    :goto_0
    return v3

    .line 530
    :cond_0
    if-nez p1, :cond_2

    .line 533
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-ne v0, v1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Delayed handling of camera button down."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p0, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->prepareForPictureOrVideoRequest(Z)V

    .line 537
    :cond_1
    iput-boolean v4, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->lastPictureFromWink:Z

    .line 538
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->takePicture()V

    goto :goto_0

    .line 543
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->cancelWhiteOverlayFadeIn()V

    .line 546
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot record a video while on a phone call."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onDisallowedInput()V

    goto :goto_0

    .line 553
    :cond_3
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/glass/camera/CameraHelper;->recordVideo(ZLcom/google/glass/sound/SoundManager;Z)V

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 278
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 279
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraHelper:Lcom/google/glass/camera/CameraHelper;

    .line 280
    new-instance v0, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->storageHelper:Lcom/google/glass/util/StorageHelper;

    .line 281
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->storageHelper:Lcom/google/glass/util/StorageHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/StorageHelper;->showDialogIfFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Storage is full, not taking the picture"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->finish()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    :cond_2
    new-instance v0, Lcom/google/glass/camera/CameraClientV1;

    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraListener:Lcom/google/glass/camera/CameraListener;

    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/camera/CameraClientV1;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraClient;->setKeepPreviewSurface(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->setShouldPreview()V

    .line 303
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->handleIntent(Landroid/content/Intent;)V

    .line 306
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v0, :cond_3

    .line 307
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinder:Landroid/view/TextureView;

    .line 311
    :cond_3
    sget v0, Lcom/google/glass/camera/R$id;->thumbnail:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    .line 312
    sget v0, Lcom/google/glass/camera/R$id;->crop_marks:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    .line 313
    sget v0, Lcom/google/glass/camera/R$id;->white_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->whiteOverlay:Landroid/view/View;

    .line 314
    sget v0, Lcom/google/glass/camera/R$id;->black_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->blackOverlay:Landroid/view/View;

    .line 315
    sget v0, Lcom/google/glass/camera/R$id;->freeze_frame:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->freezeFrame:Landroid/widget/ImageView;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    .line 318
    sget v0, Lcom/google/glass/camera/R$id;->thumbnail_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 319
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->setUpThumbnailScrollView()V

    .line 321
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->whiteOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->freezeFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 294
    :cond_4
    new-instance v0, Lcom/google/glass/camera/CameraClientV2;

    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraListener:Lcom/google/glass/camera/CameraListener;

    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/camera/CameraClientV2;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    .line 444
    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Activity detached from window!"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v3}, Lcom/google/glass/camera/CameraClient;->releasePreviewSurfaceTexture()V

    .line 453
    iget-boolean v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v3, :cond_0

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {v5}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$400(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    div-long v0, v3, v10

    .line 456
    .local v0, "totalDurationSec":J
    const-string v4, "d"

    .line 457
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v3, 0xa

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "dp"

    aput-object v3, v6, v9

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .line 459
    invoke-static {v7}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$500(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J

    move-result-wide v7

    div-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string v7, "p"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    .line 460
    invoke-static {v7}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$600(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x4

    const-string v7, "v"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    iget-object v7, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    iget v7, v7, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->totalVignettes:I

    .line 461
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x6

    const-string v7, "to"

    aput-object v7, v6, v3

    const/4 v3, 0x7

    iget-boolean v7, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTimedOut:Z

    .line 462
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    const/16 v3, 0x8

    const-string v7, "tr"

    aput-object v7, v6, v3

    const/16 v7, 0x9

    iget-boolean v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTriggeredByTouch:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_0
    aput-object v3, v6, v7

    .line 456
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "viewfinderLog":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->VIEWFINDER_STOP:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Logged user event on viewfinder stop "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    .end local v0    # "totalDurationSec":J
    .end local v2    # "viewfinderLog":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDetachedFromWindow()V

    .line 471
    return-void

    .line 462
    .restart local v0    # "totalDurationSec":J
    :cond_1
    const-string v3, "2"

    goto :goto_0

    .line 467
    .restart local v2    # "viewfinderLog":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 508
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldAllowCameraButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Handling camera button down."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->prepareForPictureOrVideoRequest(Z)V

    .line 516
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/voice/GlassVoiceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "camera button down: camera button is not allowed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 379
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->handleIntent(Landroid/content/Intent;)V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->firstPictureTaken:Z

    .line 384
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->resetUi()V

    .line 385
    return-void
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->deactivateThumbnailScrollView()V

    .line 439
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onPauseInternal()V

    .line 440
    return-void
.end method

.method protected onPictureCaptureComplete()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 484
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 477
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 364
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->activateThumbnailScrollView()V

    .line 365
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v2}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 370
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->firstPictureTaken:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Taking a picture directly without preview."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->takePicture()V

    .line 374
    :cond_0
    return-void
.end method

.method protected onStartInternal()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onStartInternal()V

    .line 417
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->winkBroadcastReceiver:Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 418
    return-void
.end method

.method protected onStopInternal()V
    .locals 2

    .prologue
    .line 427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->toggleNudgeAndScreenTimeout(Z)V

    .line 428
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->winkBroadcastReceiver:Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;

    .line 429
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 430
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onStopInternal()V

    .line 431
    return-void
.end method

.method protected onTakePicture()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method protected prepareForPictureOrVideoRequest(Z)V
    .locals 3
    .param p1, "showWhiteOverlay"    # Z

    .prologue
    .line 662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->requestTimeMillis:J

    .line 664
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-ne v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping preview"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->stopCameraPreview()V

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnPreviewCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->updateAndShowFreezeFrameView()V

    .line 673
    if-eqz p1, :cond_1

    .line 674
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->whiteOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 677
    :cond_1
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 488
    sget v0, Lcom/google/glass/camera/R$layout;->take_picture_activity:I

    return v0
.end method

.method protected resetUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    iput-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->lastImageBytes:[B

    .line 400
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->freezeFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinder:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/camera/BaseTakePictureActivity$ViewfinderTextureView;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinder:Landroid/view/TextureView;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    .line 411
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->setUpThumbnailScrollView()V

    .line 412
    return-void

    .line 408
    :cond_1
    iput-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinder:Landroid/view/TextureView;

    goto :goto_0
.end method

.method protected setShouldPreview()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    .line 330
    return-void
.end method

.method protected setThumbnailSlideOffListener(Lcom/google/glass/util/SimpleAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/util/SimpleAnimationListener;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailSlideOffListener:Lcom/google/glass/util/SimpleAnimationListener;

    .line 1079
    return-void
.end method

.method protected shouldAllowCameraButton()Z
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldAllowDismiss()Z
    .locals 2

    .prologue
    .line 493
    sget-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->CAPTURING_PICTURE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldHandleCameraButton()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method protected slideOffThumbnail(J)V
    .locals 4
    .param p1, "startDelayMs"    # J

    .prologue
    const/4 v3, 0x0

    .line 1045
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v1

    .line 1047
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnFirstThumbnailCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    :goto_0
    return-void

    .line 1053
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 1054
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->getSlideOffTranslationX(I)F

    move-result v2

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1055
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1056
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1057
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailSlideOffListener:Lcom/google/glass/util/SimpleAnimationListener;

    if-eqz v2, :cond_1

    .line 1058
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailSlideOffListener:Lcom/google/glass/util/SimpleAnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1060
    :cond_1
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected final startCameraPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 559
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-eq v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Wrong state, not starting preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraClient;->setViewfinder(Landroid/view/TextureView;)V

    .line 566
    sget-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 567
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClient;->startPreview()V

    .line 569
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$702(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;J)J

    .line 573
    invoke-virtual {p0, v4}, Lcom/google/glass/camera/BaseTakePictureActivity;->toggleNudgeAndScreenTimeout(Z)V

    .line 574
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final stopCameraPreview()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 579
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-eq v0, v1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Wrong state, not stopping preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->toggleNudgeAndScreenTimeout(Z)V

    .line 587
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->viewfinderTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    sget-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 590
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClient;->stopPreview()V

    .line 592
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$700(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$500(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J

    move-result-wide v1

    .line 594
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {v5}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$700(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 593
    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$502(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;J)J

    .line 595
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {v0, v7, v8}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$702(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;J)J

    goto :goto_0
.end method

.method protected final takePicture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 601
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-eq v0, v1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x44

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "In viewfinder mode, we can only take a picture from idle state, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onDisallowedInput()V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->CAPTURING_PICTURE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    if-ne v0, v1, :cond_2

    .line 608
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "In non-viewfinder mode and already taking a picture."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/glass/camera/BaseTakePictureActivity;->toggleNudgeAndScreenTimeout(Z)V

    .line 615
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnPreviewCard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->blackOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v4}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 621
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->deactivateThumbnailScrollView()V

    .line 623
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->firstPictureTaken:Z

    if-eqz v0, :cond_5

    .line 624
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 626
    :cond_5
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v0, :cond_7

    .line 629
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnPreviewCard()Z

    move-result v0

    if-nez v0, :cond_6

    .line 630
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0, v4}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->play()V

    .line 641
    :goto_1
    sget-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->CAPTURING_PICTURE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    iput-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 642
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onTakePicture()V

    .line 643
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    iget-wide v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->requestTimeMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/CameraClient;->takePicture(J)V

    .line 644
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->loggingStats:Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;->access$608(Lcom/google/glass/camera/BaseTakePictureActivity$LoggingStats;)I

    .line 649
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->postviewTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 633
    :cond_6
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->shrinkAndBlink()V

    goto :goto_1

    .line 636
    :cond_7
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0, v4}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->play()V

    goto :goto_1
.end method

.method protected toggleNudgeAndScreenTimeout(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    const/high16 v1, -0x80000000

    .line 1087
    if-eqz p1, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1092
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 1093
    return-void

    .line 1090
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1092
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
