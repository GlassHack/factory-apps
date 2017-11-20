.class public Lcom/google/glass/videoplayer/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_STREAM_URL_LENGTH:I = 0x10000

.field static PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor; = null

.field private static final UPDATE_INTERVAL_MS:I = 0x85

.field private static final VALID_STREAM_URL_SCHEMES:Ljava/util/Set;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field bufferedPercent:I

.field private controllerListener:Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;

.field private currentTimeMs:I

.field private final destroyedSurfaces:Ljava/util/Set;

.field private final detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

.field private final eventLogAggregator:Lcom/google/glass/videoplayer/util/EventLogAggregator;

.field private final handler:Landroid/os/Handler;

.field volatile isPausedByActivity:Z

.field private isPlayerError:Z

.field volatile isPrepared:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playRequest:Lcom/google/glass/async/SerialAsyncTask;

.field private scrubberTimeMs:I

.field scrubbingListener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

.field private shouldCallStartCallback:Z

.field shouldShowPlayBar:Z

.field private shouldStartPlayback:Z

.field private state:Lcom/google/glass/videoplayer/util/State;

.field private timelineId:Ljava/lang/String;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private totalTimeMs:I

.field private updateTimeStamp:J

.field private final updateTimeStampRunnable:Ljava/lang/Runnable;

.field private url:Ljava/lang/String;

.field private final videoView:Landroid/view/TextureView;

