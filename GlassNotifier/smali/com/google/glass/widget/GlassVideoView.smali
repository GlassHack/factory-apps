.class public Lcom/google/glass/widget/GlassVideoView;
.super Landroid/widget/FrameLayout;
.source "GlassVideoView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private autoRepeat:Z

.field private isPrepared:Z

.field private isStartRequested:Z

.field private isSurfaceValid:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mediaPlayerSurface:Landroid/view/Surface;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private thumbnailId:I

.field private thumbnailView:Landroid/widget/ImageView;

.field private videoFileName:Ljava/lang/String;

.field private videoView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/GlassVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/GlassVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v2, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    .line 50
    iput-boolean v2, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    .line 51
    iput-boolean v2, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    .line 53
    new-instance v1, Lcom/google/glass/widget/GlassVideoView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$1;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 80
    new-instance v1, Lcom/google/glass/widget/GlassVideoView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$2;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 89
    new-instance v1, Lcom/google/glass/widget/GlassVideoView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$3;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 108
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    .line 109
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    .line 111
    sget-object v1, Lcom/google/glass/common/R$styleable;->AutoStartVideoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/glass/common/R$styleable;->AutoStartVideoView_video_file_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->videoFileName:Ljava/lang/String;

    .line 113
    sget v1, Lcom/google/glass/common/R$styleable;->AutoStartVideoView_thumbnail_image:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailId:I

    .line 115
    sget v1, Lcom/google/glass/common/R$styleable;->AutoStartVideoView_auto_repeat:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/google/glass/widget/GlassVideoView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 119
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/widget/GlassVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/widget/GlassVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->setupThumbnail()V

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "videoFileName"    # Ljava/lang/String;
    .param p5, "thumbnailId"    # I
    .param p6, "autoRepeat"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    .line 53
    new-instance v0, Lcom/google/glass/widget/GlassVideoView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/GlassVideoView$1;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 80
    new-instance v0, Lcom/google/glass/widget/GlassVideoView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/GlassVideoView$2;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 89
    new-instance v0, Lcom/google/glass/widget/GlassVideoView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/GlassVideoView$3;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 129
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    .line 130
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    .line 131
    iput-object p4, p0, Lcom/google/glass/widget/GlassVideoView;->videoFileName:Ljava/lang/String;

    .line 132
    iput p5, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailId:I

    .line 133
    iput-boolean p6, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    .line 134
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 135
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/GlassVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/GlassVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->setupThumbnail()V

    .line 138
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/widget/GlassVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/widget/GlassVideoView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayerSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/widget/GlassVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayerSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/widget/GlassVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/widget/GlassVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/widget/GlassVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/widget/GlassVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->startIfReady()V

    return-void
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/widget/GlassVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailId:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/widget/GlassVideoView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 249
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "IllegalStateException when checking isPlaying()."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startIfReady()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 234
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Checking if video can be started. [isPrepared: %s] [isStartRequested: %s] [isSurfaceValid: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    .line 235
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 234
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/GlassVideoView;->isSurfaceValid:Z

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting video now [videoFileName=%s]."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/widget/GlassVideoView;->videoFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 242
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    invoke-virtual {v0, v5}, Landroid/view/TextureView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method getOnCompletionListenerForTest()Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 272
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method getOnErrorListenerForTest()Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 260
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method getSurfaceTextureListenerForTest()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 266
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 170
    return-void
.end method

.method protected setupMediaPlayer(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v5, 0x0

    .line 206
    :try_start_0
    invoke-static {}, Lcom/google/glass/android/media/MediaPlayerProvider;->getInstance()Lcom/google/glass/android/media/MediaPlayerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/android/media/MediaPlayerProvider;->get()Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 207
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/raw/"

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/widget/GlassVideoView;->videoFileName:Ljava/lang/String;

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 214
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayerSurface:Landroid/view/Surface;

    .line 215
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayerSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 216
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/glass/widget/GlassVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 217
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/glass/widget/GlassVideoView;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 218
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 219
    iget-object v1, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/widget/GlassVideoView;->isPrepared:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->startIfReady()V

    .line 231
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to initialize MediaPlayer."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to initialize MediaPlayer."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to initialize MediaPlayer."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to initialize MediaPlayer."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setupThumbnail()V
    .locals 3

    .prologue
    .line 187
    iget v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailId:I

    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Lcom/google/glass/widget/GlassVideoView$4;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassVideoView$4;-><init>(Lcom/google/glass/widget/GlassVideoView;)V

    .line 200
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 199
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/widget/GlassVideoView$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    :cond_0
    return-void
.end method

.method public setupVideo(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "videoFileName"    # Ljava/lang/String;
    .param p2, "thumbnailId"    # I
    .param p3, "autoRepeat"    # Z

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView;->videoFileName:Ljava/lang/String;

    .line 181
    iput p2, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailId:I

    .line 182
    iput-boolean p3, p0, Lcom/google/glass/widget/GlassVideoView;->autoRepeat:Z

    .line 183
    invoke-virtual {p0}, Lcom/google/glass/widget/GlassVideoView;->setupThumbnail()V

    .line 184
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 144
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start requested [videoFileName=%s]."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/widget/GlassVideoView;->videoFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iput-boolean v5, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    .line 146
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->startIfReady()V

    .line 147
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    sget-object v0, Lcom/google/glass/widget/GlassVideoView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop requested [videoFileName=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/widget/GlassVideoView;->videoFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iput-boolean v4, p0, Lcom/google/glass/widget/GlassVideoView;->isStartRequested:Z

    .line 157
    invoke-direct {p0}, Lcom/google/glass/widget/GlassVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView;->videoView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 162
    return-void
.end method
