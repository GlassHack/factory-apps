.class final Lcom/google/maps/api/android/lib6/gmm6/o/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/cz;


# instance fields
.field private a:I

.field private synthetic b:Lcom/google/maps/api/android/lib6/gmm6/o/cv;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cy;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cy;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/cv;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/cy;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cy;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cy;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->G()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cy;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->G()I

    const/4 v1, 0x0

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/db;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
