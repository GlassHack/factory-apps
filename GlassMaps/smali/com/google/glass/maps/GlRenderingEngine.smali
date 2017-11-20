.class public Lcom/google/glass/maps/GlRenderingEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GlRenderingEngine"


# instance fields
.field private final mFunctional:Z

.field private mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

.field private final mRenderer:Lcom/google/android/glass/timeline/GlRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/timeline/GlRenderer;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/GlRenderingEngine;-><init>(Lcom/google/android/glass/timeline/GlRenderer;Z)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/google/android/glass/timeline/GlRenderer;Z)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderer:Lcom/google/android/glass/timeline/GlRenderer;

    .line 69
    iput-boolean p2, p0, Lcom/google/glass/maps/GlRenderingEngine;->mFunctional:Z

    .line 70
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/glass/maps/GlRenderingEngine;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method private startRendering(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderer:Lcom/google/android/glass/timeline/GlRenderer;

    iget-boolean v2, p0, Lcom/google/glass/maps/GlRenderingEngine;->mFunctional:Z

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;-><init>(Landroid/graphics/SurfaceTexture;Lcom/google/android/glass/timeline/GlRenderer;ZLcom/google/glass/maps/GlRenderingEngine$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    .line 128
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->setDimensions(II)V

    .line 129
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    invoke-virtual {v0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->start()V

    .line 130
    const-string v0, "Render thread started"

    invoke-static {v0}, Lcom/google/glass/maps/GlRenderingEngine;->log(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Render thread already running, not starting again."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopRendering()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "Stopping the rendering thread"

    invoke-static {v0}, Lcom/google/glass/maps/GlRenderingEngine;->log(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    .line 148
    invoke-virtual {v0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->notifyFinish()V

    .line 150
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine;->stopRendering()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isRendering()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/GlRenderingEngine;->startRendering(Landroid/graphics/SurfaceTexture;II)V

    .line 97
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine;->stopRendering()V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine;->mRenderThread:Lcom/google/glass/maps/GlRenderingEngine$RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->setDimensions(II)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Render thread not running, cannot update dimensions."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
