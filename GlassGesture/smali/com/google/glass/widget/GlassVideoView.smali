.class public Lcom/google/glass/widget/GlassVideoView;
.super Landroid/widget/FrameLayout;
.source "GlassVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private autoRepeat:Z

.field private isPrepared:Z

.field private isStartRequested:Z

.field private isSurfaceValid:Z

.field private thumbnailView:Landroid/widget/ImageView;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/GlassVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/GlassVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v3, Lcom/google/glass/common/R$styleable;->AutoStartVideoView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "videoFileName":Ljava/lang/String;
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 68
    .local v0, "thumbnailId":I
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    .line 69
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->init()V

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    iget-boolean v3, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/glass/widget/GlassVideoView;->setupVideo(Ljava/lang/String;IZ)V

    .line 73
    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoFileName"    # Ljava/lang/String;
    .param p3, "thumbnailId"    # I
    .param p4, "autoRepeat"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 50
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->init()V

    .line 51
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/glass/widget/GlassVideoView;->setupVideo(Ljava/lang/String;IZ)V

    .line 52
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/widget/GlassVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/widget/GlassVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/widget/GlassVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->startIfReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/widget/GlassVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/widget/GlassVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/widget/GlassVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/widget/GlassVideoView;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/widget/GlassVideoView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 76
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->createVideoView()Landroid/widget/VideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->createImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/GlassVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/GlassVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/google/glass/widget/GlassVideoView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$1;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/google/glass/widget/GlassVideoView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$2;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GlassVideoView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$3;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 132
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->registerVideoOnInfoListener()V

    .line 133
    return-void
.end method

.method private registerVideoOnInfoListener()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/google/glass/widget/GlassVideoView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$5;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 210
    return-void
.end method

.method private startIfReady()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Checking if video can be started. [isPrepared: %s] [isStartRequested: %s] [isSurfaceValid: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    .line 187
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 186
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting video now."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected createImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createVideoView()Landroid/widget/VideoView;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x1

    .line 214
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "MediaPlayer returns an error: %d (check MediaPlayer#MEDIA_ERROR_*), try to start playing again"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 215
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 214
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->startIfReady()V

    .line 217
    return v5
.end method

.method public setupVideo(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "videoFileName"    # Ljava/lang/String;
    .param p2, "thumbnailId"    # I
    .param p3, "autoRepeat"    # Z

    .prologue
    .line 136
    iput-boolean p3, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "videoSource":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 146
    if-eqz p2, :cond_0

    .line 148
    new-instance v1, Lcom/google/glass/widget/GlassVideoView$4;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/widget/GlassVideoView$4;-><init>(Lcom/google/glass/widget/GlassVideoView;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 158
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/widget/GlassVideoView$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 163
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start requested."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    .line 165
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->startIfReady()V

    .line 166
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop requested."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iput-boolean v3, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    .line 178
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 180
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 183
    :cond_0
    return-void
.end method
