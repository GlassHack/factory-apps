.class final Lcom/google/glass/maps/GlRenderingEngine$RenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private mDimensionsChanged:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFinished:Z

.field private final mFunctional:Z

.field private mHeight:I

.field private final mRenderer:Lcom/google/android/glass/timeline/GlRenderer;

.field private final mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/google/android/glass/timeline/GlRenderer;Z)V
    .locals 1

    .prologue
    .line 220
    const-string v0, "GlRenderingEngine"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 222
    iput-object p2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mRenderer:Lcom/google/android/glass/timeline/GlRenderer;

    .line 223
    iput-boolean p3, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFunctional:Z

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/google/android/glass/timeline/GlRenderer;ZLcom/google/glass/maps/GlRenderingEngine$1;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;-><init>(Landroid/graphics/SurfaceTexture;Lcom/google/android/glass/timeline/GlRenderer;Z)V

    return-void
.end method

.method private checkContextCurrent()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 397
    iget-boolean v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFunctional:Z

    if-nez v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v3, 0x3059

    .line 401
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkEglError()V
    .locals 5

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFunctional:Z

    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 429
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 430
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Rendering error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->getLastError()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 367
    new-array v5, v4, [I

    .line 368
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 370
    const/16 v0, 0xf

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 380
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not find suitable configuration: %s"

    new-array v2, v4, [Ljava/lang/Object;

    .line 382
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->getLastError()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 381
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 388
    :goto_0
    return-object v0

    .line 384
    :cond_0
    aget v0, v5, v7

    if-lez v0, :cond_1

    .line 385
    aget-object v0, v3, v7

    goto :goto_0

    .line 387
    :cond_1
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not find suitable configuration."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 388
    goto :goto_0

    .line 370
    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x10
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private createContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5

    .prologue
    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 357
    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 353
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private destroyGlEnvironment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 438
    iget-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFunctional:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 443
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 444
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 445
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 446
    iput-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 447
    iput-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 448
    iput-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 449
    iput-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 450
    iput-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    goto :goto_0
.end method

.method private getLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeGlEnvironment()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFunctional:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 337
    :goto_0
    return v0

    .line 298
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 300
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 301
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v3, :cond_1

    .line 302
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Could not get display: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->getLastError()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 303
    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 307
    iget-object v3, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Could not initialize display: %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 309
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->getLastError()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 308
    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 314
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_3

    move v0, v2

    .line 315
    goto :goto_0

    .line 318
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->createContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 319
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v3, :cond_4

    .line 320
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to create context."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 321
    goto :goto_0

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 325
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_6

    .line 326
    :cond_5
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Could not initialize surface: %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->getLastError()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 326
    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 328
    goto/16 :goto_0

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 332
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Could not bind context to rendering thread: %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 333
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->getLastError()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 332
    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 334
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 337
    goto/16 :goto_0
.end method

.method private swapBuffers()Z
    .locals 3

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFunctional:Z

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized isFinished()Z
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized notifyFinish()V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mFinished:Z

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->initializeGlEnvironment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unable to initialize environment, aborting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :goto_0
    return-void

    .line 257
    :cond_0
    :try_start_0
    const-string v0, "Notifying renderer of surface creation."

    invoke-static {v0}, Lcom/google/glass/maps/GlRenderingEngine;->access$100(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mRenderer:Lcom/google/android/glass/timeline/GlRenderer;

    iget-object v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1}, Lcom/google/android/glass/timeline/GlRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 260
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->checkContextCurrent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Rendering context detached, aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->destroyGlEnvironment()V

    goto :goto_0

    .line 267
    :cond_2
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    iget-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mDimensionsChanged:Z

    if-eqz v0, :cond_3

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mDimensionsChanged:Z

    .line 270
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mRenderer:Lcom/google/android/glass/timeline/GlRenderer;

    iget v1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mWidth:I

    iget v2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/glass/timeline/GlRenderer;->onSurfaceChanged(II)V

    .line 272
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    :try_start_3
    iget-object v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mRenderer:Lcom/google/android/glass/timeline/GlRenderer;

    invoke-interface {v0}, Lcom/google/android/glass/timeline/GlRenderer;->onDrawFrame()V

    .line 276
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->swapBuffers()Z

    move-result v0

    if-nez v0, :cond_4

    .line 277
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unable to render, aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 284
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->destroyGlEnvironment()V

    throw v0

    .line 272
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0

    .line 281
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->checkEglError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized setDimensions(II)V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mDimensionsChanged:Z

    .line 228
    iput p1, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mWidth:I

    .line 229
    iput p2, p0, Lcom/google/glass/maps/GlRenderingEngine$RenderThread;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
