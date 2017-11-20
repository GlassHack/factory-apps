.class Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# instance fields
.field egl:Ljavax/microedition/khronos/egl/EGL10;

.field eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/service/BackgroundMapRenderer$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;-><init>()V

    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 515
    invoke-static {p1, p2}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 508
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0, p1}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method createSurface(II)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 443
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_0

    .line 444
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v2, :cond_1

    .line 447
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 450
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->destroySurface()V

    .line 457
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x5

    new-array v5, v5, [I

    const/16 v6, 0x3057

    aput v6, v5, v0

    aput p1, v5, v1

    const/4 v6, 0x2

    const/16 v7, 0x3056

    aput v7, v5, v6

    const/4 v6, 0x3

    aput p2, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x3038

    aput v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 459
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_4

    .line 460
    :cond_3
    const-string v1, "BackgroundMapRenderer"

    const-string v2, "eglCreatePbufferSurface"

    iget-object v3, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 469
    :goto_0
    return v0

    .line 465
    :cond_4
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 466
    const-string v1, "BackgroundMapRenderer"

    const-string v2, "eglMakeCurrent"

    iget-object v3, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 469
    goto :goto_0
.end method

.method destroySurface()V
    .locals 5

    .prologue
    .line 485
    invoke-static {}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "EglHelper.destroySurface: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 489
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 492
    :cond_0
    return-void
.end method

.method finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    invoke-static {}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "EglHelper.finish"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 498
    iput-object v3, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 502
    iput-object v3, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 504
    :cond_1
    return-void
.end method

.method start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 410
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 411
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 412
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 413
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 418
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1
    new-instance v0, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;

    invoke-direct {v0}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;-><init>()V

    .line 424
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 427
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 429
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 430
    :cond_2
    iput-object v5, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 431
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 434
    :cond_3
    invoke-static {}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "EglHelper.start: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iput-object v5, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 436
    return-void

    .line 427
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method swap()I
    .locals 5

    .prologue
    .line 477
    invoke-static {}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "EglHelper.swap: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 481
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method
