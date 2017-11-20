.class public abstract Lcom/google/glass/maps/map/MiniMapRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/glass/timeline/GlRenderer;


# static fields
.field static final FPS:J = 0x19L

.field static final MIN_TIME_BETWEEN_FRAMES_MS:J = 0x28L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private disableTileFadeIn:Z

.field private lastRefreshTime:J

.field private final markerResId:I

.field private miniMap:Lcom/google/glass/maps/map/MiniMap;

.field private final miniMapHeight:I

.field private final miniMapWidth:I

.field protected final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private savedOverlayBitmapArray:Landroid/util/SparseArray;

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private final theme:Lcom/google/glass/maps/map/MiniMapTheme;

.field private throttleFrameRate:Z

.field private final timer:Lcom/google/glass/maps/util/FrameTimer;

.field private trafficEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/map/MiniMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;IILcom/google/glass/maps/map/MiniMapTheme;I)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->lastRefreshTime:J

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->throttleFrameRate:Z

    .line 62
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 64
    iput p3, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapWidth:I

    .line 65
    iput p4, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapHeight:I

    .line 66
    iput-object p5, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    .line 67
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/maps/util/FrameTimer;

    invoke-direct {v0}, Lcom/google/glass/maps/util/FrameTimer;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->timer:Lcom/google/glass/maps/util/FrameTimer;

    .line 68
    iput p6, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->markerResId:I

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDrawFrameInternal(J)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->timer:Lcom/google/glass/maps/util/FrameTimer;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->timer:Lcom/google/glass/maps/util/FrameTimer;

    invoke-virtual {v0}, Lcom/google/glass/maps/util/FrameTimer;->onStartFrame()V

    .line 284
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMapRenderer;->onPrepareFrame(J)V

    .line 287
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 288
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 289
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->draw(J)V

    .line 291
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->timer:Lcom/google/glass/maps/util/FrameTimer;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->timer:Lcom/google/glass/maps/util/FrameTimer;

    invoke-virtual {v0}, Lcom/google/glass/maps/util/FrameTimer;->onEndFrame()V

    .line 294
    :cond_1
    return-void
.end method


# virtual methods
.method public clearOverlay(I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMap;->clearOverlay(I)V

    goto :goto_0
.end method

.method public disableTileFadeIn()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->disableTileFadeIn:Z

    .line 302
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->disableTileFadeIn()V

    .line 305
    :cond_0
    return-void
.end method

.method public drawStatic(J[J)Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/maps/map/MiniMapRenderer;->drawStatic(J[JZ)Z

    move-result v0

    return v0
.end method

.method public drawStatic(J[JZ)Z
    .locals 2

    .prologue
    .line 263
    if-eqz p4, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/maps/map/MiniMap;->waitForTilesToLoad(J[J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->setLabelingBudget(I)V

    .line 274
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/map/MiniMapRenderer;->onDrawFrameInternal(J)V

    .line 275
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/map/MiniMapRenderer;->onDrawFrameInternal(J)V

    .line 276
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getController()Lcom/google/glass/maps/map/MiniMapController;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->getController()Lcom/google/glass/maps/map/MiniMapController;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapHeight:I

    return v0
.end method

.method protected getMiniMap()Lcom/google/glass/maps/map/MiniMap;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    return-object v0
.end method

.method protected getMiniMapHeight()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapHeight:I

    return v0
.end method

.method protected getMiniMapWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapWidth:I

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->trafficEnabled:Z

    return v0
.end method

.method public final onDrawFrame()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x28

    .line 218
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->throttleFrameRate:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->lastRefreshTime:J

    sub-long/2addr v0, v2

    .line 220
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 222
    sub-long v0, v4, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->lastRefreshTime:J

    .line 230
    iget-wide v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->lastRefreshTime:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/map/MiniMapRenderer;->onDrawFrameInternal(J)V

    .line 231
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapRenderer;->onDrawFrame()V

    .line 214
    return-void
.end method

.method public abstract onPrepareFrame(J)V
.end method

.method public onSurfaceChanged(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->surfaceWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->surfaceHeight:I

    if-ne v0, p2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->surfaceWidth:I

    .line 153
    iput p2, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->surfaceHeight:I

    .line 155
    sget-object v0, Lcom/google/glass/maps/map/MiniMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SurfaceChanged: %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapWidth:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapHeight:I

    sub-int v1, p2, v1

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 157
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapWidth:I

    iget v2, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMapHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/google/glass/maps/map/MiniMap;->setDimensions(IIII)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0, p2, p3}, Lcom/google/glass/maps/map/MiniMapRenderer;->onSurfaceChanged(II)V

    .line 145
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 168
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->setRenderThread()V

    .line 169
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/TextureAllocator;->resetAllocationCount()V

    .line 171
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    if-nez v0, :cond_2

    .line 172
    new-instance v0, Lcom/google/glass/maps/map/MiniMap;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget v7, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->markerResId:I

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/google/glass/maps/map/MiniMap;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/MiniMapTheme;I)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    .line 173
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    iget-boolean v1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->trafficEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->setTrafficEnabled(Z)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->clearAllOverlays()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 188
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->disableTileFadeIn:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->disableTileFadeIn()V

    .line 193
    :cond_1
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 194
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 195
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 197
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 198
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 200
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 201
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 204
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget v1, v1, Lcom/google/glass/maps/map/MiniMapTheme;->backgroundColor:I

    invoke-static {v1, v0}, Lcom/google/glass/maps/util/ColorUtil;->argbToRgbaFloats(I[F)V

    .line 205
    aget v1, v0, v2

    aget v5, v0, v8

    const/4 v6, 0x2

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v0, v0, v7

    invoke-static {v1, v5, v6, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 207
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 208
    sget-object v0, Lcom/google/glass/maps/map/MiniMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SurfaceCreated: %dms"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-interface {v0, v1, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget v6, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->markerResId:I

    invoke-virtual {v0, v1, v5, v6}, Lcom/google/glass/maps/map/MiniMap;->reset(Landroid/content/Context;Lcom/google/glass/maps/map/MiniMapTheme;I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 181
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 182
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/opengl/TextureBitmap;

    .line 182
    invoke-virtual {v5, v6, v0}, Lcom/google/glass/maps/map/MiniMap;->updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0, p2}, Lcom/google/glass/maps/map/MiniMapRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 163
    return-void
.end method

.method public setThrottleFrameRate(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->throttleFrameRate:Z

    .line 89
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 1

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->trafficEnabled:Z

    .line 137
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMap;->setTrafficEnabled(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->savedOverlayBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapRenderer;->miniMap:Lcom/google/glass/maps/map/MiniMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V

    goto :goto_0
.end method
