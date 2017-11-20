.class public final Lcom/google/maps/api/android/lib6/gmm6/o/cg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/cm;


# instance fields
.field private a:[I

.field private final b:[Lcom/google/maps/api/android/lib6/gmm6/o/ch;


# direct methods
.method public constructor <init>([Lcom/google/maps/api/android/lib6/gmm6/o/ch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a:[I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a:[I

    invoke-interface {p1, p2, p3, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a:[I

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lcom/google/maps/api/android/lib6/gmm6/o/ch;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p3, v1

    const/16 v3, 0x3025

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3026

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    iget v5, p4, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->e:I

    if-lt v3, v5, :cond_0

    iget v3, p4, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->f:I

    if-lt v4, v3, :cond_0

    const/16 v3, 0x3024

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3023

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3022

    invoke-direct {p0, p1, p2, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3021

    invoke-direct {p0, p1, p2, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    iget v7, p4, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->a:I

    if-ne v3, v7, :cond_0

    iget v3, p4, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->b:I

    if-ne v4, v3, :cond_0

    iget v3, p4, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->c:I

    if-ne v5, v3, :cond_0

    iget v3, p4, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->d:I

    if-ne v6, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 13

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-array v5, v6, [I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ch;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ch;)V

    iput-boolean v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->g:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->a()[I

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v0, v5, v4

    if-lez v0, :cond_1

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a(Z)V

    move v12, v4

    move-object v6, v3

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->a()[I

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    aget v10, v5, v4

    if-lez v10, :cond_6

    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v6, p1

    move-object v7, p2

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    aget-object v0, v0, v12

    invoke-direct {p0, p1, p2, v9, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lcom/google/maps/api/android/lib6/gmm6/o/ch;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    add-int/lit8 v0, v12, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cg;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/ch;

    array-length v2, v2

    if-lt v0, v2, :cond_7

    :cond_4
    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v1

    :cond_6
    move-object v1, v6

    goto :goto_2

    :cond_7
    move v12, v0

    move-object v6, v1

    goto :goto_1
.end method