.field private viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 57
    const-string v0, "http"

    const-string v1, "https"

    const-string v2, "rtsp"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->VALID_STREAM_URL_SCHEMES:Ljava/util/Set;

    .line 65
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/videoplayer/ScrubbingDetector;Lcom/google/glass/videoplayer/util/EventLogAggregator;Landroid/view/TextureView;)V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    .line 173
    new-instance v0, Lcom/google/glass/videoplayer/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/VideoPlayer$1;-><init>(Lcom/google/glass/videoplayer/VideoPlayer;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->scrubbingListener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    .line 320
    new-instance v0, Lcom/google/glass/videoplayer/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/VideoPlayer$2;-><init>(Lcom/google/glass/videoplayer/VideoPlayer;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->updateTimeStampRunnable:Ljava/lang/Runnable;

    .line 239
    iput-object p2, p0, Lcom/google/glass/videoplayer/VideoPlayer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 240
    iput-object p5, p0, Lcom/google/glass/videoplayer/VideoPlayer;->videoView:Landroid/view/TextureView;

    .line 241
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 242
    iput-object p4, p0, Lcom/google/glass/videoplayer/VideoPlayer;->eventLogAggregator:Lcom/google/glass/videoplayer/util/EventLogAggregator;

    .line 243
    iput-object p3, p0, Lcom/google/glass/videoplayer/VideoPlayer;->detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

    .line 244
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->scrubbingListener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/ScrubbingDetector;->setListener(Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;)V

    .line 245
    invoke-static {}, Lcom/google/glass/android/media/MediaPlayerProvider;->getInstance()Lcom/google/glass/android/media/MediaPlayerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/android/media/MediaPlayerProvider;->get()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/videoplayer/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/videoplayer/VideoPlayer;->canScrub()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/videoplayer/VideoPlayer;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->scrubberTimeMs:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/videoplayer/VideoPlayer;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->scrubberTimeMs:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/videoplayer/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldCallStartCallback:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldCallStartCallback:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->videoView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/videoplayer/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldStartPlayback:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldStartPlayback:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/videoplayer/VideoPlayer;->playInternal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/videoplayer/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPlayerError:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPlayerError:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/glass/videoplayer/VideoPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->timelineId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/videoplayer/VideoPlayer;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/videoplayer/VideoPlayer;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/util/EventLogAggregator;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->eventLogAggregator:Lcom/google/glass/videoplayer/util/EventLogAggregator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->controllerListener:Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/videoplayer/VideoPlayer;->releaseDestroyedSurfaces()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/videoplayer/VideoPlayer;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->totalTimeMs:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/videoplayer/VideoPlayer;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->totalTimeMs:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/videoplayer/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/ScrubbingDetector;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/videoplayer/VideoPlayer;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->updateTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->updateTimeStampRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private canScrub()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAndPlay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 428
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Play requested."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->playRequest:Lcom/google/glass/async/SerialAsyncTask;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 438
    iput-boolean v3, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldCallStartCallback:Z

    .line 439
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/google/glass/videoplayer/VideoPlayer;->initializeVideoView()V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Surface texture already available."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iput-boolean v3, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldStartPlayback:Z

    .line 447
    invoke-direct {p0}, Lcom/google/glass/videoplayer/VideoPlayer;->playInternal()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldStartPlayback:Z

    goto :goto_0
.end method

.method private initializeVideoView()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->videoView:Landroid/view/TextureView;

    new-instance v1, Lcom/google/glass/videoplayer/VideoPlayer$3;

    invoke-direct {v1, p0}, Lcom/google/glass/videoplayer/VideoPlayer$3;-><init>(Lcom/google/glass/videoplayer/VideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 406
    return-void
.end method

.method private playInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 457
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->playRequest:Lcom/google/glass/async/SerialAsyncTask;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Already playing."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    :goto_0
    return-void

    .line 463
    :cond_0
    new-instance v0, Lcom/google/glass/videoplayer/VideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/VideoPlayer$4;-><init>(Lcom/google/glass/videoplayer/VideoPlayer;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->playRequest:Lcom/google/glass/async/SerialAsyncTask;

    .line 620
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->playRequest:Lcom/google/glass/async/SerialAsyncTask;

    sget-object v1, Lcom/google/glass/videoplayer/VideoPlayer;->PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/async/SerialAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static readVideoStreamUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 709
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 711
    :cond_0
    sget-object v2, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not read file of size %s as video URL: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    aput-object p0, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 735
    :goto_0
    return-object v0

    .line 716
    :cond_1
    :try_start_0
    const-string v2, "utf8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    .line 717
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 721
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 725
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 726
    sget-object v3, Lcom/google/glass/videoplayer/VideoPlayer;->VALID_STREAM_URL_SCHEMES:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 727
    sget-object v3, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Scheme \'%s\' not supported for streaming."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    sget-object v2, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to read video stream URL: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object v0, v1

    .line 735
    goto :goto_0

    .line 730
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private releaseDestroyedSurfaces()V
    .locals 5

    .prologue
    .line 693
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 695
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 696
    sget-object v2, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Releasing surface."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 700
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPrepared:Z

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 414
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->controllerListener:Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;->onPlay()V

    .line 417
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->eventLogAggregator:Lcom/google/glass/videoplayer/util/EventLogAggregator;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/util/EventLogAggregator;->logVideoStarted()V

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->updateTimeStamp:J

    .line 420
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->updateTimeStampRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getViewListener()Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    return-object v0
.end method

.method public isState(Lcom/google/glass/videoplayer/util/State;)Z
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->state:Lcom/google/glass/videoplayer/util/State;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoPlaying()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoStreamUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 2

    .prologue
    .line 742
    const-string v0, "video/vnd.google-glass.stream-url"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method pause(Z)V
    .locals 4

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPausedByActivity:Z

    .line 346
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPrepared:Z

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Video player paused."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    .line 351
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 352
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    iget v1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    iget v2, p0, Lcom/google/glass/videoplayer/VideoPlayer;->totalTimeMs:I

    iget v3, p0, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onUpdate(III)V

    .line 353
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    invoke-interface {v0, p1}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onPause(Z)V

    .line 354
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->controllerListener:Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;->onPause()V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/glass/videoplayer/VideoPlayer;->totalTimeMs:I

    iget v3, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    sub-int/2addr v2, v3

    const/16 v3, 0xbb8

    .line 358
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->updateTimeStamp:J

    .line 359
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->updateTimeStampRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    iput-boolean v3, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPausedByActivity:Z

    .line 293
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->isPrepared:Z

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/google/glass/videoplayer/VideoPlayer;->initializeAndPlay()V

    .line 306
    :goto_0
    return-void

    .line 296
    :cond_0
    iget v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    if-ltz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 298
    iget v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->totalTimeMs:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    iget v1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    iget v2, p0, Lcom/google/glass/videoplayer/VideoPlayer;->totalTimeMs:I

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 299
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    invoke-interface {v0, v3}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onPlay(Z)V

    .line 304
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/glass/videoplayer/VideoPlayer;->start()V

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldShowPlayBar:Z

    goto :goto_1
.end method

.method public setControllerListener(Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->controllerListener:Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;

    .line 260
    return-void
.end method

.method public setState(Lcom/google/glass/videoplayer/util/State;)Lcom/google/glass/videoplayer/util/State;
    .locals 6

    .prologue
    .line 746
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->state:Lcom/google/glass/videoplayer/util/State;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "State changed from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] to ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->state:Lcom/google/glass/videoplayer/util/State;

    .line 748
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->state:Lcom/google/glass/videoplayer/util/State;

    return-object v0
.end method

.method public setTimelineId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onLoad()V

    .line 265
    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->timelineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->timelineId:Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onLoad()V

    .line 278
    if-nez p1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Reuse the video url which is already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_1
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Setting the video url to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    .line 287
    iput v4, p0, Lcom/google/glass/videoplayer/VideoPlayer;->currentTimeMs:I

    goto :goto_0
.end method

.method public setViewListener(Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer;->viewListener:Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    .line 253
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 626
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop requested."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    iput-boolean v3, p0, Lcom/google/glass/videoplayer/VideoPlayer;->shouldStartPlayback:Z

    .line 632
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->playRequest:Lcom/google/glass/async/SerialAsyncTask;

    if-nez v0, :cond_0

    .line 633
    sget-object v0, Lcom/google/glass/videoplayer/VideoPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Already stopped."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->playRequest:Lcom/google/glass/async/SerialAsyncTask;

    invoke-virtual {v0, v3}, Lcom/google/glass/async/SerialAsyncTask;->cancel(Z)Z

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer;->playRequest:Lcom/google/glass/async/SerialAsyncTask;

    .line 642
    new-instance v0, Lcom/google/glass/videoplayer/VideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/VideoPlayer$5;-><init>(Lcom/google/glass/videoplayer/VideoPlayer;)V

    sget-object v1, Lcom/google/glass/videoplayer/VideoPlayer;->PLAY_STOP_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 685
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/videoplayer/VideoPlayer$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
