.class Lcom/google/maps/api/android/lib6/gmm6/o/cx;
.super Lcom/google/maps/api/android/lib6/gmm6/o/cw;


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cw;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/cv;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a:[I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->b:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->c:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->d:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->e:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->f:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->g:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3025
        0x10
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a:[I

    invoke-interface {p1, p2, p3, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a:[I

    aget v0, v1, v0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p3, v1

    const/16 v3, 0x3025

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3026

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->f:I

    if-lt v3, v5, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->g:I

    if-lt v4, v3, :cond_0

    const/16 v3, 0x3024

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3023

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3022

    invoke-direct {p0, p1, p2, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3021

    invoke-direct {p0, p1, p2, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->b:I

    if-ne v3, v7, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->c:I

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->d:I

    if-ne v5, v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cx;->e:I

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
